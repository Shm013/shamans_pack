require "controller.Controller"

local data_entity = nil

-------------------------------------------------------------------------------
-- Class of player controller
--
-- @module PlayerController
--

PlayerController = setclass("HMPlayerController")

-------------------------------------------------------------------------------
-- Initialization
--
-- @function [parent=#PlayerController] init
--
function PlayerController.methods:init()
  self.prefix = "helmod_"
  -- list des controllers
  self.controllers = {}
  self.controllers["controller"] = Controller:new(self)
end

-------------------------------------------------------------------------------
-- Bind all controllers
--
-- @function [parent=#PlayerController] bindController
--
-- @param #LuaPlayer player
--
function PlayerController.methods:bindController(player)
  Logging:debug(self:classname(), "bindController(player)")
  -- reset GUI
  self:resetGui(player)
  if self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:cleanController(player)
      controller:bindController(player)
    end
  end
end

-------------------------------------------------------------------------------
-- Initialize gui
--
-- @function [parent=#PlayerController] resetGui
--
-- @param #LuaPlayer player
--
function PlayerController.methods:resetGui(player)
  Logging:debug(self:classname(), "resetGui(player)")
  for _,locate in pairs({"left","top","center"}) do
    for name, panel in pairs(player.gui[locate].children) do
      if string.match(panel.name,"helmod") then
        panel.destroy()
      end
    end
  end
  local display_main_icon = self:getSettings(player, "display_main_icon")
  if display_main_icon then
    player.gui.top.add{type="flow", name="helmod_menu-main", direction="horizontal"}
  end
end

-------------------------------------------------------------------------------
-- Get gui
--
-- @function [parent=#PlayerController] getGui
--
-- @param #LuaPlayer player
--
function PlayerController.methods:getGui(player)
  return player.gui.top["helmod_menu-main"]
end

-------------------------------------------------------------------------------
-- Get gui
--
-- @function [parent=#PlayerController] isAdmin
--
-- @param #LuaPlayer player
--
function PlayerController.methods:isAdmin(player)
  return player.admin
end

-------------------------------------------------------------------------------
-- On click event
--
-- @function [parent=#PlayerController] on_gui_click
--
-- @param event
--
function PlayerController.methods:on_gui_click(event)
  if self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:on_gui_click(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On text change event
--
-- @function [parent=#PlayerController] on_gui_text_changed
--
-- @param event
--
function PlayerController.methods:on_gui_text_changed(event)
  if self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:on_gui_text_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On hotkey event
--
-- @function [parent=#PlayerController] on_gui_hotkey
--
-- @param event
--
function PlayerController.methods:on_gui_hotkey(event)
  if self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:on_gui_hotkey(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On dropdown event
--
-- @function [parent=#PlayerController] on_gui_selection_state_changed
--
-- @param event
--
function PlayerController.methods:on_gui_selection_state_changed(event)
  if self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:on_gui_selection_state_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- On runtime mod settings
--
-- @function [parent=#PlayerController] on_runtime_mod_setting_changed
--
-- @param event
--
function PlayerController.methods:on_runtime_mod_setting_changed(event)
  Logging:debug(self:classname(), "on_runtime_mod_setting_changed(event)", event.player_index, event.setting)
  if event.setting == "helmod_display_main_icon" and self.controllers ~= nil and self.controllers["controller"] ~= nil then
    local player = game.players[event.player_index]
    self:resetGui(player)
    local controller = self.controllers["controller"]
    controller:bindController(player)
  end
  if event.setting ~= "helmod_display_main_icon" and self.controllers ~= nil then
    for r, controller in pairs(self.controllers) do
      controller:on_runtime_mod_setting_changed(event)
    end
  end
end

-------------------------------------------------------------------------------
-- Return force's player
--
-- @function [parent=#PlayerController] getForce
--
-- @param #LuaPlayer player
--
-- @return #table force
--
function PlayerController.methods:getForce(player)
  if player == nil then Logging:error(self:classname(), "getRecipes(player): player can not be nil") end
  return player.force
end

-------------------------------------------------------------------------------
-- Get global variable for player
--
-- @function [parent=#PlayerController] getGlobal
--
-- @param #LuaPlayer player
-- @param #string key
--
-- @return #table global
--
function PlayerController.methods:getGlobal(player, key)
  if global["users"] == nil then
    global["users"] = {}
  end
  if global["users"][player.name] == nil then
    global["users"][player.name] = {}
  end

  if global["users"][player.name].settings == nil then
    self:initGlobalSettings(player)
  end

  if key ~= nil then
    if global["users"][player.name][key] == nil then
      global["users"][player.name][key] = {}
    end
    return global["users"][player.name][key]
  end
  return global["users"][player.name]
end

-------------------------------------------------------------------------------
-- Init global settings
--
-- @function [parent=#PlayerController] initGlobalSettings
--
-- @param #LuaPlayer player
--
function PlayerController.methods:initGlobalSettings(player)
  global["users"][player.name].settings = self:getDefaultSettings()
end

-------------------------------------------------------------------------------
-- Get default settings
--
-- @function [parent=#PlayerController] getDefaultSettings
--
-- @param #LuaPlayer player
--
function PlayerController.methods:getDefaultSettings()
  return {
    display_size = "1680x1050",
    display_cell_mod = "default",
    display_product_cols = 2,
    display_ingredient_cols = 2,
    display_data_col_name = false,
    display_data_col_id = false,
    display_data_col_index = false,
    display_data_col_level = false,
    display_data_col_weight = false,
    display_pin_beacon = false,
    model_auto_compute = false,
    model_loop_limit = 1000,
    model_filter_factory = true,
    model_filter_beacon = true,
    model_filter_generator = true,
    model_filter_factory_module = true,
    model_filter_beacon_module = true,
    other_speed_panel=false,
    real_name=false,
    filter_show_disable=false,
    filter_show_hidden=false
  }
end

-------------------------------------------------------------------------------
-- Get global gui
--
-- @function [parent=#PlayerController] getGlobalGui
--
-- @param #LuaPlayer player
-- @param #string property
--
function PlayerController.methods:getGlobalGui(player, property)
  local settings = self:getGlobal(player, "gui")
  if settings ~= nil and property ~= nil then
    return settings[property]
  end
  return settings
end

-------------------------------------------------------------------------------
-- Get global settings
--
-- @function [parent=#PlayerController] getGlobalSettings
--
-- @param #LuaPlayer player
-- @param #string property
--
function PlayerController.methods:getGlobalSettings(player, property)
  local settings = self:getGlobal(player, "settings")
  if settings ~= nil and property ~= nil then
    local guiProperty = settings[property]
    if guiProperty == nil then
      guiProperty = self:getDefaultSettings()[property]
    end
    return guiProperty
  end
  return settings
end

-------------------------------------------------------------------------------
-- Get settings
--
-- @function [parent=#PlayerController] getSettings
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #boolean global
--
function PlayerController.methods:getSettings(player, name, global)
  Logging:trace(self:classname(), "getSettings(player, name)", name, global)
  local property = nil
  local prefixe = "helmod_"
  if not(global) then
    property = player.mod_settings[prefixe..name]
  else
    property = settings.global[prefixe..name]
  end
  if property ~= nil then
    return property.value
  else
    Logging:error(self:classname(), "settings property not found:", name)
    return helmod_settings_mod[name].default_value
  end
end

-------------------------------------------------------------------------------
-- Get style sizes
--
-- @function [parent=#PlayerController] getStyleSizes
--
-- @param #LuaPlayer player
--
function PlayerController.methods:getStyleSizes(player)
  Logging:trace(self:classname(), "getStyleSizes(player)")
  local display_size = self:getSettings(player, "display_size")
  local display_size_free = self:getSettings(player, "display_size_free")
  if string.match(display_size_free, "([0-9]*x[0-9]*)", 1) then
    display_size = display_size_free
  end
  Logging:trace(self:classname(), "getStyleSizes(player):display_size", display_size)
  local style_sizes = {}
  if display_size ~= nil then
    local width_info=490
    local width_scroll=8
    local width_block_info=290
    local width_recipe_column=220
    local height_block_header = 450
    local height_selector_header = 350
    local height_row_element = 72

    local string_width = string.match(display_size,"([0-9]*)x[0-9]*",1)
    local string_height = string.match(display_size,"[0-9]*x([0-9]*)",1)
    Logging:trace(self:classname(), "getStyleSizes(player):parse", string_width, string_height)
    local width = math.ceil(1920*0.85)
    local height = math.ceil(1680*0.85)
    if string_width ~= nil then width = math.ceil(tonumber(string_width)*0.85) end
    if string_height ~= nil then height = math.ceil(tonumber(string_height)*0.85) end

    style_sizes.main = {}
    style_sizes.main.minimal_width = width
    style_sizes.main.minimal_height = height

    style_sizes.data = {}
    style_sizes.data.minimal_width = width - width_info
    style_sizes.data.maximal_width = width - width_info

    style_sizes.scroll_recipe_selector = {}
    style_sizes.scroll_recipe_selector.minimal_height = height - height_selector_header
    style_sizes.scroll_recipe_selector.maximal_height = height - height_selector_header

    -- input/output table
    style_sizes.scroll_block_element = {}
    style_sizes.scroll_block_element.minimal_width = width - width_info - width_block_info - width_scroll - 10
    style_sizes.scroll_block_element.maximal_width = width - width_info - width_block_info - width_scroll - 10
    style_sizes.scroll_block_element.minimal_height = height_row_element
    style_sizes.scroll_block_element.maximal_height = height_row_element

    -- recipe table
    style_sizes.scroll_block_list = {}
    style_sizes.scroll_block_list.minimal_width = width - width_info - width_scroll
    style_sizes.scroll_block_list.maximal_width = width - width_info - width_scroll
    style_sizes.scroll_block_list.minimal_height = height - height_block_header
    style_sizes.scroll_block_list.maximal_height = height - height_block_header


  end
  Logging:trace(self:classname(), "getStyleSizes(player)", style_sizes)
  return style_sizes
end

-------------------------------------------------------------------------------
-- Set style
--
-- @function [parent=#PlayerController] setStyle
--
-- @param #LuaPlayer player
-- @param #LuaGuiElement element
-- @param #string style
-- @param #string property
--
function PlayerController.methods:setStyle(player, element, style, property)
  Logging:trace(self:classname(), "setStyle(player, element, style, property)", player, element, style, property)
  local style_sizes = self:getStyleSizes(player)
  if element.style ~= nil and style_sizes[style] ~= nil and style_sizes[style][property] ~= nil then
    Logging:trace(self:classname(), "setStyle(player, element, style, property)", style_sizes[style][property])
    element.style[property] = style_sizes[style][property]
  end
end

-------------------------------------------------------------------------------
-- Get sorted style
--
-- @function [parent=#PlayerController] getSortedStyle
--
-- @param #LuaPlayer player
-- @param #string key
--
-- @return #string style
--
function PlayerController.methods:getSortedStyle(player, key)
  local globalGui = self:getGlobalGui(player)
  if globalGui.order == nil then globalGui.order = {name="index",ascendant="true"} end
  local style = "helmod_button-sorted-none"
  if globalGui.order.name == key and globalGui.order.ascendant then style = "helmod_button-sorted-up" end
  if globalGui.order.name == key and not(globalGui.order.ascendant) then style = "helmod_button-sorted-down" end
  return style
end

-------------------------------------------------------------------------------
-- Return recipes
--
-- @function [parent=#PlayerController] getRecipes
--
-- @param #LuaPlayer player
--
-- @return #table recipes
--
function PlayerController.methods:getRecipes(player, with_resource)
  if player == nil then Logging:error(self:classname(), "getRecipes(player): player can not be nil") end
  local recipes = {}
  for _,recipe in pairs(self:getForce(player).recipes) do
    recipes[recipe.name] = recipe
  end
  if with_resource == true then
    local resources = self:getResources()
    if resources ~= nil then
      for _,resource in pairs(resources) do
        recipes[resource.name] = self:getRecipe(player, resource.name)
      end
    end
    local fluids = self:getFluidPrototypes()
    if fluids ~= nil then
      for _,fluid in pairs(fluids) do
        recipes[fluid.name] = self:getRecipe(player, fluid.name)
      end
    end
  end
  return recipes
end

-------------------------------------------------------------------------------
-- Return recipe groups
--
-- @function [parent=#PlayerController] getRecipeGroups
--
-- @param #LuaPlayer player
--
-- @return #table recipe groups
--
function PlayerController.methods:getRecipeGroups(player)
  -- recuperation des groupes avec les recipes
  local recipeGroups = {}
  for key, recipe in pairs(self:getRecipes(player)) do
    if recipe.group ~= nil then
      if recipeGroups[recipe.group.name] == nil then recipeGroups[recipe.group.name] = {} end
      table.insert(recipeGroups[recipe.group.name], recipe.name)
    end
  end
  return recipeGroups
end

-------------------------------------------------------------------------------
-- Return recipe subgroups
--
-- @function [parent=#PlayerController] getRecipeSubgroups
--
-- @param #LuaPlayer player
--
-- @return #table recipe subgroups
--
function PlayerController.methods:getRecipeSubgroups(player)
  -- recuperation des groupes avec les recipes
  local recipeSubgroups = {}
  for key, recipe in pairs(self:getRecipes(player)) do
    if recipe.subgroup ~= nil then
      if recipeSubgroups[recipe.subgroup.name] == nil then recipeSubgroups[recipe.subgroup.name] = {} end
      table.insert(recipeSubgroups[recipe.subgroup.name], recipe.name)
    end
  end
  return recipeSubgroups
end

-------------------------------------------------------------------------------
-- Return technologies
--
-- @function [parent=#PlayerController] getTechnologies
--
-- @param #LuaPlayer player
--
-- @return #table technologies
--
function PlayerController.methods:getTechnologies(player)
  if player == nil then Logging:error(self:classname(), "getTechnologies(player): player can not be nil") end
  local technologies = {}
  for _,technology in pairs(self:getForce(player).technologies) do
    technologies[technology.name] = technology
  end
  return technologies
end

-------------------------------------------------------------------------------
-- Return technology
--
-- @function [parent=#PlayerController] getTechnology
--
-- @param #LuaPlayer player
--
-- @return #LuaPrototype factorio prototype
--
function PlayerController.methods:getTechnology(player, name)
  if player == nil then Logging:error(self:classname(), "getTechnology(player, name): player can not be nil") end
  local technology = self:getForce(player).technologies[name]
  return technology
end

-------------------------------------------------------------------------------
-- Return list of productions
--
-- @function [parent=#PlayerController] getProductionsCrafting
--
-- @param #string category filter
-- @param #string name entity filter
--
-- @return #table list of productions
--
function PlayerController.methods:getProductionsCrafting(category, entity_name)
  Logging:trace(self:classname(), "getProductionsCrafting(category)", category, entity_name)
  local productions = {}
  if entity_name ~= nil and entity_name == "water" then
    for key, lua_entity in pairs(game.entity_prototypes) do
      if lua_entity.type ~= nil and lua_entity.name ~= nil and lua_entity.name ~= "player" then
        if lua_entity.type == "offshore-pump" then
          productions[lua_entity.name] = lua_entity
        end 
      end
    end
  else
    for key, lua_entity in pairs(game.entity_prototypes) do
      if lua_entity.type ~= nil and lua_entity.type ~= "offshore-pump" and lua_entity.name ~= nil and lua_entity.name ~= "player" then
        Logging:trace(self:classname(), "getProductionsCrafting(category):item", lua_entity.name, lua_entity.type, lua_entity.group.name, lua_entity.subgroup.name, lua_entity.crafting_categories)
        local check = false
        if category ~= nil and category ~= "extraction-machine" and category ~= "energy" then
          -- standard recipe
          if lua_entity.crafting_categories ~= nil and lua_entity.crafting_categories[category] then
            check = true
          end
        elseif category ~= nil and category == "extraction-machine" then
          if lua_entity.subgroup ~= nil and lua_entity.subgroup.name == "extraction-machine" then
            check = true
          end
        elseif category ~= nil and category == "energy" then
          if lua_entity.subgroup ~= nil and lua_entity.subgroup.name == "energy" then
            check = true
          end
        else
          if lua_entity.group ~= nil and lua_entity.group.name == "production" then
            check = true
          end
        end
        -- resource filter
        if check then
          if entity_name ~= nil then
            local lua_entity_filter = self:getEntityPrototype(entity_name)
            if lua_entity_filter ~= nil and lua_entity.resource_categories ~= nil and not(lua_entity.resource_categories[lua_entity_filter.resource_category]) then
              check = false
            end
          end
        end
        -- ok to add entity
        if check then
          productions[lua_entity.name] = lua_entity
        end
      end
    end
  end
  Logging:debug(self:classname(), "getProductionsCrafting(category)", category, productions)
  return productions
end

-------------------------------------------------------------------------------
-- Return list of modules
--
-- @function [parent=#PlayerController] getModules
--
-- @return #table list of modules
--
function PlayerController.methods:getModules()
  -- recuperation des groupes
  local modules = {}
  for key, item in pairs(game.item_prototypes) do
    if item.type ~= nil and item.type == "module" then
      modules[item.name] = item
    end
  end
  return modules
end

-------------------------------------------------------------------------------
-- Return recipe
--
-- @function [parent=#PlayerController] getRecipe
--
-- @param #LuaPlayer player
-- @param #string name recipe name
--
-- @return #LuaRecipe recipe
--
function PlayerController.methods:getRecipe(player, name)
  local recipe = self:getForce(player).recipes[name]
  if recipe == nil then
    local entity = game.entity_prototypes[name]
    if entity ~= nil then
      if entity.resource_category ~= nil then
        -- build a fake recipe for resource
        recipe = self:createFakeRecipe(player, entity, "resource")
      end
    else
      local fluid = game.fluid_prototypes[name]
      if fluid ~= nil then
        -- build a fake recipe for resource
        recipe = self:createFakeRecipe(player, fluid, "fluid")
      end
    end
  end
  return recipe
end

-------------------------------------------------------------------------------
-- Create a fake recipe
--
-- @function [parent=#PlayerController] createFakeRecipe
--
-- @param #LuaPlayer player
-- @param #LuaPrototype entity
-- @param #string type
--
-- @return #LuaRecipe recipe
--
function PlayerController.methods:createFakeRecipe(player, entity, type)
  -- build a fake recipe
  local recipe = {
    name = entity.name,
    group = entity.group,
    subgroup = entity.subgroup,
    energy = 1,
    enabled = true,
    hidden = false
  }
  if type == "resource" and entity.resource_category ~= nil then
    recipe.localised_name = {"entity-name."..entity.name}
    recipe.products = {{type="item", name=entity.name, amount=1}}
    recipe.ingredients = {{type="item", name=entity.name, amount=1}}
    recipe.resource_category = entity.resource_category
    recipe.category = "extraction-machine"
  end
  if type == "fluid" then
    recipe.localised_name = {"fluid-name."..entity.name}
    recipe.products = {{type="fluid", name=entity.name, amount=1}}
    recipe.ingredients = {{type="fluid", name=entity.name, amount=1}}
    recipe.category = "energy"
  end
  return recipe
end

-------------------------------------------------------------------------------
-- Return list of recipes
--
-- @function [parent=#PlayerController] searchRecipe
--
-- @param #LuaPlayer player
-- @param #string recipe name
--
-- @return #table list of recipes
--
function PlayerController.methods:searchRecipe(player, name)
  local recipes = {}
  -- recherche dans les produits des recipes
  for key, recipe in pairs(self:getRecipes(player, true)) do
    for k, product in pairs(recipe.products) do
      if product.name == name then
        table.insert(recipes,recipe)
      end
    end
  end
  return recipes
end

-------------------------------------------------------------------------------
-- Return entity prototypes
--
-- @function [parent=#PlayerController] getEntityPrototypes
--
-- @param #string entity name
--
-- @return #LuaEntityPrototype entity prototype
--
function PlayerController.methods:getEntityPrototypes()
  return game.entity_prototypes
end

-------------------------------------------------------------------------------
-- Return entity prototype
--
-- @function [parent=#PlayerController] getEntityPrototype
--
-- @param #string entity name
--
-- @return #LuaEntityPrototype entity prototype
--
function PlayerController.methods:getEntityPrototype(name)
  if name == nil then return nil end
  return game.entity_prototypes[name]
end

-------------------------------------------------------------------------------
-- Return beacon production
--
-- @function [parent=#PlayerController] getProductionsBeacon
--
-- @return #table items prototype
--
function PlayerController.methods:getProductionsBeacon()
  local items = {}
  for _,item in pairs(game.item_prototypes) do
    --Logging:debug(self:classname(), "getItemsPrototype(type):", item.name, item.group.name, item.subgroup.name)
    if item.name ~= nil then
      local efficiency = self:getItemProperty(item.name, "efficiency")
      Logging:trace(self:classname(), "getProductionsBeacon(type):", item.name, efficiency)
      if efficiency ~= nil then
        table.insert(items,item)
      end
    end
  end
  return items
end

-------------------------------------------------------------------------------
-- Return generators
--
-- @function [parent=#PlayerController] getGenerators
--
-- @param #string type type primary or secondary
--
-- @return #table items prototype
--
function PlayerController.methods:getGenerators(type)
  if type == nil then type = "primary" end
  local items = {}
  for _,item in pairs(game.item_prototypes) do
    --Logging:debug(self:classname(), "getItemsPrototype(type):", item.name, item.group.name, item.subgroup.name)
    if item.name ~= nil then
      local classification = self:getEntityProperty(item.name, "type")
      if item.group.name == "production" then
        Logging:trace(self:classname(), "getGenerators():", item.name, item.type, item.group.name, item.subgroup.name)
      end
      if type == "primary" and (classification == "generator" or classification == "solar-panel") then
        table.insert(items,item)
      end
      if type == "secondary" and (classification == "boiler" or classification == "accumulator") then
        table.insert(items,item)
      end
    end
  end
  return items
end

-------------------------------------------------------------------------------
-- Return resources list
--
-- @function [parent=#PlayerController] getResources
--
-- @return #table entity prototype
--
function PlayerController.methods:getResources()
  local items = {}
  for _,item in pairs(game.entity_prototypes) do
    --Logging:debug(self:classname(), "getItemsPrototype(type):", item.name, item.group.name, item.subgroup.name)
    if item.name ~= nil and item.resource_category ~= nil then
      table.insert(items,item)
    end
  end
  return items
end

-------------------------------------------------------------------------------
-- Return item prototypes
--
-- @function [parent=#PlayerController] getItemPrototypes
--
-- @param #string item name
--
-- @return #LuaItemPrototype item prototype
--
function PlayerController.methods:getItemPrototypes()
  return game.item_prototypes
end

-------------------------------------------------------------------------------
-- Return item prototype
--
-- @function [parent=#PlayerController] getItemPrototype
--
-- @param #string item name
--
-- @return #LuaItemPrototype item prototype
--
function PlayerController.methods:getItemPrototype(name)
  return game.item_prototypes[name]
end

-------------------------------------------------------------------------------
-- Return fluid prototypes
--
-- @function [parent=#PlayerController] getFluidPrototypes
--
-- @return #LuaFluidPrototype fluid prototype
--
function PlayerController.methods:getFluidPrototypes()
  return game.fluid_prototypes
end

-------------------------------------------------------------------------------
-- Return fluid prototype
--
-- @function [parent=#PlayerController] getFluidPrototype
--
-- @param #string fluid name
--
-- @return #LuaFluidPrototype fluid prototype
--
function PlayerController.methods:getFluidPrototype(name)
  --Logging:debug(self:classname(), "getFluidPrototype:",name)
  return game.fluid_prototypes[name]
end

-------------------------------------------------------------------------------
-- Unlock Recipes
--
-- @function [parent=#PlayerController] unlockRecipes
--
-- @param #LuaPlayer player
--
function PlayerController.methods:unlockRecipes(player)
  self:getForce(player).enable_all_recipes()
end

-------------------------------------------------------------------------------
-- Lock Recipes
--
-- @function [parent=#PlayerController] lockRecipes
--
-- @param #LuaPlayer player
--
function PlayerController.methods:lockRecipes(player)
  self:getForce(player).reset_recipes()
end

-------------------------------------------------------------------------------
-- Return icon type
--
-- @function [parent=#PlayerController] getIconType
--
-- @param #ModelRecipe element
--
-- @return #string recipe type
--
function PlayerController.methods:getIconType(element)
  Logging:trace(self:classname(), "getIconType(element)", element)
  if element == nil or element.name == nil then return "unknown" end
  local item = self:getItemPrototype(element.name)
  if item ~= nil then
    return "item"
  end
  local fluid = self:getFluidPrototype(element.name)
  if fluid ~= nil then
    return "fluid"
  end
  local entity = self:getEntityPrototype(element.name)
  if entity ~= nil then
    return "entity"
  end
  return "recipe"
end

-------------------------------------------------------------------------------
-- Return recipe type
--
-- @function [parent=#PlayerController] getRecipeIconType
--
-- @param #LuaPlayer player
-- @param #ModelRecipe element
--
-- @return #string recipe type
--
function PlayerController.methods:getRecipeIconType(player, element)
  Logging:trace(self:classname(), "getRecipeIconType(element)", element)
  if element == nil then Logging:error(self:classname(), "getRecipeIconType(element): missing player") end
  local recipe = self:getRecipe(player, element.name)
  if recipe ~= nil and recipe.force ~= nil then
    return "recipe"
  end
  return self:getIconType(element);
end

-------------------------------------------------------------------------------
-- Return item type
--
-- @function [parent=#PlayerController] getItemIconType
--
-- @param #table factorio prototype
--
-- @return #string item type
--
function PlayerController.methods:getItemIconType(element)
  local item = self:getItemPrototype(element.name)
  if item ~= nil then
    return "item"
  end
  local fluid = self:getFluidPrototype(element.name)
  if fluid ~= nil then
    return "fluid"
  else
    return "item"
  end
end

-------------------------------------------------------------------------------
-- Return entity type
--
-- @function [parent=#PlayerController] getEntityIconType
--
-- @param #table factorio prototype
--
-- @return #string item type
--
function PlayerController.methods:getEntityIconType(element)
  local item = self:getEntityPrototype(element.name)
  if item ~= nil then
    return "entity"
  end
  return self:getItemIconType(element)
end

-------------------------------------------------------------------------------
-- Return module bonus (default return: bonus = 0 )
--
-- @function [parent=#PlayerController] getModuleBonus
--
-- @param #string module module name
-- @param #string effect effect name
--
-- @return #number
--
function PlayerController.methods:getModuleBonus(module, effect)
  local bonus = 0
  -- search module
  local module = self:getItemPrototype(module)
  if module ~= nil and module.module_effects[effect] ~= nil then
    bonus = module.module_effects[effect].bonus
  end
  return bonus
end

-------------------------------------------------------------------------------
-- Return localised name
--
-- @function [parent=#PlayerController] getLocalisedName
--
-- @param #LuaPlayer player
-- @param #table element factorio prototype
--
-- @return #string localised name
--
function PlayerController.methods:getLocalisedName(player, element)
  Logging:trace(self:classname(), "getLocalisedName(player, element)", player, element)
  if self:getSettings(player, "display_real_name", true) then
    return element.name
  end
  local localisedName = element.name
  if element.type ~= nil then
    if element.type == 0 or element.type == "item" then
      local item = self:getItemPrototype(element.name)
      if item ~= nil then
        localisedName = item.localised_name
      end
    end
    if element.type == 1 or element.type == "fluid" then
      local item = self:getFluidPrototype(element.name)
      if item ~= nil then
        localisedName = item.localised_name
      end
    end
  end
  return localisedName
end

-------------------------------------------------------------------------------
-- Return localised name
--
-- @function [parent=#PlayerController] getRecipeLocalisedName
--
-- @param #LuaPlayer player
-- @param #LuaPrototype prototype factorio prototype
--
-- @return #string localised name
--
function PlayerController.methods:getRecipeLocalisedName(player, prototype)
  local globalSettings = self:getGlobal(player, "settings")
  local element = self:getRecipe(player, prototype.name)
  if element ~= nil and not(self:getSettings(player, "display_real_name", true)) then
    return element.localised_name
  end
  return prototype.name
end

-------------------------------------------------------------------------------
-- Return localised name
--
-- @function [parent=#PlayerController] getTechnologyLocalisedName
--
-- @param #LuaPlayer player
-- @param #LuaPrototype prototype factorio prototype
--
-- @return #string localised name
--
function PlayerController.methods:getTechnologyLocalisedName(player, prototype)
  local globalSettings = self:getGlobal(player, "settings")
  local element = self:getTechnology(player, prototype.name)
  if element ~= nil and not(self:getSettings(player, "display_real_name", true)) then
    return element.localised_name
  end
  return element.name
end

-------------------------------------------------------------------------------
-- Return number
--
-- @function [parent=#PlayerController] parseNumber
--
-- @param #string name
-- @param #string property
--
function PlayerController.methods:parseNumber(number)
  Logging:trace(self:classname(), "parseNumber(number)", number)
  if number == nil then return 0 end
  local value = string.match(number,"[0-9.]*",1)
  local power = string.match(number,"[0-9.]*([a-zA-Z]*)",1)
  Logging:trace(self:classname(), "parseNumber(number)", number, value, power)
  if power == nil then
    return tonumber(value)
  elseif string.lower(power) == "kw" then
    return tonumber(value)*1000
  elseif string.lower(power) == "mw" then
    return tonumber(value)*1000*1000
  elseif string.lower(power) == "gw" then
    return tonumber(value)*1000*1000*1000
  elseif string.lower(power) == "kj" then
    return tonumber(value)*1000
  elseif string.lower(power) == "mj" then
    return tonumber(value)*1000*1000
  elseif string.lower(power) == "gj" then
    return tonumber(value)*1000*1000*1000
  end
end


-------------------------------------------------------------------------------
-- Return entity property
--
-- @function [parent=#PlayerController] getEntityProperty
--
-- @param #string name
-- @param #string property
--
function PlayerController.methods:getEntityProperty(name, property)
  Logging:trace(self:classname(), "getEntityProperty(name, property)", name, property)
  local entity = self:getEntityPrototype(name)
  if entity ~= nil then
    if property == "type" then
      return entity.type
    end
    if property == "energy_usage" then
      -- energie par seconde
      if entity.energy_usage ~= nil then
        return entity.energy_usage*60
      end
      return 0
    end

    if property == "max_energy_usage" then
      -- energie par seconde
      if entity.max_energy_usage ~= nil then
        return entity.max_energy_usage*60
      end
      return 0
    end

    if property == "effectivity" then
      return entity.effectivity or 1
    end
    if property == "maximum_temperature" then
      return entity.maximum_temperature or 0
    end
    if property == "fluid_usage_per_tick" then
      return entity.fluid_usage_per_tick or 0
    end
    if property == "module_slots" then
      return entity.module_inventory_size or 0
    end
    if property == "crafting_speed" then
      return entity.crafting_speed or 0
    end
    if property == "mining_speed" then
      return entity.mining_speed or 0
    end
    if property == "mining_power" then
      return entity.mining_power or 0
    end
    if property == "energy_type" then
      if entity.burner_prototype ~= nil then return "burner" end
      return "electrical"
    end
    if property == "mineable_properties.hardness" then
      if entity.mineable_properties ~= nil then
        return entity.mineable_properties.hardness or 1
      end
      return 1
    end
    if property == "mineable_properties.mining_time" then
      if entity.mineable_properties ~= nil then
        return entity.mineable_properties.mining_time or 0.5
      end
      return 0.5
    end
    if property == "electric_energy_source_prototype.buffer_capacity" then
      if entity.electric_energy_source_prototype ~= nil then
        return entity.electric_energy_source_prototype.buffer_capacity or 0
      end
      return 0
    end
    if property == "electric_energy_source_prototype.input_flow_limit" then
      if entity.electric_energy_source_prototype ~= nil then
        return entity.electric_energy_source_prototype.input_flow_limit or 0
      end
      return 0
    end
    if property == "electric_energy_source_prototype.output_flow_limit" then
      if entity.electric_energy_source_prototype ~= nil then
        return entity.electric_energy_source_prototype.output_flow_limit or 0
      end
      return 0
    end
    if property == "electric_energy_source_prototype.emissions" then
      if entity.electric_energy_source_prototype ~= nil then
        return entity.electric_energy_source_prototype.emissions or 0
      end
      return 0
    end
    if property == "electric_energy_source_prototype.effectivity" then
      if entity.electric_energy_source_prototype ~= nil then
        return entity.electric_energy_source_prototype.effectivity or 1
      end
      return 1
    end

  end
end

-------------------------------------------------------------------------------
-- Return item property
--
-- @function [parent=#PlayerController] getItemProperty
--
-- @param #string name
-- @param #string property
--
function PlayerController.methods:getItemProperty(name, property)
  Logging:trace(self:classname(), "getItemProperty(name, property)", name, property)
  if data_entity == nil then
    data_entity = self:getChunkedData("data_entity")
    Logging:trace(self:classname(), "getItemProperty(name, property):data_entity", data_entity)
  end
  if data_entity[name] then
    if property == "energy_consumption" then
      if data_entity[name]["energy_consumption"] ~= nil then
        return self:parseNumber(data_entity[name]["energy_consumption"])
      else
        return 0
      end
    elseif property == "production" then
      if data_entity[name]["production"] ~= nil then
        return self:parseNumber(data_entity[name]["production"])
      else
        return 0
      end
    else
      return data_entity[name][property]
    end
  end
  return nil
end

-------------------------------------------------------------------------------
-- Return chunked data
--
-- @function [parent=#PlayerController] getChunkedData
--
-- @param #string name
--
function PlayerController.methods:getChunkedData(name)
  local chunk_suffix = "_"
  local string = ""
  if game then
    local i = 1
    while game.entity_prototypes[name .. chunk_suffix .. i] do
      string = string..game.entity_prototypes[name .. chunk_suffix .. i].order
      i = i + 1
    end
  end
  if #string > 0 then
    return loadstring(string)()
  end
  return nil
end
