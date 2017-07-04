-------------------------------------------------------------------------------
-- Classe to build selector dialog
--
-- @module AbstractSelector
-- @extends #Dialog
--

AbstractSelector = setclass("HMAbstractSelector", Dialog)

local groupList = {}
local prototypeGroups = {}
local prototypeFilter = nil
local prototypeFilterProduct = true

-------------------------------------------------------------------------------
-- Return filter - filtre sur les prototypes
--
-- @function [parent=#AbstractSelector] getProductFilter
--
-- @return #table
--
function AbstractSelector.methods:getProductFilter()
  return prototypeFilterProduct
end

-------------------------------------------------------------------------------
-- Return filter - filtre sur les prototypes
--
-- @function [parent=#AbstractSelector] getFilter
--
-- @return #table
--
function AbstractSelector.methods:getFilter()
  return prototypeFilter
end

-------------------------------------------------------------------------------
-- Return groups
--
-- @function [parent=#AbstractSelector] getGroups
--
-- @return #table
--
function AbstractSelector.methods:getGroups()
  return groupList
end

-------------------------------------------------------------------------------
-- Set groups
--
-- @function [parent=#AbstractSelector] getGroups
--
-- @param #table list
--
-- @return #table
--
function AbstractSelector.methods:setGroups(list)
  groupList = list
end

-------------------------------------------------------------------------------
-- Return prototype groups
--
-- @function [parent=#AbstractSelector] getPrototypeGroups
--
-- @return #table
--
function AbstractSelector.methods:getPrototypeGroups()
  return prototypeGroups
end

-------------------------------------------------------------------------------
-- Set prototype groups
--
-- @function [parent=#AbstractSelector] getPrototypeGroups
--
-- @param #table list
--
-- @return #table
--
function AbstractSelector.methods:setPrototypeGroups(list)
  prototypeGroups = list
end

-------------------------------------------------------------------------------
-- Return caption
--
-- @function [parent=#AbstractSelector] getCaption
--
-- @param #Controller parent parent controller
--
function AbstractSelector.methods:getCaption(parent)
  return {"helmod_selector-panel.recipe-title"}
end

-------------------------------------------------------------------------------
-- On initialization
--
-- @function [parent=#AbstractSelector] on_init
--
-- @param #Controller parent parent controller
--
function AbstractSelector.methods:on_init(parent)
  self.panelCaption = self:getCaption(parent)
  self.player = self.parent.player
  self.model = self.parent.model
  self:after_init()
end

-------------------------------------------------------------------------------
-- After initialization
--
-- @function [parent=#AbstractSelector] after_init
--
function AbstractSelector.methods:after_init()
  self.disable_option = false
  self.hidden_option = false
  self.product_option = false
end

-------------------------------------------------------------------------------
-- Get the parent panel
--
-- @function [parent=#AbstractSelector] getParentPanel
--
-- @param #LuaPlayer player
--
-- @return #LuaGuiElement
--
function AbstractSelector.methods:getParentPanel(player)
  return self.parent:getDialogPanel(player)
end

-------------------------------------------------------------------------------
-- Get or create filter panel
--
-- @function [parent=#AbstractSelector] getFilterPanel
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:getFilterPanel(player)
  local panel = self:getPanel(player)
  if panel["filter-panel"] ~= nil and panel["filter-panel"].valid then
    return panel["filter-panel"]
  end
  return self:addGuiFrameV(panel, "filter-panel", "helmod_frame_resize_row_width", ({"helmod_common.filter"}))
end

-------------------------------------------------------------------------------
-- Get or create scroll panel
--
-- @function [parent=#AbstractSelector] getSrollPanel
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:getSrollPanel(player)
  local panel = self:getPanel(player)
  if panel["main-panel"] ~= nil and panel["main-panel"].valid then
    return panel["main-panel"]["scroll-panel"]
  end
  local mainPanel = self:addGuiFrameV(panel, "main-panel", "helmod_frame_resize_row_width")
  local panel = self:addGuiScrollPane(mainPanel, "scroll-panel", "helmod_scroll_recipe_selector", "auto", "auto")
  self.player:setStyle(player, panel, "scroll_recipe_selector", "minimal_height")
  self.player:setStyle(player, panel, "scroll_recipe_selector", "maximal_height")
  return panel
end

-------------------------------------------------------------------------------
-- Get or create groups panel
--
-- @function [parent=#AbstractSelector] getGroupsPanel
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:getGroupsPanel(player)
  local panel = self:getSrollPanel(player)
  if panel["groups-panel"] ~= nil and panel["groups-panel"].valid then
    return panel["groups-panel"]
  end
  return self:addGuiFlowV(panel, "groups-panel", "helmod_flow_resize_row_width")
end

-------------------------------------------------------------------------------
-- Get or create item list panel
--
-- @function [parent=#AbstractSelector] getItemListPanel
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:getItemListPanel(player)
  local panel = self:getSrollPanel(player)
  if panel["item-list-panel"] ~= nil and panel["item-list-panel"].valid then
    return panel["item-list-panel"]
  end
  return self:addGuiFlowV(panel, "item-list-panel", "helmod_flow_resize_row_width")
end

-------------------------------------------------------------------------------
-- On open
--
-- @function [parent=#AbstractSelector] on_open
--
-- @param #LuaPlayer player
-- @param #LuaEvent event
-- @param #string action action name
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
-- @return #boolean if true the next call close dialog
--
function AbstractSelector.methods:on_open(player, event, action, item, item2, item3)
  Logging:debug(self:classname(), "on_open():", action, item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  if item3 ~= nil then
    prototypeFilter = item3:lower():gsub("[-]"," ")
  else
    prototypeFilter = nil
  end
  prototypeFilterProduct = true
  -- close si nouvel appel
  return true
end

-------------------------------------------------------------------------------
-- After open
--
-- @function [parent=#AbstractSelector] after_open
--
-- @param #LuaPlayer player
-- @param #LuaEvent event
-- @param #string action action name
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:after_open(player, event, action, item, item2, item3)
  self.parent:send_event(player, "HMRecipeEdition", "CLOSE")
  self.parent:send_event(player, "HMProductEdition", "CLOSE")
  self.parent:send_event(player, "HMSettings", "CLOSE")
  if self:classname() ~= "HMItemSelector" then self.parent:send_event(player, "HMItemSelector", "CLOSE") end
  if self:classname() ~= "HMEntitySelector" then self.parent:send_event(player, "HMEntitySelector", "CLOSE") end
  if self:classname() ~= "HMRecipeSelector" then self.parent:send_event(player, "HMRecipeSelector", "CLOSE") end
  if self:classname() ~= "HMTechnologySelector" then self.parent:send_event(player, "HMTechnologySelector", "CLOSE") end
end

-------------------------------------------------------------------------------
-- On event
--
-- @function [parent=#AbstractSelector] on_event
--
-- @param #LuaPlayer player
-- @param #LuaEvent event
-- @param #string action action name
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:on_event(player, event, action, item, item2, item3)
  Logging:debug(self:classname(), "on_event():", action, item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  local globalSettings = self.player:getGlobal(player, "settings")
  local defaultSettings = self.player:getDefaultSettings()
  local globalGui = self.player:getGlobalGui(player)

  local model = self.model:getModel(player)
  if self.player:isAdmin(player) or model.owner == player.name or (model.share ~= nil and bit32.band(model.share, 2) > 0) then
    if globalGui.currentTab == "HMPropertiesTab" then
      if action == "recipe-select" then
        globalPlayer["prototype-properties"] = {name = item, type = "recipe" }
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
      if action == "entity-select" then
        globalPlayer["prototype-properties"] = {name = item, type = "entity" }
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
      if action == "item-select" then
        globalPlayer["prototype-properties"] = {name = item, type = "item" }
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
      if action == "fluid-select" then
        globalPlayer["prototype-properties"] = {name = item, type = "fluid" }
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
      if action == "technology-select" then
        globalPlayer["prototype-properties"] = {name = item, type = "technology" }
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
    else
      if action == "recipe-select" then
        local productionBlock = self.parent.model:addRecipeIntoProductionBlock(player, item)
        self.parent.model:update(player)
        self.parent:refreshDisplayData(player)
        self:close(player)
      end
    end
  end

  if action == "recipe-group" then
    globalPlayer.recipeGroupSelected = item
    self:on_update(player, item, item2, item3)
  end

  if action == "change-boolean-settings" then
    if globalSettings[item] == nil then globalSettings[item] = defaultSettings[item] end
    globalSettings[item] = not(globalSettings[item])
    self:on_update(player, item, item2, item3)
  end

  if action == "recipe-filter-switch" then
    prototypeFilterProduct = not(prototypeFilterProduct)
    self:on_update(player, item, item2, item3)
  end

  if action == "recipe-filter" then
    if self.player:getSettings(player, "filter_on_text_changed", true) then
      prototypeFilter = event.element.text
    else
      if event.element.parent ~= nil and event.element.parent["filter-text"] ~= nil then
        prototypeFilter = event.element.parent["filter-text"].text
      end
    end
    self:on_update(player, item, item2, item3)
  end

end

-------------------------------------------------------------------------------
-- Update groups
--
-- @function [parent=#AbstractSelector] updateGroups
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
-- @return {groupList, prototypeGroups}
--
function AbstractSelector.methods:updateGroups(player, item, item2, item3)
  Logging:trace(self:classname(), "updateGroups():", item, item2, item3)
  return {},{}
end

-------------------------------------------------------------------------------
-- On update
--
-- @function [parent=#AbstractSelector] on_update
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:on_update(player, item, item2, item3)
  Logging:trace(self:classname(), "on_update():",item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  -- recuperation recipes
  groupList , prototypeGroups = self:updateGroups(player, item, item2, item3)

  self:updateFilter(player, item, item2, item3)
  self:updateGroupSelector(player, item, item2, item3)
  self:updateItemList(player, item, item2, item3)
end

-------------------------------------------------------------------------------
-- Update filter
--
-- @function [parent=#AbstractSelector] updateFilter
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:updateFilter(player,item, item2, item3)
  Logging:trace(self:classname(), "updateFilter():", item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  local panel = self:getFilterPanel(player)

  if panel["filter"] == nil then
    local guiFilter = self:addGuiTable(panel, "filter", 2)
    if self.disable_option then
      local filter_show_disable = self.player:getGlobalSettings(player, "filter_show_disable")
      self:addGuiCheckbox(guiFilter, self:classname().."=change-boolean-settings=ID=filter_show_disable", filter_show_disable)
      self:addGuiLabel(guiFilter, "filter_show_disable", ({"helmod_recipe-edition-panel.filter-show-disable"}))
    end
    
    if self.hidden_option then
      local filter_show_hidden = self.player:getGlobalSettings(player, "filter_show_hidden")
      self:addGuiCheckbox(guiFilter, self:classname().."=change-boolean-settings=ID=filter_show_hidden", filter_show_hidden)
      self:addGuiLabel(guiFilter, "filter_show_hidden", ({"helmod_recipe-edition-panel.filter-show-hidden"}))
    end

    if self.product_option then
      self:addGuiCheckbox(guiFilter, self:classname().."=recipe-filter-switch=ID=filter-product", prototypeFilterProduct)
      self:addGuiLabel(guiFilter, "filter-product", ({"helmod_recipe-edition-panel.filter-by-product"}))
  
      self:addGuiCheckbox(guiFilter, self:classname().."=recipe-filter-switch=ID=filter-ingredient", not(prototypeFilterProduct))
      self:addGuiLabel(guiFilter, "filter-ingredient", ({"helmod_recipe-edition-panel.filter-by-ingredient"}))
    end

    self:addGuiLabel(guiFilter, "filter-value", ({"helmod_common.filter"}))
    local cellFilter = self:addGuiFlowH(guiFilter,"text-filter")
    if self.player:getSettings(player, "filter_on_text_changed", true) then
      self:addGuiText(cellFilter, self:classname().."=recipe-filter=ID=filter-value", prototypeFilter)
    else
      self:addGuiText(cellFilter, "filter-text", prototypeFilter)
      self:addGuiButton(cellFilter, self:classname().."=recipe-filter=ID=", "filter-value", "helmod_button_default", ({"helmod_button.apply"}))
    end

    self:addGuiLabel(panel, "message", ({"helmod_recipe-edition-panel.message"}))
  else
    if self.product_option then
      panel["filter"][self:classname().."=recipe-filter-switch=ID=filter-product"].state = prototypeFilterProduct
      panel["filter"][self:classname().."=recipe-filter-switch=ID=filter-ingredient"].state = not(prototypeFilterProduct)
    end
  end

end

-------------------------------------------------------------------------------
-- Update item list
--
-- @function [parent=#AbstractSelector] updateItemList
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:updateItemList(player, item, item2, item3)
  Logging:trace(self:classname(), "updateItemList():", item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  local panel = self:getItemListPanel(player)

  if panel["recipe-list"] ~= nil  and panel["recipe-list"].valid then
    panel["recipe-list"].destroy()
  end

  -- recuperation recipes et subgroupes
  local list = self:getItemList(player, item, item2, item3)

  --local guiRecipeSelectorTable = self:addGuiTable(panel, "recipe-table", 10)
  local guiRecipeSelectorList = self:addGuiFlowV(panel, "recipe-list", "helmod_flow_recipe_selector")
  for key, subgroup in pairs(list) do
    -- boucle subgroup
    local guiRecipeSubgroup = self:addGuiTable(guiRecipeSelectorList, "recipe-table-"..key, 10, "helmod_table_recipe_selector")
    for key, prototype in spairs(subgroup,function(t,a,b) return t[b]["order"] > t[a]["order"] end) do
      --Logging:trace(self:classname(), "updateItemList():recipe", recipe.name, recipe.category, recipe.group.name, recipe.group.order, recipe.subgroup.name, recipe.subgroup.order, recipe.order)

      local tooltip = self:buildPrototypeTooltip(player, prototype)
      self:buildPrototypeIcon(player, guiRecipeSubgroup, prototype, tooltip)
    end
  end

end

-------------------------------------------------------------------------------
-- Get item list
--
-- @function [parent=#AbstractSelector] getItemList
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:getItemList(player, item, item2, item3)
  Logging:trace(self:classname(), "getItemList():", item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  local list = {}
  if prototypeGroups[globalPlayer.recipeGroupSelected] ~= nil then
    list = prototypeGroups[globalPlayer.recipeGroupSelected]
  end
  return list
end

-------------------------------------------------------------------------------
-- Build prototype tooltip
--
-- @function [parent=#AbstractSelector] buildPrototypeTooltip
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:buildPrototypeTooltip(player, prototype)
  Logging:trace(self:classname(), "buildPrototypeTooltip(player, element):",player, prototype)
  -- initalize tooltip
  local tooltip = ""
  return tooltip
end

-------------------------------------------------------------------------------
-- Build prototype icon
--
-- @function [parent=#AbstractSelector] buildPrototypeIcon
--
-- @param #LuaPlayer player
--
function AbstractSelector.methods:buildPrototypeIcon(player, guiElement, prototype, tooltip)
  Logging:trace(self:classname(), "buildPrototypeIcon(player, guiElement, prototype, tooltip:",player, guiElement, prototype, tooltip)
  self:addGuiButtonSelectSprite(guiElement, self:classname().."=recipe-select=ID=", self.player:getRecipeIconType(player, prototype), prototype.name, prototype.name, tooltip)
end

-------------------------------------------------------------------------------
-- Update group selector
--
-- @function [parent=#AbstractSelector] updateGroupSelector
--
-- @param #LuaPlayer player
-- @param #string item first item name
-- @param #string item2 second item name
-- @param #string item3 third item name
--
function AbstractSelector.methods:updateGroupSelector(player, item, item2, item3)
  Logging:trace(self:classname(), "updateGroupSelector():", item, item2, item3)
  local globalPlayer = self.player:getGlobal(player)
  local panel = self:getGroupsPanel(player)

  if panel["recipe-groups"] ~= nil  and panel["recipe-groups"].valid then
    panel["recipe-groups"].destroy()
  end

  Logging:debug(self:classname(), "groupList:",groupList)

  -- ajouter de la table des groupes de recipe
  local guiRecipeSelectorGroups = self:addGuiTable(panel, "recipe-groups", 6, "helmod_table_recipe_selector")
  for _, group in spairs(groupList,function(t,a,b) return t[b]["order"] > t[a]["order"] end) do
    -- set le groupe
    if globalPlayer.recipeGroupSelected == nil then globalPlayer.recipeGroupSelected = group.name end
    local color = nil
    if globalPlayer.recipeGroupSelected == group.name then
      color = "yellow"
    end
    local tooltip = "item-group-name."..group.name
    -- ajoute les icons de groupe
    local action = self:addGuiButtonSelectSpriteXxl(guiRecipeSelectorGroups, self:classname().."=recipe-group=ID=", "item-group", group.name, group.name, ({tooltip}), color)
  end

end
