ARROW_ENTITY = "orphan-arrow"

function createArrowAt(entity, index)
  global.arrows = global.arrows or {}
  global.arrows[index] = global.arrows[index] or {}
  global.arrows[index][entity.unit_number] = entity.surface.create_entity{name = ARROW_ENTITY, position = entity.position}
end

function clearArrows(index)
  global.arrows = global.arrows or {}
  global.arrows[index] = global.arrows[index] or {}
  local destroyed = false
  for _,arrow in pairs(global.arrows[index]) do
    arrow.destroy()
    destroyed = true
  end
  global.arrows[index] = nil
  return destroyed
end

function deleteArrowAt(entity)
  global.arrows = global.arrows or {}
  for i,_ in pairs(global.arrows) do
    if global.arrows[i][entity.unit_number] then
      global.arrows[i][entity.unit_number].destroy()
      global.arrows[i][entity.unit_number] = nil
      return true
    end
  end
  return false
end

function isBeltOrphan(belt)
  return not belt.neighbours
end

function adoptBeltNeighbours(belt)
  if belt.neighbours then
    deleteArrowAt(belt.neighbours)
  end
end

function isPipeConnectedToNeighbourUnderground(pipe, neighbour)
  if pipe.type == "pipe-to-ground" and neighbour.type == "pipe-to-ground" then
    return (pipe.direction == defines.direction.north and
        neighbour.direction == defines.direction.south and
        neighbour.position.y > pipe.position.y) or
      (pipe.direction == defines.direction.east and
        neighbour.direction == defines.direction.west and
        neighbour.position.x < pipe.position.x) or
      (pipe.direction == defines.direction.south and
        neighbour.direction == defines.direction.north and
        neighbour.position.y < pipe.position.y) or
      (pipe.direction == defines.direction.west and
        neighbour.direction == defines.direction.east and
        neighbour.position.x > pipe.position.x)
  end
  return false
end

function isPipeOrphan(pipe)
  local fluidBoxNeighbours
  _,fluidBoxNeighbours = next(pipe.neighbours)
  if fluidBoxNeighbours then
    for _,neighbour in pairs(fluidBoxNeighbours) do
      if isPipeConnectedToNeighbourUnderground(pipe, neighbour) then
        return false
      end
    end
  end
  return true
end

function adoptPipeNeighbours(pipe)
  local fluidBoxNeighbours
  _,fluidBoxNeighbours = next(pipe.neighbours)
  if fluidBoxNeighbours then
    for _,neighbour in pairs(fluidBoxNeighbours) do
      if isPipeConnectedToNeighbourUnderground(pipe, neighbour) then
        deleteArrowAt(neighbour)
      end
    end
  end
end

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.type == "underground-belt" then
    adoptBeltNeighbours(event.created_entity)
  elseif event.created_entity.type == "pipe-to-ground" then
    adoptPipeNeighbours(event.created_entity)
  end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.type == "underground-belt" then
    adoptBeltNeighbours(event.created_entity)
  elseif event.created_entity.type == "pipe-to-ground" then
    adoptPipeNeighbours(event.created_entity)
  end
end)

script.on_event(defines.events.on_player_rotated_entity, function(event)
  if event.entity.type == "pipe-to-ground" then
    if not isPipeOrphan(event.entity) then
      deleteArrowAt(event.entity)
      adoptPipeNeighbours(event.entity)
    end
  end
end)

script.on_event(defines.events.on_pre_player_mined_item, function(event)
  deleteArrowAt(event.entity)
end)

script.on_event(defines.events.on_robot_pre_mined, function(event)
  deleteArrowAt(event.entity)
end)

script.on_event(defines.events.on_entity_died, function(event)
  deleteArrowAt(event.entity)
end)

script.on_event(defines.events.on_player_left_game, function(event)
  clearArrows(event.player_index)
end)

script.on_event("find-orphans", function(event)
  local next = next
  local player = game.players[event.player_index]
  local search_range = settings.global["orphan-finder-search-range"].value
  local search_area =
  {
    {player.position.x - search_range, player.position.y - search_range},
    {player.position.x + search_range, player.position.y + search_range}
  }
  if not clearArrows(event.player_index) then
    local count = 0
    local belts = player.surface.find_entities_filtered{
      area = search_area,
      type = "underground-belt"
    }
    local pipes = player.surface.find_entities_filtered{
      area = search_area,
      type = "pipe-to-ground"
    }
    for _,belt in pairs(belts) do
      if isBeltOrphan(belt) then
        createArrowAt(belt, event.player_index)
        count = count + 1
      end
    end
    for _,pipe in pairs(pipes) do
      if isPipeOrphan(pipe) then
        createArrowAt(pipe, event.player_index)
        count = count + 1
      end
    end
    if count == 0 then
      player.print{"orphans.found-none"}
    elseif count == 1 then
      player.print{"orphans.found-one"}
    else
      player.print{"orphans.found-many", count}
    end
  else
    player.print{"orphans.markers-cleared"}
  end
end)