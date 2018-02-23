---
-- Description of the module.
-- @module ElementGui
--
local ElementGui = {
  -- single-line comment
  classname = "HMElementGui"
}

-------------------------------------------------------------------------------
-- Get the number of textfield input
--
-- @function [parent=#ElementGui] getInputNumber
--
-- @param #LuaGuiElement element textfield input
--
-- @return #number number of textfield input
--
function ElementGui.getInputNumber(element)
  Logging:trace(ElementGui.classname, "getInputNumber", element)
  local count = 0
  if element ~= nil then
    local tempCount=tonumber(element.text)
    if type(tempCount) == "number" then count = tempCount end
  end
  return count
end

-------------------------------------------------------------------------------
-- Set the number of textfield input
--
-- @function [parent=#ElementGui] setInputNumber
--
-- @param #LuaGuiElement element textfield input
-- @param #number value
--
-- @return #number number of textfield input
--
function ElementGui.setInputNumber(element, value)
  Logging:trace(ElementGui.classname, "setInputNumber", element, value)
  if element ~= nil and element.text ~= nil then
    element.text = value
  end
end

-------------------------------------------------------------------------------
-- Add a sprite element
--
-- @function [parent=#ElementGui] addSprite
--
-- @param #LuaGuiElement parent container for element
-- @param #string sprite name of sprite
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addSprite(parent, sprite)
  Logging:trace(ElementGui.classname, "addSprite", parent, key, caption, style, tooltip, single_line)
  return parent.add({type = "sprite", sprite= sprite})
end

-------------------------------------------------------------------------------
-- Add a label element
--
-- @function [parent=#ElementGui] addGuiLabel
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string caption displayed text
-- @param #string style style of label
-- @param #string tooltip displayed text
-- @param #boolean single_line
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiLabel(parent, key, caption, style, tooltip, single_line)
  Logging:trace(ElementGui.classname, "addGuiLabel", parent, key, caption, style, tooltip, single_line)
  local options = {}
  options.type = "label"
  options.name = key
  options.caption = caption
  if style ~= nil then
    options.style = style
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end
  local label = parent.add(options)
  if single_line ~= nil then
    label.style.single_line = single_line
  end
  return label
end

-------------------------------------------------------------------------------
-- Add a input element
--
-- @function [parent=#ElementGui] addGuiText
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string text input text
-- @param #string style style of text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiText(parent, key, text, style, tooltip)
  Logging:trace(ElementGui.classname, "addGuiText", parent, key, text, style, tooltip)
  local options = {}
  options.type = "textfield"
  options.name = key
  options.text = ""
  if text ~= nil then
    options.text = text
  end
  if style ~= nil then
    options.style = style
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a text box element
--
-- @function [parent=#ElementGui] addGuiTextbox
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string text input text
-- @param #string style style of text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiTextbox(parent, key, text, style, tooltip)
  Logging:trace(ElementGui.classname, "addGuiTextbox", parent, key, text, style, tooltip)
  local options = {}
  options.type = "text-box"
  options.name = key
  options.text = ""
  if text ~= nil then
    options.text = text
  end
  if style ~= nil then
    options.style = style
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a button element
--
-- @function [parent=#ElementGui] addGuiButton
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string key unique id
-- @param #string style style of button
-- @param #string caption container for element
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButton(parent, action, key, style, caption, tooltip)
  Logging:trace(ElementGui.classname, "addGuiButton", parent, action, key, style, caption, tooltip)
  local options = {}
  options.type = "button"
  if key ~= nil then
    options.name = action..key
  else
    options.name = action
  end
  if style ~= nil then
    options.style = style
  end
  if caption ~= nil then
    options.caption = caption
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end

  local button = nil
  local ok , err = pcall(function()
    button = parent.add(options)
  end)
  if not ok then
    Logging:trace(ElementGui.classname, "addGuiButton", action, key, style, err)
    options.style = "helmod_button_default"
    if (type(caption) == "boolean") then
      Logging:error(ElementGui.classname, "addGuiButton - caption is a boolean")
    elseif caption ~= nil then
      options.caption = caption
    else
      options.caption = key
    end
    button = parent.add(options)
  end
  return button
end

-------------------------------------------------------------------------------
-- Add a radio-button element
--
-- @function [parent=#ElementGui] addGuiRadioButton
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #boolean state state of radio-button
-- @param #string style style of radio-button
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiRadioButton(parent, key, state, style, tooltip)
  Logging:trace(ElementGui.classname, "addGuiRadioButton", parent, key, state, style, tooltip)
  return parent.add({type="radiobutton", name=key, state=state, style=style, tooltip=tooltip})
end

-------------------------------------------------------------------------------
-- Add a checkbox element
--
-- @function [parent=#ElementGui] addGuiCheckbox
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #boolean state state of checkbox
-- @param #string style style of checkbox
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiCheckbox(parent, key, state, style, tooltip)
  Logging:trace(ElementGui.classname, "addGuiCheckbox", parent, key, state, style, tooltip)
  return parent.add({type="checkbox", name=key, state=state, style=style, tooltip=tooltip})
end

-------------------------------------------------------------------------------
-- Add a dropdown element
--
-- @function [parent=#ElementGui] addGuiDropDown
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string key unique id
-- @param #table items list of element
-- @param #string selected selected element
-- @param #string style style of button
-- @param #string caption container for element
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiDropDown(parent, action, key, items, selected, style, caption, tooltip)
  Logging:debug(ElementGui.classname, "addGuiDropDown", parent, action, key, items, selected, style, caption, tooltip)
  local options = {}
  options.type = "drop-down"
  if key ~= nil then
    options.name = action..key
  else
    options.name = action
  end
  if style ~= nil then
    options.style = style
  end
  if caption ~= nil then
    options.caption = caption
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end

  local selected_index = 1
  if items ~= nil then
    options.items = items
    for index,item in ipairs(items) do
      if item == selected then
        selected_index = index
      end
    end
  end
  options.selected_index = 1
  if selected_index ~= nil and selected ~= nil then
    options.selected_index = selected_index
  end

  local element = nil
  local ok , err = pcall(function()
    element = parent.add(options)
  end)
  if not(ok) then Logging:error(ElementGui.classname, "addGuiDropDown", options, ok , err) end
  return element
end

-------------------------------------------------------------------------------
-- Add a selector element
--
-- @function [parent=#ElementGui] addGuiDropDownElement
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string key unique id
-- @param #string elem_type
-- @param #string selected selected element
-- @param #string style style of button
-- @param #string caption container for element
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiDropDownElement(parent, action, key, elem_type, selected, style, caption, tooltip)
  Logging:debug(ElementGui.classname, "addGuiDropDownElement", parent, action, key, selected, style, caption, tooltip)
  local options = {}
  options.type = "choose-elem-button"
  options.style = style
  options.caption = caption
  options.tooltip = tooltip

  if key ~= nil then
    options.name = action..key
  else
    options.name = action
  end

  options.elem_type = elem_type
  if elem_type ~= nil and selected ~= nil then
    options[elem_type] = selected
  end

  local element = nil
  local ok , err = pcall(function()
    element = parent.add(options)
  end)
  if not(ok) then Logging:error(ElementGui.classname, "addGuiDropDownElement", options, ok , err) end
  return element
end

-------------------------------------------------------------------------------
-- Add a button element for item
--
-- @function [parent=#ElementGui] addGuiButtonItem
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string key unique id
-- @param #string caption displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonItem(parent, action, key, caption)
  Logging:trace(ElementGui.classname, "addGuiButtonItem", parent, action, key, caption)
  return ElementGui.addGuiButton(parent, action, key, key, caption)
end

-------------------------------------------------------------------------------
-- Add a icon button element for item
--
-- @function [parent=#ElementGui] addGuiButtonIcon
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonIcon(parent, action, type, key, caption)
  Logging:trace(ElementGui.classname, "addGuiButtonIcon", parent, action, type, key, caption)
  return ElementGui.addGuiButton(parent, action, key, "helmod_button_"..type.."_"..key, caption)
end

-------------------------------------------------------------------------------
-- Add a sprite button element for item
--
-- @function [parent=#ElementGui] addGuiButtonSpriteStyled
--
-- @param #LuaGuiElement parent container for element
-- @param #string style style of button
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
  Logging:trace(ElementGui.classname, "addGuiButtonSpriteStyled", style,action, type, key, caption, tooltip)
  local options = {}
  options.type = "sprite-button"
  if key ~= nil then
    options.name = action..key
  else
    options.name = action
  end
  if tooltip ~= nil then
    options.tooltip = tooltip
  end
  options.style = style
  if type ~= nil and key ~= nil then
    options.sprite = type.."/"..key
  end

  local button = nil
  local ok , err = pcall(function()
    button = parent.add(options)
  end)
  if not ok then
    Logging:error(ElementGui.classname, "addGuiButtonSpriteStyled", action, type, key, err)
    if parent[options.name] and parent[options.name].valid then
      parent[options.name].destroy()
    end
    if caption ~= nil then
      options.caption = caption
    end

    ElementGui.addGuiButtonIcon(parent, action, type, key, caption)
  end
  return button
end

-------------------------------------------------------------------------------
-- Add a smal sprite button element for item
--
-- @function [parent=#ElementGui] addGuiButtonSpriteSm
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSpriteSm(parent, action, type, key, caption, tooltip)
  Logging:trace(ElementGui.classname, "addGuiButtonSpriteSm",action, type, key, caption, tooltip)
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_icon_sm", action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a smal sprite button element for item selection
--
-- @function [parent=#ElementGui] addGuiButtonSelectSpriteSm
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
-- @param #string color background color
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSelectSpriteSm(parent, action, type, key, caption, tooltip, color)
  Logging:trace(ElementGui.classname, "addGuiButtonSelectSpriteSm",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_sm"
  if color == "red" then style = "helmod_button_select_icon_sm_red" end
  if color == "yellow" then style = "helmod_button_select_icon_sm_yellow" end
  if color == "green" then style = "helmod_button_select_icon_sm_green" end
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_select_icon_sm", action, type, key, caption, tooltip, color)
end

-------------------------------------------------------------------------------
-- Add a smal sprite button element for item
--
-- @function [parent=#ElementGui] addGuiButtonSpriteM
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSpriteM(parent, action, type, key, caption, tooltip)
  Logging:trace(ElementGui.classname, "addGuiButtonSpriteM",action, type, key, caption, tooltip)
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_icon_m", action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a smal sprite button element for item selection
--
-- @function [parent=#ElementGui] addGuiButtonSelectSpriteM
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
-- @param #string color background color
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSelectSpriteM(parent, action, type, key, caption, tooltip, color)
  Logging:trace(ElementGui.classname, "addGuiButtonSelectSpriteM",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_m"
  if color == "red" then style = "helmod_button_select_icon_m_red" end
  if color == "yellow" then style = "helmod_button_select_icon_m_yellow" end
  if color == "green" then style = "helmod_button_select_icon_m_green" end
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_select_icon_m", action, type, key, caption, tooltip, color)
end

-------------------------------------------------------------------------------
-- Add a normal sprite button element for item
--
-- @function [parent=#ElementGui] addGuiButtonSprite
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSprite(parent, action, type, key, caption, tooltip)
  Logging:trace(ElementGui.classname, ":addGuiButtonSprite",action, type, key, caption, tooltip)
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_icon", action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a sprite button element for item selection
--
-- @function [parent=#ElementGui] addGuiButtonSelectSprite
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
-- @param #string color background color
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSelectSprite(parent, action, type, key, caption, tooltip, color)
  Logging:trace(ElementGui.classname, "addGuiButtonSelectSprite",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon"
  if color == "red" then style = "helmod_button_select_icon_red" end
  if color == "yellow" then style = "helmod_button_select_icon_yellow" end
  if color == "green" then style = "helmod_button_select_icon_green" end
  return ElementGui.addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a big sprite button element for item
--
-- @function [parent=#ElementGui] addGuiButtonSpriteXxl
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSpriteXxl(parent, action, type, key, caption, tooltip)
  Logging:trace(ElementGui.classname, "addGuiButtonSpriteXxl",action, type, key, caption, tooltip)
  return ElementGui.addGuiButtonSpriteStyled(parent, "helmod_button_icon_xxl", action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a big sprite button element for item selection
--
-- @function [parent=#ElementGui] addGuiButtonSelectSpriteXxl
--
-- @param #LuaGuiElement parent container for element
-- @param #string action action name
-- @param #string type type of item
-- @param #string key name of item
-- @param #string caption displayed text
-- @param #string tooltip displayed text
-- @param #string color background color
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiButtonSelectSpriteXxl(parent, action, type, key, caption, tooltip, color)
  Logging:trace(ElementGui.classname, "addGuiButtonSelectSpriteXxl",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_xxl"
  if color == "red" then style = "helmod_button_select_icon_xxl_red" end
  if color == "yellow" then style = "helmod_button_select_icon_xxl_yellow" end
  if color == "green" then style = "helmod_button_select_icon_xxl_green" end
  return ElementGui.addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
end

-------------------------------------------------------------------------------
-- Add a flow container
--
-- @function [parent=#ElementGui] addGuiFlowH
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiFlow(parent, key, style)
  Logging:trace(ElementGui.classname, "addGuiFlow()", key, style)
  local options = {}
  options.type = "flow"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a horizontal flow container
--
-- @function [parent=#ElementGui] addGuiFlowH
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiFlowH(parent, key, style)
  Logging:trace(ElementGui.classname, "addGuiFlowH()", key, style)
  local options = {}
  options.type = "flow"
  --options.direction = "horizontal"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a vertical flow container
--
-- @function [parent=#ElementGui] addGuiFlowV
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiFlowV(parent, key, style)
  Logging:trace(ElementGui.classname, "addGuiFlowV()", key, style)
  local options = {}
  options.type = "flow"
  options.direction = "vertical"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a scroll pane
--
-- @function [parent=#ElementGui] addGuiScrollPane
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
-- @param #boolean policy scroll horizontally
-- @param #boolean stretchable horizontally
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiScrollPane(parent, key, style, policy)
  local options = {}
  options.type = "scroll-pane"
  options.horizontal_scroll_policy = "auto"
  if policy == true then
    options.vertical_scroll_policy = "auto"
  end
  options.horizontally_stretchable = true
  options.name = key
  options.style = style
  local scroll = parent.add(options)
  --scroll.style.horizontally_stretchable = true
  return scroll
end

-------------------------------------------------------------------------------
-- Add a horizontal frame container
--
-- @function [parent=#ElementGui] addGuiFrameH
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
-- @param #string caption displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiFrameH(parent, key, style, caption)
  local options = {}
  options.type = "frame"
  options.direction = "horizontal"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  if caption ~= nil then
    options.caption = caption
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a vertical frame container
--
-- @function [parent=#ElementGui] addGuiFrameV
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #string style style of frame
-- @param #string caption displayed text
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiFrameV(parent, key, style, caption)
  local options = {}
  options.type = "frame"
  options.direction = "vertical"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  if caption ~= nil then
    options.caption = caption
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add a grid container
--
-- @function [parent=#ElementGui] addGuiTable
--
-- @param #LuaGuiElement parent container for element
-- @param #string key unique id
-- @param #number column_count column number
-- @param #string style style of frame
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.addGuiTable(parent, key, column_count, style)
  local options = {}
  options.type = "table"
  options.column_count = column_count
  options.name = key
  if style ~= nil then
    options.style = style
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Add cell
--
-- @function [parent=#ElementGui] addCell
--
-- @param #LuaGuiElement parent container for element
-- @param #string name
-- @param #number column_count
--
function ElementGui.addCell(parent, name, column_count)
  Logging:trace(ElementGui.classname, "addCell()", name)
  local cell = ElementGui.addGuiTable(parent, "cell_"..name, column_count or 3, helmod_table_style.list)
  return cell
end

-------------------------------------------------------------------------------
-- Add cell label
--
-- @function [parent=#ElementGui] addCellLabel
--
-- @param #LuaGuiElement parent container for element
-- @param #string name
-- @param #string label
-- @param #number minimal_width
--
function ElementGui.addCellLabel(parent, name, label, minimal_width)
  Logging:trace(ElementGui.classname, "addCellLabel()", name, label, minimal_width)
  local display_cell_mod = Player.getSettings("display_cell_mod")
  local cell = ElementGui.addCell(parent, "cell_"..name)

  if display_cell_mod == "small-text"then
    -- small
    ElementGui.addGuiLabel(cell, "label1_"..name, label, "helmod_label_icon_text_sm", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45
  elseif display_cell_mod == "small-icon" then
    -- small
    ElementGui.addGuiLabel(cell, "label1_"..name, label, "helmod_label_icon_sm", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45
  elseif display_cell_mod == "by-kilo" then
    -- by-kilo
    ElementGui.addGuiLabel(cell, "label1_"..name, label, "helmod_label_row_right", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 50
  else
    -- default
    ElementGui.addGuiLabel(cell, "label1_"..name, label, "helmod_label_row_right", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 60

  end
  return cell
end

-------------------------------------------------------------------------------
-- Add cell label
--
-- @function [parent=#ElementGui] addCellLabel2
--
-- @param #LuaGuiElement parent container for element
-- @param #string name
-- @param #string label1
-- @param #string label2
-- @param #number minimal_width
--
function ElementGui.addCellLabel2(parent, name, label1, label2, minimal_width)
  Logging:trace(ElementGui.classname, "addCellLabel()", name, label1, label2, minimal_width)
  local display_cell_mod = Player.getSettings("display_cell_mod")
  local cell = ElementGui.addCell(parent, "cell_"..name, 1)

  if display_cell_mod == "small-text"then
    -- small
    ElementGui.addGuiLabel(cell, "label1_"..name, label1, "helmod_label_row2_right_sm", {"helmod_common.per-sub-block"}).style["minimal_width"] = minimal_width or 45
    ElementGui.addGuiLabel(cell, "label2_"..name, label2, "helmod_label_row2_right_sm", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45
  elseif display_cell_mod == "small-icon" then
    -- small
    ElementGui.addGuiLabel(cell, "label1_"..name, label1, "helmod_label_row2_right_sm", {"helmod_common.per-sub-block"}).style["minimal_width"] = minimal_width or 45
    ElementGui.addGuiLabel(cell, "label2_"..name, label2, "helmod_label_row2_right_sm", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45
  elseif display_cell_mod == "by-kilo" then
    -- by-kilo
    ElementGui.addGuiLabel(cell, "label1_"..name, label1, "helmod_label_row2_right", {"helmod_common.per-sub-block"}).style["minimal_width"] = minimal_width or 45
    ElementGui.addGuiLabel(cell, "label2_"..name, label2, "helmod_label_row2_right", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45
  else
    -- default
    ElementGui.addGuiLabel(cell, "label1_"..name, label1, "helmod_label_row2_right", {"helmod_common.per-sub-block"}).style["minimal_width"] = minimal_width or 45
    ElementGui.addGuiLabel(cell, "label2_"..name, label2, "helmod_label_row2_right", {"helmod_common.total"}).style["minimal_width"] = minimal_width or 45

  end
end

-------------------------------------------------------------------------------
-- Add icon in cell element
--
-- @function [parent=#ElementGui] addCellIcon
--
-- @param #LuaGuiElement parent container for element
-- @param #table element production block
-- @param #string action
-- @param #boolean select
-- @param #string tooltip_name
-- @param #string color
--
function ElementGui.addCellIcon(parent, element, action, select, tooltip_name, color)
  Logging:trace(ElementGui.classname, "addCellIcon()", element, action, select, tooltip_name, color)
  local display_cell_mod = Player.getSettings("display_cell_mod")
  -- ingredient = {type="item", name="steel-plate", amount=8}
  if display_cell_mod == "small-icon" then
    if parent ~= nil and select == true then
      ElementGui.addGuiButtonSelectSpriteM(parent, action, Player.getIconType(element), element.name, "X"..Product.getElementAmount(element), ({tooltip_name, Player.getLocalisedName(element)}), color)
    else
      ElementGui.addGuiButtonSpriteM(parent, action, Player.getIconType(element), element.name, "X"..Product.getElementAmount(element), ({tooltip_name, Player.getLocalisedName(element)}), color)
    end
  else
    if parent ~= nil and select == true then
      ElementGui.addGuiButtonSelectSprite(parent, action, Player.getIconType(element), element.name, "X"..Product.getElementAmount(element), ({tooltip_name, Player.getLocalisedName(element)}), color)
    else
      ElementGui.addGuiButtonSprite(parent, action, Player.getIconType(element), element.name, "X"..Product.getElementAmount(element), ({tooltip_name, Player.getLocalisedName(element)}), color)
    end
  end
end

-------------------------------------------------------------------------------
-- Add cell element
--
-- @function [parent=#ElementGui] addCellElement
--
-- @param #LuaGuiElement parent container for element
-- @param #table element production block
-- @param #string action
-- @param #boolean select true if select button
-- @param #string tooltip_name tooltip name
-- @param #string color button color
--
function ElementGui.addCellElement(parent, element, action, select, tooltip_name, color)
  Logging:trace(ElementGui.classname, "addCellElement():", element, action, select, tooltip_name, color)
  local display_cell_mod = Player.getSettings("display_cell_mod")
  -- ingredient = {type="item", name="steel-plate", amount=8}
  local cell = nil
  local button = nil
  local cell = ElementGui.addCell(parent, element.name)
  if display_cell_mod == "by-kilo" then
    -- by-kilo
    if element.limit_count ~= nil then
      ElementGui.addCellLabel2(cell, element.name, Format.formatNumberKilo(element.limit_count), Format.formatNumberKilo(element.count))
    else
      ElementGui.addCellLabel(cell, element.name, Format.formatNumberKilo(element.count))
    end
  else
    if element.limit_count ~= nil then
      ElementGui.addCellLabel2(cell, element.name, Format.formatNumberElement(element.limit_count), Format.formatNumberElement(element.count))
    else
      ElementGui.addCellLabel(cell, element.name, Format.formatNumberElement(element.count))
    end
  end

  ElementGui.addCellIcon(cell, element, action, select, tooltip_name, color)
  ElementGui.addCellCargoInfo(cell, element)
  return cell
end

-------------------------------------------------------------------------------
-- Add cell element
--
-- @function [parent=#ElementGui] addCellCargoInfo
--
-- @param #LuaGuiElement parent container for element
-- @param #table element production block
--
function ElementGui.addCellCargoInfo(parent, element)
  Logging:debug(ElementGui.classname, "addCellCargoInfo():", element)
  local globalGui = Player.getGlobalGui()
  Product.load(element)
  if Product.native() ~= nil then
    local table_cargo = ElementGui.addGuiTable(parent,"element_cargo", 1, "helmod_beacon_modules")
    if element.type == 0 or element.type == "item" then
      local container_solid = globalGui.container_solid or "steel-chest"
      local vehicle_solid = globalGui.vehicle_solid or "cargo-wagon"
      ElementGui.addGuiButtonSpriteSm(table_cargo, container_solid, "item", container_solid, nil, ElementGui.getTooltipProduct(element, container_solid))
      ElementGui.addGuiButtonSpriteSm(table_cargo, vehicle_solid, "item", vehicle_solid, nil, ElementGui.getTooltipProduct(element, vehicle_solid))
    end

    if element.type == 1 or element.type == "fluid" then
      local container_fluid = globalGui.container_fluid or "storage-tank"
      local vehicle_fluid = globalGui.wagon_fluid or "fluid-wagon"
      ElementGui.addGuiButtonSpriteSm(table_cargo, container_fluid, "item", container_fluid, nil, ElementGui.getTooltipProduct(element, container_fluid))
      ElementGui.addGuiButtonSpriteSm(table_cargo, vehicle_fluid, "item", vehicle_fluid, nil, ElementGui.getTooltipProduct(element, vehicle_fluid))
    end
  end
end

-------------------------------------------------------------------------------
-- Get tooltip for product
--
-- @function [parent=#ElementGui] getTooltipProduct
--
-- @param #lua_product element
-- @param #string container name
--
-- @return #table
--
function ElementGui.getTooltipProduct(element, container)
  Logging:debug(ElementGui.classname, "getTooltipProduct", element, container)
  local tooltip = {"tooltip.cargo-info", EntityPrototype.load(container).getLocalisedName()}
  local total_tooltip = {"tooltip.cargo-info-element", {"helmod_common.total"}, Format.formatNumberElement(Product.countContainer(element.count, container))}
  if element.limit_count ~= nil then
    local limit_tooltip = {"tooltip.cargo-info-element", {"helmod_common.per-sub-block"}, Format.formatNumberElement(Product.countContainer(element.limit_count, container))}
    table.insert(tooltip, limit_tooltip)
    table.insert(tooltip, total_tooltip)
  else
    table.insert(tooltip, total_tooltip)
    table.insert(tooltip, "")
  end
  return tooltip
end

-------------------------------------------------------------------------------
-- Get tooltip for module
--
-- @function [parent=#ElementGui] getTooltipModule
--
-- @param #string module_name
--
-- @return #table
--
function ElementGui.getTooltipModule(module_name)
  Logging:debug(ElementGui.classname, "getTooltipModule", module_name)
  local tooltip = nil
  if module_name == nil then return nil end
  local module = ItemPrototype.load(module_name).native()
  if module ~= nil then
    local consumption = Format.formatPercent(Player.getModuleBonus(module.name, "consumption"))
    local speed = Format.formatPercent(Player.getModuleBonus(module.name, "speed"))
    local productivity = Format.formatPercent(Player.getModuleBonus(module.name, "productivity"))
    local pollution = Format.formatPercent(Player.getModuleBonus(module.name, "pollution"))
    tooltip = {"tooltip.module-description" , ItemPrototype.getLocalisedName(), consumption, speed, productivity, pollution}
  end
  return tooltip
end

-------------------------------------------------------------------------------
-- Get tooltip for recipe
--
-- @function [parent=#ElementGui] getTooltipRecipe
--
-- @param #table prototype
--
-- @return #table
--

local cache_tooltip_recipe = {}

function ElementGui.getTooltipRecipe(prototype)
  Logging:trace(ElementGui.classname, "getTooltipRecipe", prototype)
  RecipePrototype.load(prototype)
  if RecipePrototype.native() == nil then return nil end
  local prototype_type = prototype.type or "other"
  if cache_tooltip_recipe[prototype_type] ~= nil and cache_tooltip_recipe[prototype_type][prototype.name] ~= nil and cache_tooltip_recipe[prototype_type][prototype.name].enabled == RecipePrototype.getEnabled() then
    Logging:debug(ElementGui.classname, "use cache", prototype.name)
    return cache_tooltip_recipe[prototype_type][prototype.name].value
  end
  -- initalize tooltip
  local tooltip = {"tooltip.recipe-info"}
  -- insert __1__ value
  table.insert(tooltip, RecipePrototype.getLocalisedName())

  -- insert __2__ value
  if RecipePrototype.getCategory() == "crafting-handonly" then
    table.insert(tooltip, {"tooltip.recipe-by-hand"})
  elseif RecipePrototype.getEnabled() == false then
    table.insert(tooltip, {"tooltip.recipe-unsearched"})
  else
    table.insert(tooltip, "")
  end

  -- insert __3__ value
  local lastTooltip = tooltip
  for _,element in pairs(RecipePrototype.getProducts()) do
    local product = Product.load(element)
    local count = Product.getElementAmount(element)
    local name = Product.getLocalisedName()
    local currentTooltip = {"tooltip.recipe-info-element", count, name}
    -- insert le dernier tooltip dans le precedent
    table.insert(lastTooltip, currentTooltip)
    lastTooltip = currentTooltip
  end
  -- finalise la derniere valeur
  table.insert(lastTooltip, "")

  -- insert __4__ value
  local lastTooltip = tooltip
  for _,element in pairs(RecipePrototype.getIngredients(prototype.factory)) do
    local product = Product.load(element)
    local count = Product.getElementAmount(element)
    local name = Product.getLocalisedName()
    local currentTooltip = {"tooltip.recipe-info-element", count, name}
    -- insert le dernier tooltip dans le precedent
    table.insert(lastTooltip, currentTooltip)
    lastTooltip = currentTooltip
  end
  -- finalise la derniere valeur
  table.insert(lastTooltip, "")
  if cache_tooltip_recipe[prototype_type] == nil then cache_tooltip_recipe[prototype_type] = {} end
  Logging:debug(ElementGui.classname, "build cache", prototype.name)
  cache_tooltip_recipe[prototype_type][prototype.name] = {}
  cache_tooltip_recipe[prototype_type][prototype.name].value = tooltip
  cache_tooltip_recipe[prototype_type][prototype.name].enabled = RecipePrototype.getEnabled()
  return tooltip
end

-------------------------------------------------------------------------------
-- Get display sizes
--
-- @function [parent=#ElementGui] getDisplaySizes
--
-- return
--
function ElementGui.getDisplaySizes()
  Logging:trace(ElementGui.classname, "getDisplaySizes()")
  local display_size = Player.getSettings("display_size")
  local display_size_free = Player.getSettings("display_size_free")
  if string.match(display_size_free, "([0-9]*x[0-9]*)", 1) then
    display_size = display_size_free
  end
  local string_width = string.match(display_size,"([0-9]*)x[0-9]*",1)
  local string_height = string.match(display_size,"[0-9]*x([0-9]*)",1)
  local width_main = 1920
  local height_main = 1680

  if string_width ~= nil then width_main = tonumber(string_width) end
  if string_height ~= nil then height_main = tonumber(string_height) end
  return width_main, height_main
end
-------------------------------------------------------------------------------
-- Get style sizes
--
-- @function [parent=#ElementGui] getStyleSizes
--
function ElementGui.getStyleSizes()
  Logging:trace(ElementGui.classname, "getStyleSizes()")
  local width, height = ElementGui.getDisplaySizes()
  
  local style_sizes = {}
  if type(width) == "number" and  type(height) == "number" then
    local width_recipe_column_1 = 220
    local width_recipe_column_2 = 220
    local width_dialog = width_recipe_column_1 + width_recipe_column_2 + 70
    local width_scroll = 8
    local width_block_info = 290
    local height_block_header = 450
    local height_selector_header = 230
    local height_row_element = 110

    local ratio_h = 0.80
    local ratio_v = 0.75
    local width_main = math.ceil(width*ratio_h)
    local height_main = math.ceil(height*ratio_v)
    
    style_sizes.main = {}
    style_sizes.main.width = width_main
    style_sizes.main.height = height_main

    style_sizes.dialog = {}
    style_sizes.dialog.width = width_dialog

    style_sizes.data = {}
    style_sizes.data.width = width_main - width_dialog

    style_sizes.power = {}
    style_sizes.power.height = 200

    style_sizes.data_section = {}
    style_sizes.data_section.width = width_main - width_dialog - 4*width_scroll

    style_sizes.recipe_selector = {}
    style_sizes.recipe_selector.height = height_main - height_selector_header

    style_sizes.recipe_product = {}
    style_sizes.recipe_product.height = 77

    style_sizes.recipe_tab = {}
    style_sizes.recipe_tab.height = 32

    style_sizes.recipe_module = {}
    style_sizes.recipe_module.width = width_recipe_column_2 - width_scroll*2
    style_sizes.recipe_module.height = 147

    style_sizes.recipe_edition_1 = {}
    style_sizes.recipe_edition_1.width = width_recipe_column_1
    style_sizes.recipe_edition_1.height = 250

    style_sizes.recipe_edition_2 = {}
    style_sizes.recipe_edition_2.width = width_recipe_column_2

    style_sizes.scroll_help = {}
    style_sizes.scroll_help.width = width_dialog - width_scroll - 50
    style_sizes.scroll_help.height = height_main - 200

    -- block
    style_sizes.scroll_block = {}
    style_sizes.scroll_block.height = (height_row_element) * 2 - 34

    -- input/output table
    style_sizes.block_element = {}
    style_sizes.block_element.height = height_row_element

    -- input/output table
    style_sizes.scroll_block_element = {}
    style_sizes.scroll_block_element.height = height_row_element - 34

    -- recipe table
    style_sizes.scroll_block_list = {}
    style_sizes.scroll_block_list.minimal_width = width_main - width_dialog - width_scroll
    style_sizes.scroll_block_list.maximal_width = width_main - width_dialog - width_scroll

    if Player.getSettings("debug", true) ~= "none" then
      style_sizes.scroll_block_list.minimal_height = height_main - height_block_header - 200
      style_sizes.scroll_block_list.maximal_height = height_main - height_block_header - 200
    else
      style_sizes.scroll_block_list.minimal_height = height_main - height_block_header
      style_sizes.scroll_block_list.maximal_height = height_main - height_block_header
    end


  end
  Logging:trace(ElementGui.classname, "getStyleSizes(player)", style_sizes)
  return style_sizes
end

-------------------------------------------------------------------------------
-- Set style
--
-- @function [parent=#ElementGui] setStyle
--
-- @param #LuaGuiElement element
-- @param #string style
-- @param #string property
--
function ElementGui.setStyle(element, style, property)
  Logging:trace(ElementGui.classname, "setStyle(player, element, style, property)", element, style, property)
  local style_sizes = ElementGui.getStyleSizes()
  if element.style ~= nil and style_sizes[style] ~= nil and style_sizes[style][property] ~= nil then
    Logging:trace(ElementGui.classname, "setStyle(player, element, style, property)", style_sizes[style][property])
    element.style[property] = style_sizes[style][property]
  end
end

return ElementGui
