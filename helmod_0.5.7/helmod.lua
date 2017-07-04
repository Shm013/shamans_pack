require "core.global"
require "core.class"
require "core.defines"
require "core.logging"
require "core.elementGui"
require "controller.PlayerController"

--===========================
-- trace=4
-- debug=3
-- info=2
-- erro=1
-- nothing=0

Logging:new()
Logging.console = false

-------------------------------------------------------------------------------
-- Classe de mod
--
-- @module helmod
--

helmod = {
  name = "helmod"
}

-------------------------------------------------------------------------------
-- On init
--
-- @function [parent=#helmod] on_init
--
-- @param  #table event
--
function helmod:on_init(event)
  Logging:trace("helmod", "helmod:on_init(event)", event)
end

-------------------------------------------------------------------------------
-- On configuration changed
--
-- @function [parent=#helmod] on_configuration_changed
--
-- @param #table data
--
-- Data sample:
-- data = {
-- 	"old_version":"0.14.17","new_version":"0.14.20",
-- 	"mod_changes":{
-- 		"base":{"old_version":"0.14.17","new_version":"0.14.20"},
-- 		"helmod":{"old_version":"0.2.14","new_version":"0.2.16"}
-- 	}
-- }
--
function helmod:on_configuration_changed(data)
  log("helmod:on_configuration_changed(data)")
  Logging:trace("helmod", "helmod:on_configuration_changed(data)", data)
  if not data or not data.mod_changes then
    return
  end
  if data.mod_changes["helmod"] then
    local old_version = data.mod_changes["helmod"].old_version
    -- Upgrade 0.2.17
    if old_version ~= nil and old_version < "0.2.17" then
      helmod:upgrade_0_2_17()
    end
    -- Upgrade 0.2.21
    if old_version ~= nil and old_version < "0.2.21" then
      helmod:upgrade_0_2_21()
    end

    -- Upgrade 0.2.22
    if old_version ~= nil and old_version < "0.2.22" then
      helmod:upgrade_0_2_22()
    end

    -- Upgrade 0.2.23
    if old_version ~= nil and old_version < "0.2.23" then
      helmod:upgrade_0_2_23()
    end

    -- Upgrade 0.3.0
    if old_version ~= nil and old_version < "0.3.0" then
      helmod:upgrade_0_3_0()
    end

    --initialise au chargement d'une partie existante
    for _,player in pairs(game.players) do
      self.playerController = PlayerController:new()
      self.playerController:bindController(player)
    end
  end
end

-------------------------------------------------------------------------------
-- On load
--
-- @function [parent=#helmod] on_load
--
-- @param #table event
--
function helmod:on_load(event)
end

-------------------------------------------------------------------------------
-- On tick
--
-- @function [parent=#helmod] on_tick
--
-- @param #table event
--
function helmod:on_tick(event)
end

-------------------------------------------------------------------------------
-- Init player controller
--
-- @function [parent=#helmod] init_playerController
--
-- @param #LuaPlayer player
--
function helmod:init_playerController(player)
  Logging:trace("helmod", "helmod:init_playerController(player)")
  if self.playerController == nil then
    self.playerController = PlayerController:new()
  end
  local globalPlayer = self.playerController:getGlobal(player)
  if globalPlayer.isActive == nil or globalPlayer.isActive == false then
    if player.valid then
      Logging:trace("helmod", "bindController(player)")
      self.playerController:bindController(player)
    end
    globalPlayer.isActive = true
  end
end

-------------------------------------------------------------------------------
-- On click event
--
-- @function [parent=#helmod] on_gui_click
--
-- @param #table event
--
function helmod:on_gui_click(event)
  local player = game.players[event.player_index]
  if self.playerController == nil then
    self:init_playerController(player)
  end
  local allowed = true
  if event.element ~= nil and event.element.valid and event.element.type == "drop-down" then
    allowed = false
  end
  if self.playerController ~= nil and allowed then
    if self.playerController ~= nil then
      self.playerController:on_gui_click(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On text changed
--
-- @function [parent=#helmod] on_gui_text_changed
--
-- @param #table event
--
function helmod:on_gui_text_changed(event)
  local player = game.players[event.player_index]
  if self.playerController == nil then
    self:init_playerController(player)
  end
  if self.playerController ~= nil then
    if self.playerController ~= nil then
      self.playerController:on_gui_text_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On hotkey event
--
-- @function [parent=#helmod] on_gui_hotkey
--
-- @param #table event
--
function helmod:on_gui_hotkey(event)
  local player = game.players[event.player_index]
  if self.playerController == nil then
    self:init_playerController(player)
  end
  if self.playerController ~= nil then
    if self.playerController ~= nil then
      self.playerController:on_gui_hotkey(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On dropdown event
--
-- @function [parent=#helmod] on_gui_selection_state_changed
--
-- @param event
--
function helmod:on_gui_selection_state_changed(event)
  local player = game.players[event.player_index]
  if self.playerController == nil then
    self:init_playerController(player)
  end
  if self.playerController ~= nil then
    if self.playerController ~= nil then
      self.playerController:on_gui_selection_state_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On runtime mod settings
--
-- @function [parent=#helmod] on_runtime_mod_setting_changed
--
-- @param event
--
function helmod:on_runtime_mod_setting_changed(event)
  local player = game.players[event.player_index]
  if self.playerController == nil then
    self:init_playerController(player)
  end
  if self.playerController ~= nil then
    if self.playerController ~= nil then
      self.playerController:on_runtime_mod_setting_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On player created
--
-- @function [parent=#helmod] on_player_created
--
-- @param #table event
--
function helmod:on_player_created(event)
  Logging:trace("helmod", "helmod:on_player_created(event)", event)
  local player = game.players[event.player_index]
  self:init_playerController(player)
end

-------------------------------------------------------------------------------
-- On player join game
--
-- @function [parent=#helmod] on_player_joined_game
--
-- @param #table event
--
function helmod:on_player_joined_game(event)
  Logging:trace("helmod", "helmod:on_player_joined_game(event)", event)
  local player = game.players[event.player_index]
  self:init_playerController(player)
end

-------------------------------------------------------------------------------
-- Upgrade 0.2.17
--
-- @function [parent=#helmod] upgrade_0_2_17
--
function helmod:upgrade_0_2_17()
  if global["HMModel"] ~= nil then
    for _,data in pairs(global["HMModel"]) do
      -- boucle sur chaque player
      if data.model ~= nil then
        -- remove old field
        data.model.page = nil
        data.model.step = nil
        data.model.maxPage = nil
        data.model.needPrepare = nil
        data.model.products = nil
        data.model.input = nil
        data.model.recipes = nil
        data.model.currentTab = nil
        -- move gui value
        data.gui = {}
        data.gui.currentTab = "product-line"
        if data.model.order ~= nil then
          data.gui.order = data.model.order
          data.model.order = nil
        end
        if data.model.moduleListRefresh ~= nil then
          data.gui.moduleListRefresh = data.model.moduleListRefresh
          data.model.moduleListRefresh = nil
        end
        if data.model.module_panel ~= nil then
          data.gui.module_panel = data.model.module_panel
          data.model.module_panel = nil
        end
        if data.recipeGroupSelected ~= nil then
          data.gui.recipeGroupSelected = data.recipeGroupSelected
          data.recipeGroupSelected = nil
        end
      end
    end
  end
end


-------------------------------------------------------------------------------
-- Upgrade 0.2.21
--
-- @function [parent=#helmod] upgrade_0_2_21
--
function helmod:upgrade_0_2_21()
  if global["HMModel"] ~= nil then
    for _,data in pairs(global["HMModel"]) do
      -- boucle sur chaque player
      if data.settings ~= nil then
        data.settings.model_filter_factory = true
        data.settings.model_filter_beacon = true
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Upgrade 0.2.22
--
-- @function [parent=#helmod] upgrade_0_2_22
--
function helmod:upgrade_0_2_22()
  if global["HMModel"] ~= nil then
    for _,data in pairs(global["HMModel"]) do
      -- boucle sur chaque player
      if data.model ~= nil and data.model.blocks ~= nil then
        for _,block in pairs(data.model.blocks) do
          for _,recipe in pairs(block.recipes) do
            local factory = recipe.factory
            if factory ~= nil then factory.type = "item" end
            local beacon = recipe.beacon
            if beacon ~= nil then beacon.type = "item" end
          end
        end
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Upgrade 0.2.23
--
-- @function [parent=#helmod] upgrade_0_2_23
--
function helmod:upgrade_0_2_23()
  if global["HMModel"] ~= nil then
    for _,data in pairs(global["HMModel"]) do
      -- boucle sur chaque player
      if data.default ~= nil then
        -- clean defaut
        data.default.factories = nil
        data.default.beacons = nil
      end

      if data.model ~= nil then
        -- move model
        local model = data.model
        data.model = {}
        table.insert(data.model, model)
      end

      if data.gui == nil then data.gui = {} end
      data.gui["model_index"] = 1
    end
  end
end


-------------------------------------------------------------------------------
-- Upgrade 0.3.0
--
-- @function [parent=#helmod] upgrade_0_3_0
--
function helmod:upgrade_0_3_0()
  if global["HMModel"] ~= nil then
    Logging:debug("helmod", "upgrade_0_3_0():before", global)
    global.models = {}
    global.model_id = 0
    for user,data in pairs(global["HMModel"]) do
      -- boucle sur chaque player
      if data.model ~= nil then
        local block_id = data.model.block_id
        data.model.block_id = nil
        -- move model
        for _,model in pairs(data.model) do
          if type(model) == "table" then
            global.model_id = global.model_id + 1
            model.id = "model_"..global.model_id
            model.temp = nil
            model.version = nil
            model.owner = user
            model.block_id = block_id
            global.models[model.id] = model
          end
        end
        data.model = nil
      end
    end
    global["users"] = global["HMModel"]
    global["HMModel"] = nil
    Logging:debug("helmod", "upgrade_0_3_0():after", global)
  end
end


remote.add_interface("helmod", {
  close = function()
    if game.player.admin then
      proxy_gui_click({player_index=game.player.index, element = {valid=true, name="HMController=CLOSE"}})
    end
  end,
  clear = function()
    if game.player.admin then
      for _,player in pairs(game.players) do
        helmod:clear_panel(player)
      end
    end
  end,
  display_size = function(value)
    local playerController = PlayerController:new()
    local globalSettings = playerController:getGlobal(game.player, "settings")
    globalSettings["display_size"] = value
  end,
  export_data = function(level)
    Logging.limit = level or 10
    game.write_file("helmod\\data.json", Logging:objectToString(global), false)
  end,
  cheat = function()
    if game.player.admin and Logging.log > 0 then
      game.player.force.enable_all_recipes()
      game.player.force.enable_all_technologies()
      game.player.force.manual_mining_speed_modifier=100
      game.player.force.manual_crafting_speed_modifier=100
      game.player.cheat_mode=true
      game.player.print("cheat mod!")
    else
      game.player.print("not allowed cheat mod!")
    end
  end
})








