-------------------------------------------------------------------------------
-- Classe to help to define Gui for Factorio
--
-- @module ElementGui
ElementGui = setclass("HMElementGui")

-------------------------------------------------------------------------------
-- Get the number of textfield input
--
-- @function [parent=#ElementGui] getInputNumber
--
-- @param #LuaGuiElement element textfield input
--
-- @return #number number of textfield input
--
function ElementGui.methods:getInputNumber(element)
  Logging:trace(self:classname(), "getInputNumber", element)
  local count = 0
  if element ~= nil then
    local tempCount=tonumber(element.text)
    if type(tempCount) == "number" then count = tempCount end
  end
  return count
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
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.methods:addGuiLabel(parent, key, caption, style, tooltip, single_line)
  Logging:trace(self:classname(), "addGuiLabel", parent, key, caption, style, tooltip, single_line)
  local options = {}
  options.type = "label"
  options.name = key
  options.caption = caption
  if single_line ~= nil then
    options.single_line = single_line
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
function ElementGui.methods:addGuiText(parent, key, text, style, tooltip)
  Logging:trace(self:classname(), "addGuiText", parent, key, text, style, tooltip)
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
function ElementGui.methods:addGuiButton(parent, action, key, style, caption, tooltip)
  Logging:trace(self:classname(), "addGuiButton", parent, action, key, style, caption, tooltip)
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
    Logging:trace(self:classname(), "addGuiButton", action, key, style, err)
    options.style = "helmod_button_default"
    if (type(caption) == "boolean") then
      Logging:error(self:classname(), "addGuiButton - caption is a boolean")
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
function ElementGui.methods:addGuiRadioButton(parent, key, state, style, tooltip)
  Logging:trace(self:classname(), "addGuiRadioButton", parent, key, state, style, tooltip)
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
function ElementGui.methods:addGuiCheckbox(parent, key, state, style, tooltip)
  Logging:trace(self:classname(), "addGuiCheckbox", parent, key, state, style, tooltip)
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
function ElementGui.methods:addGuiDropDown(parent, action, key, items, selected, style, caption, tooltip)
  Logging:debug(self:classname(), "addGuiDropDown", parent, action, key, items, selected, style, caption, tooltip)
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
  if not(ok) then Logging:error(self:classname(), "addGuiDropDown", options, ok , err) end
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
function ElementGui.methods:addGuiButtonItem(parent, action, key, caption)
  Logging:trace(self:classname(), "addGuiButtonItem", parent, action, key, caption)
  return self:addGuiButton(parent, action, key, key, caption)
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
function ElementGui.methods:addGuiButtonIcon(parent, action, type, key, caption)
  Logging:trace(self:classname(), "addGuiButtonIcon", parent, action, type, key, caption)
  return self:addGuiButton(parent, action, key, "helmod_button_"..type.."_"..key, caption)
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
function ElementGui.methods:addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
  Logging:trace(self:classname(), "addGuiButtonSpriteStyled", style,action, type, key, caption, tooltip)
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
  options.sprite = type.."/"..key

  local button = nil
  local ok , err = pcall(function()
    button = parent.add(options)
  end)
  if not ok then
    Logging:error(self:classname(), "addGuiButtonSpriteStyled", action, type, key, err)
    if parent[options.name] and parent[options.name].valid then
      parent[options.name].destroy()
    end
    if caption ~= nil then
      options.caption = caption
    end

    self:addGuiButtonIcon(parent, action, type, key, caption)
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
function ElementGui.methods:addGuiButtonSpriteSm(parent, action, type, key, caption, tooltip)
  Logging:trace(self:classname(), "addGuiButtonSpriteSm",action, type, key, caption, tooltip)
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_icon_sm", action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiButtonSelectSpriteSm(parent, action, type, key, caption, tooltip, color)
  Logging:trace(self:classname(), "addGuiButtonSelectSpriteSm",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_sm"
  if color == "red" then style = "helmod_button_select_icon_sm_red" end
  if color == "yellow" then style = "helmod_button_select_icon_sm_yellow" end
  if color == "green" then style = "helmod_button_select_icon_sm_green" end
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_select_icon_sm", action, type, key, caption, tooltip, color)
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
function ElementGui.methods:addGuiButtonSpriteM(parent, action, type, key, caption, tooltip)
  Logging:trace(self:classname(), "addGuiButtonSpriteM",action, type, key, caption, tooltip)
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_icon_m", action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiButtonSelectSpriteM(parent, action, type, key, caption, tooltip, color)
  Logging:trace(self:classname(), "addGuiButtonSelectSpriteM",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_m"
  if color == "red" then style = "helmod_button_select_icon_m_red" end
  if color == "yellow" then style = "helmod_button_select_icon_m_yellow" end
  if color == "green" then style = "helmod_button_select_icon_m_green" end
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_select_icon_m", action, type, key, caption, tooltip, color)
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
function ElementGui.methods:addGuiButtonSprite(parent, action, type, key, caption, tooltip)
  Logging:trace(self:classname(), ":addGuiButtonSprite",action, type, key, caption, tooltip)
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_icon", action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiButtonSelectSprite(parent, action, type, key, caption, tooltip, color)
  Logging:trace(self:classname(), "addGuiButtonSelectSprite",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon"
  if color == "red" then style = "helmod_button_select_icon_red" end
  if color == "yellow" then style = "helmod_button_select_icon_yellow" end
  if color == "green" then style = "helmod_button_select_icon_green" end
  return self:addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiButtonSpriteXxl(parent, action, type, key, caption, tooltip)
  Logging:trace(self:classname(), "addGuiButtonSpriteXxl",action, type, key, caption, tooltip)
  return self:addGuiButtonSpriteStyled(parent, "helmod_button_icon_xxl", action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiButtonSelectSpriteXxl(parent, action, type, key, caption, tooltip, color)
  Logging:trace(self:classname(), "addGuiButtonSelectSpriteXxl",action, type, key, caption, tooltip, color)
  local style = "helmod_button_select_icon_xxl"
  if color == "red" then style = "helmod_button_select_icon_xxl_red" end
  if color == "yellow" then style = "helmod_button_select_icon_xxl_yellow" end
  if color == "green" then style = "helmod_button_select_icon_xxl_green" end
  return self:addGuiButtonSpriteStyled(parent, style, action, type, key, caption, tooltip)
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
function ElementGui.methods:addGuiFlowH(parent, key, style)
  local options = {}
  options.type = "flow"
  options.direction = "horizontal"
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
function ElementGui.methods:addGuiFlowV(parent, key, style)
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
-- @param #string horizontal horizontal scroll policy
-- @param #string vertical vertical scroll policy
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.methods:addGuiScrollPane(parent, key, style, horizontal, vertical)
  local options = {}
  options.type = "scroll-pane"
  options.horizontal_scroll_policy = "auto"
  options.vertical_scroll_policy = "auto"
  options.name = key
  if style ~= nil then
    options.style = style
  end
  if horizontal ~= nil then
    options.horizontal_scroll_policy = horizontal
  end
  if vertical ~= nil then
    options.vertical_scroll_policy = vertical
  end
  return parent.add(options)
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
function ElementGui.methods:addGuiFrameH(parent, key, style, caption)
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
function ElementGui.methods:addGuiFrameV(parent, key, style, caption)
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
-- @param #number colspan column number
-- @param #string style style of frame
--
-- @return #LuaGuiElement the LuaGuiElement added
--
function ElementGui.methods:addGuiTable(parent, key, colspan, style)
  local options = {}
  options.type = "table"
  options.colspan = colspan
  options.name = key
  if style ~= nil then
    options.style = style
  end
  return parent.add(options)
end

-------------------------------------------------------------------------------
-- Format the number
--
-- @function [parent=#ElementGui] formatNumber
--
-- @param #number n the number
-- @param #number decimal
--
-- @return #number the formated number
--
function ElementGui.methods:formatNumber(n, decimal)
  local separator = " "
  if n == nil then return 0 end
  --return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1 "):gsub(" (%-?)$","%1"):reverse()
  if decimal == nil then decimal = 2 end
  if n > 100 and decimal > 1 then decimal = 1 end
  if n > 1000 then decimal = 0 end
  local left,num,right = string.match(self:round(n, decimal),'^([^%d]*%d)(%d*)(.-)$')
  if num == nil then return 0 end
  if left == nil then left = "" end
  if right == nil then right = "" end
  return left..(num:reverse():gsub('(%d%d%d)','%1'..separator):reverse())..right
end

-------------------------------------------------------------------------------
-- Format the number
--
-- @see http://lua-users.org/wiki/FormattingNumbers
--
-- @function [parent=#ElementGui] round
--
-- @param #number val the number
-- @param #number decimal the number
--
-- @return #number the formated number
--
function ElementGui.methods:round(val, decimal)
  if (decimal) then
    return math.ceil( (val * 10^decimal)) / (10^decimal)
  else
    return math.ceil(val)
  end
end
-------------------------------------------------------------------------------
-- Format the number
--
-- @function [parent=#ElementGui] formatNumberKilo
--
-- @param #number n the number
-- @param #string suffix
--
-- @return #number the formated number
--
function ElementGui.methods:formatNumberKilo(value, suffix)
  if suffix == nil then suffix = "" end
  if value == nil then
    return 0
  elseif value < 1000 then
    return self:formatNumber(value).." "..suffix
  elseif (value / 1000) < 1000 then
    return math.ceil(value*10 / 1000)/10 .. " k" ..suffix
  elseif (value / (1000*1000)) < 1000 then
    return math.ceil(value*10 / (1000*1000))/10 .. " M" ..suffix
  else
    return math.ceil(value*10 / (1000*1000*1000))/10 .. " G" ..suffix
  end
end

-------------------------------------------------------------------------------
-- Format the number
--
-- @function [parent=#ElementGui] formatRound
--
-- @param #number n the number
--
-- @return #number the formated number
--
function ElementGui.methods:formatRound(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end


-------------------------------------------------------------------------------
-- Format the number
--
-- @function [parent=#ElementGui] formatPercent
--
-- @param #number n the number
--
-- @return #number the formated number
--
function ElementGui.methods:formatPercent(num)
  local mult = 10^3
  return math.floor(num * mult + 0.5) / 10
end
