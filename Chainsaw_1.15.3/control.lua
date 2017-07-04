-- REMOTE INTERFACES
-- ex: remote.call("chainsaw-api", "addEntityName", "tree")
remote.add_interface("chainsaw-api", {
  addEntityType = function(type)
    if not global.valid_chainsaw_entity_type[type] then
      global.valid_chainsaw_entity_type[type] = true
    end
  end,
  removeEntityType = function(type)
    if global.valid_chainsaw_entity_type[type] then
      global.valid_chainsaw_entity_type[type] = nil
    end
  end
})

--INIT
script.on_init (function()
  init_all()
end)

script.on_configuration_changed (function()
  init_all()
end)

function init_all()
  if global.valid_chainsaw_entity_type == nil then
    global.valid_chainsaw_entity_type = {}
  end

  if global.players_selected_entity == nil then
    global.players_selected_entity = {}
  end

  if global.players_chainsaw_state == nil then
    global.players_chainsaw_state = {}
  end

  remote.call("chainsaw-api", "addEntityType", "tree")

  for index, player in pairs(game.players) do
    onPlayerCreated(index)
  end
end

function onPlayerCreated(player_index)
  if global.players_chainsaw_state[player_index] == nil then
    global.players_chainsaw_state[player_index] = {}
  end

  if global.players_selected_entity[player_index] == nil then
    global.players_selected_entity[player_index] = {}
  end

  recordPlayerChainsawState(player_index)
end

function recordPlayerChainsawState(player_index)
  local player = game.players[player_index]
  local tool_inventory = player.get_inventory(defines.inventory.player_tools)

  if tool_inventory ~= nil then
    local current_tool = tool_inventory[1]

    if tool_inventory.valid and tool_inventory.get_item_count() > 0 then
      if current_tool.valid and current_tool.name == "chainsaw" then
        global.players_chainsaw_state[player_index] = true
      else
        global.players_chainsaw_state[player_index] = false
      end
    else
      global.players_chainsaw_state[player_index] = false
    end
  else
    global.players_chainsaw_state[player_index] = false
  end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--EVENTS
script.on_event(defines.events.on_tick,
  function(event) onTick(event)
end)
script.on_event(defines.events.on_player_tool_inventory_changed,
  function(event) recordPlayerChainsawState(event.player_index)
end)
script.on_event(defines.events.on_player_created,
  function(event) onPlayerCreated(event.player_index)
end)
script.on_event(defines.events.on_preplayer_mined_item,
  function(event) onPreMined(event)
end)
script.on_event(defines.events.on_player_cursor_stack_changed,
  function(event) onPlayerCursorStackChanged(event)
end)

function onPreMined(event)
  if global.players_chainsaw_state[event.player_index] and global.valid_chainsaw_entity_type[event.entity.type] then
    local player = game.players[event.player_index]
    player.surface.create_entity({
      name = "chainsaw-sound",
      position = player.position
    })
  end
end

function onPlayerCursorStackChanged(event)
  if global.players_chainsaw_state[event.player_index] then
    local player = game.players[event.player_index]
    local cursor_stack = player.cursor_stack

    if cursor_stack.valid_for_read then
      local placed_tile = cursor_stack.prototype.place_as_tile_result
      if placed_tile and placed_tile.result and placed_tile.result.valid then
        --if the player hold floor tile in his hand we unequip the chainsaw to prevent cheating
        local tool_inventory = player.get_inventory(defines.inventory.player_tools)
        local player_inventory = player.get_inventory(defines.inventory.player_main)
        local player_quickbar_inventory = player.get_inventory(defines.inventory.player_quickbar)

        findAndEquipBestTool(player, tool_inventory, player_inventory, player_quickbar_inventory)
      end
    end
  end
end

--toggle input
script.on_event("chainsaw-toggle", function(event)
  local player = game.players[event.player_index]

  --make sure we're not in god mode
  if player.character ~= nil then
    local tool_inventory = player.get_inventory(defines.inventory.player_tools)
    local player_inventory = player.get_inventory(defines.inventory.player_main)
    local player_quickbar_inventory = player.get_inventory(defines.inventory.player_quickbar)
    local current_tool = tool_inventory[1]

    if tool_inventory.valid and tool_inventory.get_item_count() > 0 then
      if current_tool.valid and current_tool.name == "chainsaw" then
        findAndEquipBestTool(player, tool_inventory, player_inventory, player_quickbar_inventory)
      else
        findAndEquipChainsaw(player, tool_inventory, player_inventory, player_quickbar_inventory)
      end
    else
      findAndEquipChainsaw(player, tool_inventory, player_inventory, player_quickbar_inventory)
    end
  end
end)

function initPlayer(player_id)
  if global.players_premined_entity[player_id] == nil then
    global.players_premined_entity[player_id] = {
      wronglyPreMinedEntity = nil
    }
  end
end

function findBestTool(player, player_inventory, player_quickbar_inventory)
  local main_inventory_content = player_inventory.get_contents()
  local quickbar_inventory_content = player_quickbar_inventory.get_contents()

  local best_speed = 0
  local found = {
    location = "",
    name = ""
  }

  for name, count in pairs(main_inventory_content) do
    if count == nil then
      count = 1
    else
      count = count
    end

    item_stack = player_inventory.find_item_stack(name)
    prototype = item_stack.prototype
    if prototype.type == "mining-tool" and prototype.name ~= "chainsaw" then
      if prototype.speed > best_speed then
        best_speed = prototype.speed
        found.location = "main"
        found.name = name
        found.durability = item_stack.durability
        found.count = count
      end
    end
  end

  for name, count in pairs(quickbar_inventory_content) do
    if count == nil then
      count = 1
    else
      count = count
    end

    item_stack = player_quickbar_inventory.find_item_stack(name)
    prototype = item_stack.prototype
    if prototype.type == "mining-tool" and prototype.name ~= "chainsaw" then
      if prototype.speed > best_speed then
        best_speed = prototype.speed
        found.location = "quickbar"
        found.name = name
        found.durability = item_stack.durability
        found.count = count
      end
    end
  end

  if best_speed > 0 then
    return found
  else
    return nil
  end
end

function findAndEquipBestTool(player, tool_inventory, player_inventory, player_quickbar_inventory)
  local current_tool = tool_inventory[1]
  local best_tool = findBestTool(player, player_inventory, player_quickbar_inventory)
  local best_tool_stack = nil

  if best_tool == nil then
    --no repair tool, let's try putting the chainsaw in the player main inventory
    if player_inventory.can_insert({name="chainsaw", count=current_tool.count}) then
      for i=1, #player_inventory, 1 do
        if not player_inventory[i].valid_for_read then
          player_inventory[i].set_stack(current_tool)
          current_tool.clear()
          break
        end
      end
    --if it fail let's show a message since dropping a repair tool on the ground automaticaly pick it right back up..
    else
      player.print("Your inventory is full so the chainsaw was dropped on the ground.")
      game.surfaces[1].spill_item_stack(player.character.position, current_tool)
      current_tool.clear()
    end
  else
    --we found a valid repair tool to switch with, so let's switch the chainsaw with this tool.
    if best_tool.location == "main" then
      best_tool_stack = player_inventory.find_item_stack(best_tool.name)
    else
      best_tool_stack = player_quickbar_inventory.find_item_stack(best_tool.name)
    end

    local durability = best_tool_stack.durability
    local count = best_tool_stack.count

    --put the chainsaw into the inventory at the repair tool location
    best_tool_stack.set_stack(current_tool)
    --put the repair tool found in the current_tool spot
    current_tool.set_stack({name=best_tool.name, count=count})
    --copy the item durability over
    current_tool.durability = durability
  end
end

function findAndEquipChainsaw(player, tool_inventory, player_inventory, player_quickbar_inventory)
  local chainsaw_item_stack = nil
  local current_tool = tool_inventory[1]

  if player_inventory.find_item_stack('chainsaw') then
    chainsaw_item_stack = player_inventory.find_item_stack('chainsaw')
  elseif player_quickbar_inventory.find_item_stack('chainsaw') then
    chainsaw_item_stack = player_quickbar_inventory.find_item_stack('chainsaw')
  end

  if chainsaw_item_stack then
    local durability = chainsaw_item_stack.durability
    local count = chainsaw_item_stack.count
    local current_tool = tool_inventory[1]

    if tool_inventory.valid and tool_inventory.get_item_count() > 0 then
      chainsaw_item_stack.set_stack(current_tool)
      current_tool.set_stack({name="chainsaw", count=count})
      current_tool.durability = durability
    else
      current_tool.set_stack(chainsaw_item_stack)
      chainsaw_item_stack.clear()
    end
  else
    if player.force.technologies["chainsaw"].researched then
      player.print("You don't have a chainsaw to equip.")
    end
  end
end

function onTick(event)
  for player_index, player in pairs(game.players) do
    --if chainsaw is on
    if global.players_chainsaw_state[player_index] == true then
      -- If nothing is selected and there a previously saved entity attached to this player
      -- we make that entity minable again and clear the attached entity from memory.
      if player.selected == nil and global.players_selected_entity[player_index] ~= nil then
        if notSelectedByAnotherPlayer(player.selected, player_index) and global.players_selected_entity[player_index].valid then
          global.players_selected_entity[player_index].minable = true
        end
        global.players_selected_entity[player_index] = nil
      --if something is selected and not an not from the enemy force
      elseif player.selected ~= nil and player.selected.force.name ~= "enemy" then
        -- Is it different from the entity that was there last tick?
        if global.players_selected_entity[player_index] ~= player.selected then
          --Is it minable and not a blacklisted entity type?
          if player.selected.minable and global.valid_chainsaw_entity_type[player.selected.type] == nil then
            --if there was something selected in memory, let's make it minable again before recording the new selected entity over it
            if global.players_selected_entity[player_index] ~= nil then
              if notSelectedByAnotherPlayer(player.selected, player_index) and global.players_selected_entity[player_index].valid then
                global.players_selected_entity[player_index].minable = true
              end
            end
            --now we make the new selected entity non minable and save it to memory
            player.selected.minable = false
            global.players_selected_entity[player_index] = player.selected
          end
        end
      end
    --else if chainsaw off and something is in memory, make it minable again and clear the memory
    elseif global.players_selected_entity[player_index] ~= nil then
      if notSelectedByAnotherPlayer(player.selected, player_index) and global.players_selected_entity[player_index].valid then
        global.players_selected_entity[player_index].minable = true
      end
      global.players_selected_entity[player_index] = nil
    end
  end
end

function notSelectedByAnotherPlayer(entity, this_player_index)
  local notSelected = true
  for player_index, player in pairs(game.players) do
    if player_index ~= this_player_index then
      if global.players_selected_entity[player_index] ~= nil and global.players_selected_entity[player_index] == entity then
        notSelected = false
        break
      end
    end
  end
  return notSelected
end