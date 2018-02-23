require("defines")
local gui_names = color_picker_defines.names.gui
local style_names = color_picker_defines.names.style
local setting_names = color_picker_defines.names.settings
local gui_name_match_patterns = color_picker_defines.match_patterns.gui


-- Message about incorrect color picker container is provided.
local incorrect_color_picker_message = "Make sure the correct color picker container is provided."
-- Messages about incorrect hex color is provided.
local incorrect_hex_color_message_with_alpha = "Make sure the provided hexadecimal color is valid (\"00000000\" - \"FFFFFFFF\")."
local incorrect_hex_color_message_without_alpha = "Make sure the provided hexadecimal color is valid (\"000000\" - \"FFFFFF\")."

-- ID of the on_color_changed custom event.
local on_color_changed_event_id;
-- ID of the on_ok_button_clicked custom event.
local on_ok_button_clicked_event_id;

-- Returns the ID of the on_color_changed custom event. If it does not exist, it will be generated before returned.
local function get_or_load_on_color_changed_event_id()
	if on_color_changed_event_id == nil then
		on_color_changed_event_id = script.generate_event_name()
	end
	return on_color_changed_event_id
end
-- Returns the ID of the on_ok_clicked custom event. If it does not exist, it will be generated before returned.
local function get_or_load_on_ok_button_clicked_event_id()
	if on_ok_button_clicked_event_id == nil then
		on_ok_button_clicked_event_id = script.generate_event_name()
	end
	return on_ok_button_clicked_event_id
end

-- Raises the given event with the given table of parameters.
local function raise_event(which_event, params)
	table.insert(params,
	{
		tick = game.tick,
		name = which_event
	})
	script.raise_event(which_event, params)
end

----------------------------------------------------------------------------------------------

-- Returns the tooltip string about the given RGB or RGBA (0 - 255).
local function get_tooltip_about_color_255(r255, g255, b255, a255)
	if a255 then
		return "(" .. r255 .. ", " .. g255 .. ", " .. b255 .. ", " .. a255 ..")"
	end
	return "(" .. r255 .. ", " .. g255 .. ", " .. b255 .. ")"
end

-- Converts the given color (0 - 1) to RGB or RGBA (0 - 255)
local function convert_color_to_color_255(color)
	local r255 = math.floor((color.r or 0) * 255)
	local g255 = math.floor((color.g or 0) * 255)
	local b255 = math.floor((color.b or 0) * 255)
	local a255 = nil
	if color.a then
		a255 = math.floor(color.a * 255)
	end
	return r255, g255, b255, a255
end

-- Converts the given RGB or RGBA (0 - 255) to color (0 - 1)
local function convert_color_255_to_color(r255, g255, b255, a255)
	if a255 then
		return { r = r255 / 255, g = g255 / 255, b = b255 / 255, a = a255 / 255 }
	end
	return { r = r255 / 255, g = g255 / 255, b = b255 / 255 }
end

-- Converts the given 0-255 value to 2-character hex.
local function convert_255_to_hex(value)
	-- Reference: https://gist.github.com/marceloCodget/3862929
	local hex = ""
	while (value > 0) do
		local index = math.fmod(value, 16) + 1
		value = math.floor(value / 16)
		hex = string.sub('0123456789ABCDEF', index, index) .. hex
	end
	if string.len(hex) == 0 then
		return "00"
	end
	if string.len(hex) == 1 then
		return "0" .. hex
	end
	return hex
end

-- Converts the given RGB or RGBA (0 - 255) to hex color.
local function convert_color_255_to_hex(r255, g255, b255, a255)
	local result = convert_255_to_hex(r255) .. convert_255_to_hex(g255) .. convert_255_to_hex(b255)
	if a255 then
		result = result .. convert_255_to_hex(a255)
	end
	return result
end

-- Converts the given hexadecimal color to RGB or RGBA (0 - 255)
local function convert_hex_to_color_255(hex)
	local r255 = tonumber("0x"..string.sub(hex, 1, 2))
	local g255 = tonumber("0x"..string.sub(hex, 3, 4))
	local b255 = tonumber("0x"..string.sub(hex, 5, 6))
	local a255 = nil
	if string.len(hex) > 6 then
		a255 = tonumber("0x"..string.sub(hex, 7, 8))
	end
	return r255, g255, b255, a255
end

----------------------------------------------------------------------------------------------

-- Raises the on_color_changed event with the given event data for (0 - 1) color.
local function raise_on_color_changed_event(container, color, player_index)
	local r255, g255, b255, a255 = convert_color_to_color_255(color)
	local hex = convert_color_255_to_hex(r255, g255, b255, a255)
	raise_event(on_color_changed_event_id,
	{
		container = container,
		color = color,
		hex_color = hex,
		player_index = player_index
	})
end

-- Raises the on_color_changed event with the given event data for (0 - 255) color channels.
local function raise_on_color_changed_event_255(container, r255, g255, b255, a255, player_index)
	raise_on_color_changed_event(container, convert_color_255_to_color(r255, g255, b255, a255), player_index)
end

----------------------------------------------------------------------------------------------

-- Returns the GUI element name of the RGB color palette button for given color (0 - 255).
local function get_color_palette_button_name(r, g, b)
	return string.gsub(string.gsub(string.gsub(gui_names.color_palette_button, "{r}", r), "{g}", g), "{b}", b)
end

-- Returns the GUI element name of the button in a RGBA bar at given position (0 - 15).
local function get_rgba_bar_button_name(element_name_prefix, i)
	return string.gsub(element_name_prefix .. gui_names.rgba_bar_button_postfix, "{i}", i)
end

-- Returns the GUI element name of the color preset button of given index (1 - 30).
local function get_color_preset_button_name(i)
	return string.gsub(gui_names.preset_button_prefix, "{i}", i)
end

-- Returns the GUI element tooltip of the color preset button for given color name and RGB or RGBA values (0 - 255).
local function get_color_preset_button_tooltip(name, r255, g255, b255, a255)
	if name == "" then
		return {"gui.color-picker_saved-preset-button-tooltip", "", get_tooltip_about_color_255(r255, g255, b255, a255)}
	end
	return {"gui.color-picker_saved-preset-button-tooltip", name, " " .. get_tooltip_about_color_255(r255, g255, b255, a255)}
end

-- Sets the contents of the given RGBA bar according to the given color (0 - 255).
local function set_rgba_bar_contents(bar_container, element_name_prefix, color_channel_value)
	local button_table = bar_container[element_name_prefix .. gui_names.rgba_bar_button_table_postfix]
	for i = 0, 15, 1 do
		local button = button_table[get_rgba_bar_button_name(element_name_prefix, i)]
		local value = i * 255 / 15
		if value <= color_channel_value then
			button.style = style_names.rgba_bar_button_on_style
		else
			button.style = style_names.rgba_bar_button_off_style
		end
	end
	
	local textfield = bar_container[element_name_prefix .. gui_names.rgba_bar_textfield_postfix]
	textfield.text = color_channel_value
end

-- Returns whether there is an alpha bar in the color picker with the given frame, such that alpha is supported in that color picker.
local function has_alpha_bar(color_picker_frame)
	return color_picker_frame[gui_names.alpha_bar_container] ~= nil
end

-- Sets the current color (0 - 255) represented by the color picker with the given frame.
local function set_color_255(color_picker_frame, r255, g255, b255, a255)
	-- Set the RGBA bars.
	local r_bar = color_picker_frame[gui_names.red_bar_container]
	set_rgba_bar_contents(r_bar, gui_names.red_bar_contents_prefix, r255)
		
	local g_bar = color_picker_frame[gui_names.green_bar_container]
	set_rgba_bar_contents(g_bar, gui_names.green_bar_contents_prefix, g255)
	
	local b_bar = color_picker_frame[gui_names.blue_bar_container]
	set_rgba_bar_contents(b_bar, gui_names.blue_bar_contents_prefix, b255)
	
	local a_bar = color_picker_frame[gui_names.alpha_bar_container]
	if a_bar then
		a255 = a255 or 255
		set_rgba_bar_contents(a_bar, gui_names.alpha_bar_contents_prefix, a255)
	else
		a255 = nil
	end
	
	-- Set the hex value textfield.
	local hex_container = color_picker_frame[gui_names.hex_container]
	if hex_container then
		local hex_textfield = hex_container[gui_names.hex_value_textfield]
		if hex_textfield then
			hex_textfield.text = convert_color_255_to_hex(r255, g255, b255, a255)
			hex_textfield.style = style_names.hex_value_valid_textfield_style
		end
	end
	
	-- Update the add-to-preset button.
	local font_color = convert_color_255_to_color(r255, g255, b255, a255)
	local opaque_font_color = {r = font_color.r, g = font_color.g, b = font_color.b, a = 1}
	local presets_and_result_container = color_picker_frame[gui_names.presets_and_result_container]
	local presets_container = presets_and_result_container[gui_names.presets_container]
	local presets_table = presets_container[gui_names.presets_table]
	local add_to_preset_button = presets_table[gui_names.add_to_preset_button]
	if add_to_preset_button then
    	local add_to_preset_button_style = add_to_preset_button.style
    	add_to_preset_button_style.font_color = font_color
    	add_to_preset_button_style.hovered_font_color = opaque_font_color
    	add_to_preset_button_style.clicked_font_color = opaque_font_color
    	add_to_preset_button_style.disabled_font_color = font_color
	end
	
	-- Update the result frame.
	local result_container = presets_and_result_container[gui_names.result_container]
	local result_frame = result_container[gui_names.result_frame]
	local result_frame_label_container = result_frame[gui_names.result_frame_label_container]
	if result_frame_label_container then
		local result_frame_label_1 = result_frame_label_container[gui_names.result_frame_label_1]
		local result_frame_label_2 = result_frame_label_container[gui_names.result_frame_label_2]
		result_frame_label_1.style.font_color = font_color
		result_frame_label_2.style.font_color = opaque_font_color
	else
    	-- Legacy, for old color pickers that were opened before v0.4.2.
    	result_frame.style.font_color = font_color
	end
end

-- Sets the current color (0 - 1) represented by the color picker of the given container.
local function set_color(color_picker_container, color)
	local frame = color_picker_container[gui_names.frame]
	assert(frame, incorrect_color_picker_message)
	
	local r255, g255, b255, a255 = convert_color_to_color_255(color)
	
	set_color_255(frame, r255, g255, b255, a255)
end

-- Returns whether the given hexadecimal color is valid.
local function is_valid_hex_color(color, support_alpha)
	if support_alpha then
    	if string.len(color) ~= 8 then
    		return false
    	end
    else
    	if string.len(color) ~= 6 then
    		return false
    	end
    end
	
	if string.match(color, "[^0-9a-fA-F]") then
		return false
	end
	
	return true
end

-- Sets the current hexadecimal color represented by the color picker of the given container.
local function set_hex_color(color_picker_container, hex_color)
	local frame = color_picker_container[gui_names.frame]
	assert(frame, incorrect_color_picker_message)
	
	local support_alpha = has_alpha_bar(frame)
	if is_valid_hex_color(hex_color, support_alpha) then
		local r255, g255, b255, a255 = convert_hex_to_color_255(hex_color)
		set_color_255(frame, r255, g255, b255, a255)
	else
		if support_alpha then
			error(incorrect_hex_color_message_with_alpha)
		else
			error(incorrect_hex_color_message_without_alpha)
		end
	end
end

-- Returns the RGB or RGBA (0 - 255) represented by the color picker of the given frame.
-- By calling this method, you already know the given frame is a valid color picker frame.
local function get_color_255_from_frame(frame)
	local r_bar_container = frame[gui_names.red_bar_container]
	local g_bar_container = frame[gui_names.green_bar_container]
	local b_bar_container = frame[gui_names.blue_bar_container]
	local a_bar_container = frame[gui_names.alpha_bar_container]
	if r_bar_container and g_bar_container and b_bar_container then
		local r_textfield = r_bar_container[gui_names.red_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix]
		local g_textfield = g_bar_container[gui_names.green_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix]
		local b_textfield = b_bar_container[gui_names.blue_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix]
		if r_textfield and g_textfield and b_textfield then
			local r255 = tonumber(r_textfield.text)
			local g255 = tonumber(g_textfield.text)
			local b255 = tonumber(b_textfield.text)
			local a255 = nil
			if a_bar_container then
				local a_textfield = a_bar_container[gui_names.alpha_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix]
				if a_textfield then
					a255 = tonumber(a_textfield.text)
				end
			end
			return r255, g255, b255, a255
		end
	end
	return nil, nil, nil, nil
end

-- Returns the RGB or RGBA (0 - 255) represented by the color picker of the given container.
local function get_color_255(color_picker_container)
	local frame = color_picker_container[gui_names.frame]
	assert(frame, incorrect_color_picker_message)
	return get_color_255_from_frame(frame)
end

-- Returns the color (0 - 1) represented by the color picker of the given container.
local function get_color(color_picker_container)
	local r255, g255, b255, a255 = get_color_255(color_picker_container)
	if r255 and g255 and b255 then
		return convert_color_255_to_color(r255, g255, b255, a255)
	end
	return nil
end

-- Returns the hex color (00000000 - FFFFFFFF, or 000000 - FFFFFF if alpha is not supported) represented by the color picker of the given container.
local function get_hex_color(color_picker_container)
	local frame = color_picker_container[gui_names.frame]
	assert(frame, incorrect_color_picker_message)
	
	local r255, g255, b255, a255 = get_color_255_from_frame(frame)
	if r255 and g255 and b255 then
		return convert_color_255_to_hex(r255, g255, b255, a255)
	end
	return nil
end

----------------------------------------------------------------------------------------------

-- Creates the contents of the RGBA color bar in the given container.
local function create_rgba_bar_contents(bar_container, element_name_prefix, label_caption)
	local label_container = bar_container.add
	{
		type = "table",
		name = element_name_prefix .. gui_names.rgba_bar_label_container_postfix,
		style = style_names.rgba_label_container_table_style,
		column_count = 2
	}
	label_container.add
	{
		type = "label",
		name = element_name_prefix .. gui_names.rgba_bar_label1_postfix,
		caption = label_caption
	}
	label_container.add
	{
		type = "label",
		name = element_name_prefix .. gui_names.rgba_bar_label2_postfix,
		caption = ":"
	}
	
	local button_table = bar_container.add
	{
		type = "table",
		name = element_name_prefix .. gui_names.rgba_bar_button_table_postfix,
		style = style_names.rgba_button_table_style,
		column_count = 16
	}
	for i = 0, 15, 1 do
		button_table.add
		{
			type = "button",
			name = get_rgba_bar_button_name(element_name_prefix, i),
			style = style_names.rgba_bar_button_off_style
		}
	end
	
	bar_container.add
	{
		type = "textfield",
		name = element_name_prefix .. gui_names.rgba_bar_textfield_postfix,
		style = style_names.rgba_value_textfield_style,
		text = 0
	}
end

-- Updates the font color of the style of a color preset button according to the given color (0-1).
local function set_color_preset_button_style_font_color(button_style, color)
	local opaque_color = {r = color.r, g = color.g, b = color.b, a = 1}
	button_style.font_color = color
	button_style.hovered_font_color = opaque_color
	button_style.clicked_font_color = opaque_color
	button_style.disabled_font_color = color
end

-- Creates a preset button inside the given presets table according to the given preset data.
-- If a new preset is added by the user, please call add_preset_button instead.
-- Note that preset data use 255 color.
local function create_preset_button(presets_table, preset_data, button_index)
	local name = preset_data.name
	local color = preset_data.color
	local button = presets_table.add
	{
		type = "button",
		name = get_color_preset_button_name(button_index),
		style = style_names.saved_preset_button_style,
		caption = "B",
		tooltip = get_color_preset_button_tooltip(name, color.r, color.g, color.b, color.a)
	}
	set_color_preset_button_style_font_color(button.style, convert_color_255_to_color(color.r, color.g, color.b, color.a))
end

-- Creates the add-to-preset button to the given preset table.
-- If current color (0-1) is provided, the add-to-preset button will also be updated according to the color.
local function create_add_to_preset_button(presets_table, current_color)
	local add_to_preset_button = presets_table.add
	{
		type = "button",
		name = gui_names.add_to_preset_button,
		style = style_names.add_to_preset_button_style,
		caption = "B",
		tooltip = {"gui.color-picker_add-to-preset-button-tooltip"}
	}
	if current_color then
		set_color_preset_button_style_font_color(add_to_preset_button.style, current_color)
	end
end

-- Adds a new preset button to the given preset table according to the given preset data.
-- The add-to-preset button will be ensured as the last element in the table.
-- Note that preset data use 255 color while current_color should be a 0-1 color.
local function add_preset_button(presets_table, preset_data, button_index, current_color)
	-- Temporarily destroy the add-to-preset button.
	local add_to_preset_button = presets_table[gui_names.add_to_preset_button]
	if add_to_preset_button then
		add_to_preset_button.destroy()
	end
	-- Create preset button.
	create_preset_button(presets_table, preset_data, button_index)
	-- Add back the add-to-preset button if necessary.
	if #presets_table.children < color_picker_defines.max_presets then
		create_add_to_preset_button(presets_table, current_color)
	end
end

-- Removes the preset button at the given index.
-- Internally, it shifts all presets forward and removes the last one.
-- current_color should be a 0-1 color.
local function remove_preset_button(presets_table, remove_index, current_color)
	local max_presets = color_picker_defines.max_presets
	local i = remove_index
	while true do
		local current_button = presets_table[get_color_preset_button_name(i)]
		local next_button = presets_table[get_color_preset_button_name(i + 1)]
		if next_button then
			-- There is next button. Shift its data forward.
			local current_button_style = current_button.style
			local next_button_style = next_button.style
			current_button_style.font_color = next_button_style.font_color
    		current_button_style.hovered_font_color = next_button_style.hovered_font_color
    		current_button_style.clicked_font_color = next_button_style.clicked_font_color
    		current_button_style.disabled_font_color = next_button_style.disabled_font_color
			current_button.tooltip = next_button.tooltip
		else
			-- There is no next button. The current button is the last one. Destroy it.
			current_button.destroy()
			-- Add back the add-to-preset button if it does not exist.
			if i <= max_presets then
				if not presets_table[gui_names.add_to_preset_button] then
					create_add_to_preset_button(presets_table, current_color)
				end
			end
			break
		end
		i = i + 1
	end
end

-- Creates the result color frame inside the given container.
-- Returns the 2 labels for showing the color. The first label should show the color with transparency while the second one should always be opaque.
local function create_result_color_frame(container, frame_name, label_container_name, label_1_name, label_2_name)
	-- Result frame.
	local result_frame = container.add
	{
		type = "frame",
		name = frame_name,
		style = style_names.result_frame_style,
		direction = "horizontal"
	}
	-- Result label container.
	local result_label_container = result_frame.add
	{
		type = "table",
		name = label_container_name,
		style = style_names.result_label_container_style,
		column_count = 2
	}
	-- Result label 1.
	local label_1 = result_label_container.add
	{
		type = "label",
		name = label_1_name,
		style = style_names.result_label_style,
		caption = "C"
	}
	-- Result label 2.
	local label_2 = result_label_container.add
	{
		type = "label",
		name = label_2_name,
		style = style_names.result_label_style,
		caption = "D"
	}
	return label_1, label_2
end

-- Proceeds a simple validation against the given data for adding an instance of the color picker GUI.
local function validate_add_instance_data(data)
	assert(data.parent)
	assert(data.container_name)
end

-- Adds a color picker under a GUI element. If there is already a GUI element with the same name as container_name, nothing will be done.
-- Returns the color picker container if it is successfully created.
local function add_instance(data)
	validate_add_instance_data(data)
	
	local parent = data.parent
	if parent[data.container_name] then
		return nil
	end
                 
	local container = parent.add
	{
		type = "flow",
		name = data.container_name,
		direction = "vertical"
	}

	-- Frame.
	local frame = container.add
	{
		type = "frame",
		name = gui_names.frame,
		style = style_names.color_picker_frame_style,
		direction = "vertical",
		caption = data.title_caption or {"gui-train.color"}
	}
	
	-- Color palettes.
	local color_palette_table = frame.add
	{
		type = "table",
		name = gui_names.color_palette_table,
		style =  style_names.color_palette_table_style,
		column_count = 13
	}
	-- Black palettes.
	for column = 1, 13, 1 do
		color_palette_table.add
		{
			type = "button",
			name = get_color_palette_button_name(0, 0, 0) .. "-column-" .. column,
			style = style_names.color_palette_button_style_prefix .. "0_0_0",
			tooltip = get_tooltip_about_color_255(0, 0, 0)
		}
	end
	-- Grayscale and colors.
	local grayscale_values = {26, 51, 77, 102, 128, 153, 179, 204, 230}
	local color_full_values = color_picker_defines.color_values.full
	local color_half_values = color_picker_defines.color_values.half
	local color_zero_values = color_picker_defines.color_values.zero
	local color_components_in_rows =
	{
		-- R 100%, G 0%, B 0%
		{color_full_values, color_zero_values, color_zero_values},
		-- R 100%, G 50%, B 0%
		{color_full_values, color_half_values, color_zero_values},
		-- R 100%, G 100%, B 0%
		{color_full_values, color_full_values, color_zero_values},
		-- R 50%, G 100%, B 0%
		{color_half_values, color_full_values, color_zero_values},
		-- R 0%, G 100%, B 0%
		{color_zero_values, color_full_values, color_zero_values},
		-- R 0%, G 100%, B 50%
		{color_zero_values, color_full_values, color_half_values},
		-- R 0%, G 100%, B 100%
		{color_zero_values, color_full_values, color_full_values},
		-- R 0%, G 50%, B 100%
		{color_zero_values, color_half_values, color_full_values},
		-- R 0%, G 0%, B 100%
		{color_zero_values, color_zero_values, color_full_values},
		-- R 50%, G 0%, B 100%
		{color_half_values, color_zero_values, color_full_values},
		-- R 100%, G 0%, B 100%
		{color_full_values, color_zero_values, color_full_values},
		-- R 100%, G 0%, B 50%
		{color_full_values, color_zero_values, color_half_values}
	}
	for row = 2, 10, 1 do
		-- Gray.
		local current_grayscale_value = grayscale_values[row - 1]
		local button_name = get_color_palette_button_name(current_grayscale_value, current_grayscale_value, current_grayscale_value)
		local style_name = style_names.color_palette_button_style_prefix .. current_grayscale_value .. "_" .. current_grayscale_value .. "_" .. current_grayscale_value
		local tooltip = get_tooltip_about_color_255(current_grayscale_value, current_grayscale_value, current_grayscale_value)
		color_palette_table.add
		{
			type = "button",
			name = button_name,
			style = style_name,
			tooltip = tooltip
		}
		-- Colors.
		for column = 2, 13, 1 do
			local current_components = color_components_in_rows[column - 1]
			local r = current_components[1][row - 1]
			local g = current_components[2][row - 1]
			local b = current_components[3][row - 1]
			button_name = get_color_palette_button_name(r, g, b)
			style_name = style_names.color_palette_button_style_prefix .. r .. "_" .. g .. "_" .. b
			tooltip = get_tooltip_about_color_255(r, g, b)
			color_palette_table.add
			{
				type = "button",
				name = button_name,
				style = style_name,
				tooltip = tooltip
			}
		end
	end
	-- White palettes.
	for column = 1, 13, 1 do
		color_palette_table.add
		{
			type = "button",
			name = get_color_palette_button_name(255, 255, 255) .. "-column-" .. column,
			style = style_names.color_palette_button_style_prefix .. "255_255_255",
			tooltip = get_tooltip_about_color_255(255, 255, 255)
		}
	end
	
	-- Red bar.
	local bar_container = frame.add
	{
		type = "flow",
		name = gui_names.red_bar_container,
		style = style_names.rgba_bar_container_flow_style,
		direction = "horizontal"
	}
	bar_container.style.top_padding = 20
	create_rgba_bar_contents(bar_container, gui_names.red_bar_contents_prefix, {"color.red"})
	
	-- Green bar.
	bar_container = frame.add
	{
		type = "flow",
		name = gui_names.green_bar_container,
		style = style_names.rgba_bar_container_flow_style,
		direction = "horizontal"
	}
	create_rgba_bar_contents(bar_container, gui_names.green_bar_contents_prefix, {"color.green"})
	
	-- Blue bar.
	bar_container = frame.add
	{
		type = "flow",
		name = gui_names.blue_bar_container,
		style = style_names.rgba_bar_container_flow_style,
		direction = "horizontal"
	}
	create_rgba_bar_contents(bar_container, gui_names.blue_bar_contents_prefix, {"color.blue"})
	
	-- Alpha bar.
	local support_alpha = data.support_alpha
	if support_alpha then
		bar_container = frame.add
    	{
    		type = "flow",
    		name = gui_names.alpha_bar_container,
    		style = style_names.rgba_bar_container_flow_style,
    		direction = "horizontal"
    	}
    	create_rgba_bar_contents(bar_container, gui_names.alpha_bar_contents_prefix, {"gui.color-picker_alpha"})
	end
	
	-- Hex value.
	local hex_container = frame.add
	{
		type = "flow",
		name = gui_names.hex_container,
		style = style_names.rgba_bar_container_flow_style,
		direction = "horizontal"
	}
	hex_container.add
	{
		type = "label",
		name = gui_names.hex_label,
		style = style_names.hex_label_style,
		caption = {"gui.color-picker_hex"}
	}
	hex_container.add
	{
		type = "textfield",
		name = gui_names.hex_value_textfield,
		text = "000000"
	}
	-- Style of the textfield is set in set_color.
	
	-- Presets and result container.
	local presets_and_result_container = frame.add
	{
		type = "flow",
		name = gui_names.presets_and_result_container,
		style = style_names.presets_and_result_container_flow_style,
		direction = "horizontal"
	}
	
	-- Presets container.
	local presets_container = presets_and_result_container.add
	{
		type = "flow",
		name = gui_names.presets_container,
		style = style_names.presets_container_flow_style,
		direction = "vertical"
	}
	
	-- Presets label.
	if data.show_ok_button then
		presets_container.add
		{
			type = "label",
			name = gui_names.presets_label,
			caption = {"gui.color-picker_presets"}
		}
	end
	
	-- Presets table.
	local presets_table = presets_container.add
	{
		type = "table",
		name = gui_names.presets_table,
		style = style_names.presets_table_style,
		column_count = color_picker_defines.presets_per_row
	}
	-- Presets.
	local player_index = parent.player_index
	local player_presets
	if global.color_presets[player_index] then
		player_presets = global.color_presets[player_index]
	else
		player_presets =
		{
			{
				name = "Default locomotive",
				color = {r = 234, g = 17, b = 0, a = 127},
			},
			{
				name = "Default player",
				color = {r = 178, g = 127, b = 76, a = 127},
			},
			{
				name = "Coal",
				color = {r = 4, g = 4, b = 4, a = 204},
			},
			{
				name = "Stone",
				color = {r = 210, g = 190, b = 151, a = 255},
			},
			{
				name = "Iron",
				color = {r = 140, g = 164, b = 221, a = 204},
			},
			{
				name = "Copper",
				color = {r = 255, g = 134, b = 81, a = 204},
			},
			{
				name = "Uranium",
				color = {r = 152, g = 255, b = 64, a = 187},
			},
		}
		global.color_presets[player_index] = player_presets
	end
	for index, preset in ipairs(player_presets) do
		create_preset_button(presets_table, preset, index)
	end
	-- Add-to-preset button.
	if #player_presets < color_picker_defines.max_presets then
		create_add_to_preset_button(presets_table, nil)
    end
	
	-- Result container.
	local result_container = presets_and_result_container.add
	{
		type = "flow",
		name = gui_names.result_container,
		style = style_names.result_container_flow_style,
		direction = "vertical"
	}
	-- Result frame.
	create_result_color_frame(
		result_container,
		gui_names.result_frame,
		gui_names.result_frame_label_container,
		gui_names.result_frame_label_1,
		gui_names.result_frame_label_2)
	
	-- OK button.
	if data.show_ok_button then
		local ok_button_container = result_container.add
		{
			type = "flow",
			name = gui_names.ok_button_container,
			style = style_names.ok_button_container_flow_style,
			direction = "horizontal"
		}
		-- Space.
		ok_button_container.add
		{
			type = "flow",
			name = gui_names.ok_button_space,
			style = style_names.ok_button_space_flow_style,
			direction = "horizontal"
		}
		-- OK button.
		ok_button_container.add
		{
			type = "button",
			name = gui_names.ok_button,
			style = style_names.ok_button_style,
			caption = {"gui.ok"}
		}
	end
	
	-- Set color.
	local color
	if data.color then
		color = data.color
	elseif data.hex_color then
		if is_valid_hex_color(data.hex_color, support_alpha) then
			local r, g, b = convert_hex_to_color_255(data.hex_color)
			color = convert_color_255_to_color(r, g, b)
		else
			if support_alpha then
				error(incorrect_hex_color_message_with_alpha)
			else
				error(incorrect_hex_color_message_without_alpha)
			end
		end
	else
		color = {r = 1, g = 1, b = 1}
	end
	set_color(container, color)
	
	-- Register the color picker.
	local created_color_pickers = global.created_color_pickers
	local player_color_pickers = created_color_pickers[container.player_index] or {}
	-- If the amount is too large, remove those invalid ones.
	local player_color_pickers_count = #player_color_pickers
	if player_color_pickers_count >= 100 then
		for i = player_color_pickers_count, 1, -1 do
			local picker_container = player_color_pickers[i]
			if not picker_container or not picker_container.valid then
				table.remove(player_color_pickers, i)
			end
		end
	end
	table.insert(player_color_pickers, container)
	created_color_pickers[container.player_index] = player_color_pickers
	global.created_color_pickers = created_color_pickers
    
	return container
end

----------------------------------------------------------------------------------------------

-- Creates or destroys the name-preset popup for the given player.
-- If no preset index is given, the popup will be destroyed.
-- If preset index is provided and the popup already exists, the contents will be updated.
-- This method will also update the data about the current edit preset index for the player.
local function create_or_destroy_name_preset_popup_for_player(player, preset_index, preset_data)
	local center = player.gui.center
	local popup_frame = center[gui_names.name_preset_popup_frame]
	if preset_index then
		-- Update data.
		global.current_edit_preset_indexes[player.index] = preset_index
		
		local preset_color = preset_data.color
       	local font_color = convert_color_255_to_color(preset_color.r, preset_color.g, preset_color.b, preset_color.a)
       	local name_textfield = nil
       	local color_frame = nil
		local color_label_1 = nil
		local color_label_2 = nil
		
		-- Create or update popup.
		if popup_frame then
			-- Update popup.
			local popup_table = popup_frame[gui_names.name_preset_popup_table]
			if popup_table then
				name_textfield = popup_table[gui_names.name_preset_popup_name_textfield]
				color_frame = popup_table[gui_names.name_preset_popup_color_frame]
				local color_frame_label_container = color_frame[gui_names.name_preset_popup_color_frame_label_container]
				if color_frame_label_container then
    				color_label_1 = color_frame_label_container[gui_names.name_preset_popup_color_frame_label_1]
    				color_label_2 = color_frame_label_container[gui_names.name_preset_popup_color_frame_label_2]
				end
			end
		else
			-- Create popup.
			-- Frame.
			popup_frame = center.add
			{
				type = "frame",
				name = gui_names.name_preset_popup_frame,
				caption = {"gui.color-picker_name-the-preset"},
				direction = "vertical"
			}
			-- Table.
			local popup_table = popup_frame.add
			{
				type = "table",
				name = gui_names.name_preset_popup_table,
				column_count = 2
			}
			
			-- Name label.
			popup_table.add
			{
				type = "label",
				name = gui_names.name_preset_popup_name_label,
				caption = {"gui-tag-edit.name"}
			}
			-- Name textfield.
			name_textfield = popup_table.add
			{
				type = "textfield",
				name = gui_names.name_preset_popup_name_textfield,
			}
			
			-- Color label.
			popup_table.add
			{
				type = "label",
				name = gui_names.name_preset_popup_color_label,
				caption = {"gui-train.color"}
			}
			-- Color frame.
			color_label_1, color_label_2 = create_result_color_frame(
				popup_table,
				gui_names.name_preset_popup_color_frame,
				gui_names.name_preset_popup_color_frame_label_container,
				gui_names.name_preset_popup_color_frame_label_1,
				gui_names.name_preset_popup_color_frame_label_2)
        	
        	-- Buttons container.
        	local buttons_container = popup_frame.add
        	{
        		type = "flow",
        		name = gui_names.name_preset_popup_buttons_container,
        		direction = "horizontal"
        	}
        	-- Delete button.
        	buttons_container.add
        	{
        		type = "button",
        		name = gui_names.name_preset_popup_delete_button,
        		style = "dialog_button_style",
        		caption = {"gui-tag-edit.delete"}
        	}
        	-- Confirm button.
        	buttons_container.add
        	{
        		type = "button",
        		name = gui_names.name_preset_popup_confirm_button,
        		style = "dialog_button_style",
        		caption = {"gui-tag-edit.confirm"}
        	}
        	-- Cancel button.
        	buttons_container.add
        	{
        		type = "button",
        		name = gui_names.name_preset_popup_cancel_button,
        		style = "dialog_button_style",
        		caption = {"gui-tag-edit.cancel"}
        	}
		end
		
		-- Update the text of the name textfield.
		if name_textfield then
			name_textfield.text = preset_data.name
		end
		-- Update the font color of the color frame.
		if color_frame then
			-- Legacy, for the old popups that were opened before v0.4.2.
			color_frame.style.font_color = font_color
		end
		if color_label_1 then
			color_label_1.style.font_color = font_color
		end
		if color_label_2 then
			color_label_2.style.font_color = {r = font_color.r, g = font_color.g, b = font_color.b, a = 1}
		end
	else
		-- Destroy popup.
		global.current_edit_preset_indexes[player.index] = nil
		if popup_frame then
			popup_frame.destroy()
		end
	end
end

----------------------------------------------------------------------------------------------

-- Dictionary of data about the entity types that are enabled for color picker, such that whenever an entity of any of these types is selected, the color picker GUI will be shown.
local entity_types_with_color_picker_data =
{
	["train-stop"] =
	{
		setting_name = setting_names.enable_train_stop_color_picker,
		button_style = style_names.change_train_stop_color_button_style,
		button_tooltip = {"gui.color-picker_change-train-stop-color"},
		support_alpha = true
	},
	
	["locomotive"] =
	{
		setting_name = setting_names.enable_locomotive_color_picker,
		button_style = style_names.change_locomotive_color_button_style,
		button_tooltip = {"gui.color-picker_change-locomotive-color"},
		support_alpha = true
	},
	
	["cargo-wagon"] =
	{
		setting_name = setting_names.enable_cargo_wagon_color_picker,
		button_style = style_names.change_cargo_wagon_color_button_style,
		button_tooltip = {"gui.color-picker_change-cargo-wagon-color"},
		support_alpha = true
	},
	
	["fluid-wagon"] =
	{
		setting_name = setting_names.enable_fluid_wagon_color_picker,
		button_style = style_names.change_fluid_wagon_color_button_style,
		button_tooltip = {"gui.color-picker_change-fluid-wagon-color"},
		support_alpha = true
	}
}
-- The opened entities by different players. It is a local copy of global.opened_entities.
local opened_entities = nil

-- Creates a color picker for the given entity under the given container.
local function create_entity_color_picker(container, entity, title_caption, support_alpha)
	add_instance
	{
		parent = container,
		container_name = gui_names.entity_color_picker,
		title_caption = title_caption,
		color = entity.color or {r = 1, g = 1, b = 1},
		show_ok_button = true,
		support_alpha = support_alpha
	}
end

-- Creates or destroys the entity color container and button for the given player.
-- If no button style is provided, the container will be destroyed. Otherwise, the container and the button will be created.
local function create_or_destroy_entity_color_container_and_button_for_player(player, entity, color_button_style, color_button_tooltip, support_alpha)
	local left = player.gui.left
	local change_color_container = left[gui_names.entity_color_container]
	if color_button_style then
		if not change_color_container then
			change_color_container = left.add
			{
				type = "flow",
				name = gui_names.entity_color_container,
				style = "achievements_vertical_flow",
				direction = "vertical"
			}
			change_color_container.style.top_padding = 8
			change_color_container.add
			{
				type = "button",
				name = gui_names.entity_color_button,
				style = color_button_style,
				tooltip = color_button_tooltip
			}
		end
		
		-- If the color picker was opened before, keep it opened.
		local was_opened = global.entity_color_pickers_opened[player.index]
		if was_opened or was_opened == nil then
			create_entity_color_picker(change_color_container, entity, color_button_tooltip, support_alpha)
		end
		
		return
	end
	if change_color_container then
		change_color_container.destroy()
	end
end

-- Creates or destroys the entity color container and button for all players according to their settings.
-- This function is used when Color Picker is updated such that the mod settings are moved from "Map" to "Per player".
-- Players may have changed their settings before loading the old save with the old version (before v0.4.4) of Color Picker.
-- E.g. 1) player has selected a cargo wagon, such that its color picker is shown.
-- 2) Auto-save
-- 3) Player updates Color Picker.
-- 4) Player disables the cargo wagon color picker.
-- 5) Player loads the save.
-- 6) This function destroys the color picker container and button.
local function create_or_destroy_entity_color_container_and_button_for_all_players_according_to_settings()
	for _, player in pairs(game.players) do
		local current_opened_entity = player.opened
		if current_opened_entity then
    		local registered_entity_data = entity_types_with_color_picker_data[current_opened_entity.type]
    		if registered_entity_data then
    			-- Check setting.
    			if player.mod_settings[registered_entity_data.setting_name].value then
    				create_or_destroy_entity_color_container_and_button_for_player(player, current_opened_entity, registered_entity_data.button_style, registered_entity_data.button_tooltip, registered_entity_data.support_alpha)
    			else
    				-- Destroy the color picker if player has disabled it in setting.
    				create_or_destroy_entity_color_container_and_button_for_player(player, nil, nil, nil, nil)
    			end
    		end
    	end
	end
end

-- Handler of the on_tick event.
-- Shows the color picker when an entity of the registered entity type is selected, or hides the color picker otherwise.
local function on_tick(event)
	for _, player in pairs(game.players) do
		local player_index = player.index
		if player.connected then
    		local current_opened_entity = player.opened
    		local last_opened_entity = opened_entities[player_index]
    		-- Different entity.
    		if current_opened_entity ~= last_opened_entity then
    			-- Close the change color UI for the last entity first.
    			create_or_destroy_entity_color_container_and_button_for_player(player, nil, nil, nil, nil)
    			-- If the current opened entity is a registered entity type, create the color container and button.
    			if current_opened_entity then
    				local registered_entity_data = entity_types_with_color_picker_data[current_opened_entity.type]
    				if registered_entity_data then
    					-- Check setting.
    					if player.mod_settings[registered_entity_data.setting_name].value then
    						create_or_destroy_entity_color_container_and_button_for_player(player, current_opened_entity, registered_entity_data.button_style, registered_entity_data.button_tooltip, registered_entity_data.support_alpha)
    					end
    				end
    			end
    			
    			-- Record the currently opened entity for the player.
    			opened_entities[player_index] = current_opened_entity
    			global.opened_entities = opened_entities
    		end
    	else
    		if opened_entities[player_index] then
        		opened_entities[player_index] = nil
        		global.opened_entities = opened_entities
        		create_or_destroy_entity_color_container_and_button_for_player(player, nil, nil, nil, nil)
    		end
    	end
	end
end

----------------------------------------------------------------------------------------------

-- Adds the given preset data, removes the preset data at given index, or updates the preset data at given index according to the updated data for the player.
-- Updates all opened color pickers for the player.
-- Note: updating the preset button means only updating the color name (tooltip), not the color value.
local function add_remove_or_update_preset_for_player(player, new_preset_data, new_preset_index, remove_preset_index, updated_preset_data, update_preset_index)
	local created_color_pickers = global.created_color_pickers
	local player_color_pickers = created_color_pickers[player.index]
	for i = #player_color_pickers, 1, -1 do
		local container = player_color_pickers[i]
		if container.valid then
			local frame = container[gui_names.frame]
			if frame then
				local presets_and_result_container = frame[gui_names.presets_and_result_container]
				if presets_and_result_container then
					local presets_container = presets_and_result_container[gui_names.presets_container]
					if presets_container then
						local presets_table = presets_container[gui_names.presets_table]
						if new_preset_data then
							-- Add preset.
							add_preset_button(presets_table, new_preset_data, new_preset_index, convert_color_255_to_color(get_color_255_from_frame(frame)))
						elseif remove_preset_index then
							-- Remove preset.
							remove_preset_button(presets_table, remove_preset_index, convert_color_255_to_color(get_color_255_from_frame(frame)))
						else
							-- Update preset.
							local preset_button = presets_table[get_color_preset_button_name(update_preset_index)]
							if preset_button then
								local color = updated_preset_data.color
								preset_button.tooltip = get_color_preset_button_tooltip(updated_preset_data.name, color.r, color.g, color.b)
							end
						end
					end
				end
			end
		else
			table.remove(player_color_pickers, i)
		end
	end
	created_color_pickers[player.index] = player_color_pickers
	global.created_color_pickers = created_color_pickers
end

----------------------------------------------------------------------------------------------

-- Handler of the on_gui_click event.
local function on_gui_click(event)
	local element = event.element
	local element_name = element.name
	local player_index = event.player_index
	local player = game.players[player_index]
	local left = player.gui.left
	local shift = event.shift
	local alt = event.alt
	
	-- Name-preset popup delete button?
	if element_name == gui_names.name_preset_popup_delete_button then
		-- Remove the preset.
		local color_presets = global.color_presets
		local preset_index = global.current_edit_preset_indexes[player_index]
		if color_presets and color_presets[player_index] then
    		table.remove(color_presets[player_index], preset_index)
    		global.color_presets = color_presets
		end
		-- Remove preset button from the color pickers.
		add_remove_or_update_preset_for_player(player, nil, nil, preset_index, nil, nil)
		-- Destroy the popup.
		create_or_destroy_name_preset_popup_for_player(player, nil, nil)
		return
	end
	
	-- Name-preset popup confirm button?
	if element_name == gui_names.name_preset_popup_confirm_button then
		-- Update the preset name.
		local color_presets = global.color_presets
		if color_presets and color_presets[player_index] then
    		local preset_index = global.current_edit_preset_indexes[player_index]
			local preset_data = color_presets[player_index][preset_index]
			-- button -> buttons_container -> frame.
			local buttons_container = element.parent
			if buttons_container then
				local popup_frame = buttons_container.parent
				if popup_frame then
					local popup_table = popup_frame[gui_names.name_preset_popup_table]
					if popup_table then
						local name_textfield = popup_table[gui_names.name_preset_popup_name_textfield]
						if name_textfield then
							preset_data.name = name_textfield.text
							color_presets[player_index][preset_index] = preset_data
							global.color_presets = color_presets
						end
					end
				end
			end
			-- Update preset buttons.
			add_remove_or_update_preset_for_player(player, nil, nil, nil, preset_data, preset_index)
		end
		-- Destroy the popup.
		create_or_destroy_name_preset_popup_for_player(player, nil, nil)
		return
	end
	
	-- Name-preset popup cancel button?
	if element_name == gui_names.name_preset_popup_cancel_button then
		-- Destroy the popup.
		create_or_destroy_name_preset_popup_for_player(player, nil, nil)
		return
	end
	
	-- Player color button?
	if element_name == gui_names.player_color_button then
		-- Create or destroy the player color picker.
		if left[gui_names.player_color_picker] then
			left[gui_names.player_color_picker].destroy()
		else
			local color_picker = add_instance
			{
				parent = left,
				container_name = gui_names.player_color_picker,
				title_caption = {"gui.color-picker_change-player-color"},
				color = player.color,
				show_ok_button = true,
				support_alpha = true
			}
			color_picker.style.left_padding = 8
		end
		return
	end
	
	-- Entity color button?
	if element_name == gui_names.entity_color_button then
		-- Create or destroy the entity color picker.
		local entity_color_container = left[gui_names.entity_color_container]
		if entity_color_container[gui_names.entity_color_picker] then
			-- Already opened. Destroy it.
        	entity_color_container[gui_names.entity_color_picker].destroy()
        	global.entity_color_pickers_opened[player_index] = false
        else
        	-- Not opened yet. Create it.
    		local entity = player.opened
    		if entity then
    			local data = entity_types_with_color_picker_data[entity.type]
    			if data then
    				create_entity_color_picker(entity_color_container, entity, data.button_tooltip, data.support_alpha)
        			global.entity_color_pickers_opened[player_index] = true
        		end
    		end
		end
		return
	end
	
	-- Add-to-preset button?
	if element_name == gui_names.add_to_preset_button then
		-- button -> presets_table
		local presets_table = element.parent
		if presets_table and presets_table.name == gui_names.presets_table then
			local new_preset_index
			local color_presets = global.color_presets
			color_presets[player_index] = color_presets[player_index] or {}
			new_preset_index = #color_presets[player_index] + 1
			if new_preset_index <= color_picker_defines.max_presets then
				-- presets_table -> presets_container -> presets_and_result_container -> frame
				local presets_container = presets_table.parent
				if presets_container then
    				local presets_and_result_container = presets_container.parent
            		if presets_and_result_container then
            			local frame = presets_and_result_container.parent
            			if frame and frame.name == gui_names.frame then
            				local r255, g255, b255, a255 = get_color_255_from_frame(frame)
            				if r255 and g255 and b255 then
        						local new_preset_data =
        						{
                    				color = {r = r255, g = g255, b = b255, a = a255},
                    				name = ""
                    			}
                    			add_remove_or_update_preset_for_player(player, new_preset_data, new_preset_index, nil, nil, nil)
                    			table.insert(color_presets[player_index], new_preset_data)
                    			global.color_presets = color_presets
                			end
                		end
                    end
                end
			end
		end		
		return
	end
	
	-- Saved preset?
	if element.parent and element.parent.name == gui_names.presets_table then
		local preset_index = string.match(element.name, gui_name_match_patterns.preset_button)
		if preset_index then
			preset_index = tonumber(preset_index)
			-- Set current color as preset.
			local color_presets = global.color_presets
			color_presets[player_index] = color_presets[player_index] or {}
			if shift then
				-- Shift-click: remove preset.
				add_remove_or_update_preset_for_player(player, nil, nil, preset_index, nil, nil)
				table.remove(color_presets[player_index], preset_index)
				global.color_presets = color_presets
			elseif alt then
				-- Alt-click: name the preset.
				create_or_destroy_name_preset_popup_for_player(player, preset_index, color_presets[player_index][preset_index])
			else
    			-- button -> presets_table.
    			local presets_table = element.parent
    			-- presets_table -> presets_container -> presets_and_result_container -> frame
    			local presets_container = presets_table.parent
    			if presets_container then
    				local presets_and_result_container = presets_container.parent
            		if presets_and_result_container then
            			local frame = presets_and_result_container.parent
            			if frame and frame.name == gui_names.frame then
            				local container = frame.parent
            				if container then
                				local preset_data = color_presets[player_index][preset_index]
                				local color = preset_data.color
                				set_color_255(frame, color.r, color.g, color.b, color.a)
                				raise_on_color_changed_event_255(container, color.r, color.g, color.b, color.a, player_index)
            				end
            			end
            		end
            	end
        	end
        	return
		end
	end
	
	-- Is the element an OK button?
	if element_name == gui_names.ok_button then
		-- button -> ok_button_container -> result_container -> presets_and_result_container -> frame -> container
		local ok_button_container = element.parent
		if ok_button_container and ok_button_container.name == gui_names.ok_button_container then
    		local result_container = ok_button_container.parent
    		if result_container then
    			local presets_and_result_container = result_container.parent
        		if presets_and_result_container then
        			local frame = presets_and_result_container.parent
        			if frame and frame.name == gui_names.frame then
        				local container = frame.parent
        				if container then
        					local r255, g255, b255, a255 = get_color_255_from_frame(frame)
        					if r255 and g255 and b255 then
    							local color = convert_color_255_to_color(r255, g255, b255, a255)
    							local hex = convert_color_255_to_hex(r255, g255, b255, a255)
    							raise_event(on_ok_button_clicked_event_id,
    							{
    								container = container,
    								color = color,
    								hex_color = hex,
    								player_index = player_index
    							})
    							return
    						end
        				end
        			end
    			end
    		end
		end
	end
	
	-- Is the element a color palette button?
	-- button -> table -> frame
	local button_table = element.parent
	if button_table then
		local frame = button_table.parent
		if frame and frame.name == gui_names.frame then
			local container = frame.parent
			if container then
				-- No alpha for color palettes.
				local r255, g255, b255 = string.match(element.name, gui_name_match_patterns.color_palette_button)
				if r255 and g255 and b255 then
					r255 = tonumber(r255)
					g255 = tonumber(g255)
					b255 = tonumber(b255)
					local a255 = nil
					if has_alpha_bar(frame) then
						local a_bar_container = frame[gui_names.alpha_bar_container]
						local a_textfield = a_bar_container[gui_names.alpha_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix]
						if a_textfield then
							a255 = tonumber(a_textfield.text)
						end
						a255 = a255 or 255
					end
					set_color_255(frame, r255, g255, b255, a255)
					raise_on_color_changed_event_255(container, r255, g255, b255, a255, player_index)
					return
				end
			end
		end
	end
	
	-- Is the element a button on the RGBA bars?
	-- button -> table -> bar_container -> frame
	if button_table then
		local bar_container = button_table.parent
		if bar_container then
			local frame = bar_container.parent
			if frame and frame.name == gui_names.frame then
				local container = frame.parent
				if container then
					local current_r, current_g, current_b, current_a = get_color_255_from_frame(frame)
					if current_r and current_g and current_b then
						-- Red?
						local i = string.match(element.name, gui_name_match_patterns.red_bar_button)
						if i then
							current_r = tonumber(i * (255 / 15))
							set_color_255(frame, current_r, current_g, current_b, current_a)
							raise_on_color_changed_event_255(container, current_r, current_g, current_b, current_a, player_index)
							return
						else
							-- Green?
							i = string.match(element.name, gui_name_match_patterns.green_bar_button)
							if i then
								current_g = tonumber(i * (255 / 15))
								set_color_255(frame, current_r, current_g, current_b, current_a)
								raise_on_color_changed_event_255(container, current_r, current_g, current_b, current_a, player_index)
								return
							else
								-- Blue?
								i = string.match(element.name, gui_name_match_patterns.blue_bar_button)
								if i then
									current_b = tonumber(i * (255 / 15))
									set_color_255(frame, current_r, current_g, current_b, current_a)
									raise_on_color_changed_event_255(container, current_r, current_g, current_b, current_a, player_index)
									return
								else
									-- Alpha?
									i = string.match(element.name, gui_name_match_patterns.alpha_bar_button)
									if i then
    									current_a = tonumber(i * (255 / 15))
    									set_color_255(frame, current_r, current_g, current_b, current_a)
    									raise_on_color_changed_event_255(container, current_r, current_g, current_b, current_a, player_index)
    									return
    								end
								end
							end
						end
					end
				end
			end
		end
	end
end

-- Restricts the text of the given textfield to be numeric, between 0 and 255 inclusively, and updates the color.
-- Returns whether the textfield is really a textfield in a RGB bar so that the color can be updated.
local function on_rgba_bar_textfield_text_changed(textfield, is_r, is_g, is_b, player_index)
	-- Textfield -> bar_container -> frame
	local bar_container = textfield.parent
	if bar_container then
		local frame = bar_container.parent
		if frame and frame.name == gui_names.frame then
			local container = frame.parent
			if container then
				-- Restrict the text to be numeric and is 0 - 255.
				local value = tonumber(string.match(textfield.text, "%d*"))
				if value == nil then
					value = 0
				else
					value = math.min(math.max(value, 0), 255)
				end
				-- Get the current RGB and replace one of them by value.
				local current_r, current_g, current_b, current_a = get_color_255_from_frame(frame)
				if is_r then
					current_r = value
				elseif is_g then
					current_g = value
				elseif is_b then
					current_b = value
				else
					current_a = value
				end
				if current_r and current_g and current_b then
					set_color_255(frame, current_r, current_g, current_b, current_a)
					raise_on_color_changed_event_255(container, current_r, current_g, current_b, current_a, player_index)
					return true
				end
			end
		end
	end
	return false
end

-- Handler of the on_gui_text_changed event.
local function on_gui_text_changed(event)
	local element = event.element
	local player_index = event.player_index
	-- Red bar textfield?
	if element.name == gui_names.red_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix then
		if on_rgba_bar_textfield_text_changed(element, true, false, false, player_index) then
			return
		end
	end
	
	-- Green bar textfield?
	if element.name == gui_names.green_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix then
		if on_rgba_bar_textfield_text_changed(element, false, true, false, player_index) then
			return
		end
	end
	
	-- Blue bar textfield?
	if element.name == gui_names.blue_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix then
		if on_rgba_bar_textfield_text_changed(element, false, false, true, player_index) then
			return
		end
	end
	
	-- Alpha bar textfield?
	if element.name == gui_names.alpha_bar_contents_prefix .. gui_names.rgba_bar_textfield_postfix then
		if on_rgba_bar_textfield_text_changed(element, false, false, false, player_index) then
			return
		end
	end
	
	-- Hex value textfield?
	if element.name == gui_names.hex_value_textfield then
		-- Textfield -> hex_container -> frame
		local hex_container = element.parent
		if hex_container then
			local frame = hex_container.parent
			if frame and frame.name == gui_names.frame then
				local container = frame.parent
				if container then
					local support_alpha = has_alpha_bar(frame)
					local max_character = support_alpha and 8 or 6
					-- Restrict the text to be numeric and A-F (a-f) only, and also contains at most 8, or 6 if alpha is not supported, characters.
					element.text = string.sub(string.gsub(element.text, '[^0-9a-fA-F]', ""), 1, max_character)
					-- To uppercase.
					element.text = string.upper(element.text)
					
					-- Is valid hex value for color?
					local is_valid = is_valid_hex_color(element.text, support_alpha)
					if is_valid then
						-- Convert hex to RGB. Set color and raise event.
						local r255, g255, b255, a255 = convert_hex_to_color_255(element.text)
						set_color_255(frame, r255, g255, b255, a255)
						raise_on_color_changed_event_255(container, r255, g255, b255, a255, player_index)
					else
						element.style = style_names.hex_value_invalid_textfield_style
					end
				end
			end
		end
		return false
	end
end

-- Registers handler to the on_gui_click event, which is invoked when a GUI element is clicked.
script.on_event(defines.events.on_gui_click, on_gui_click)

-- Registers handler to the on_gui_click event, which is invoked when the text of a textfield is changed by any player.
script.on_event(defines.events.on_gui_text_changed, on_gui_text_changed)

----------------------------------------------------------------------------------------------

-- Creates or destroys the player color button for the given player according to the settings.
local function create_or_destroy_player_color_button(player)
	local is_create = player.mod_settings[setting_names.enable_player_color_picker].value
	local top = player.gui.top
	local left = player.gui.left
	if is_create then
    	if not top[gui_names.player_color_button] then
    		top.add
    		{
    			type = "button",
    			name = gui_names.player_color_button,
    			style = style_names.change_player_color_button_style,
    			tooltip = {"gui.color-picker_change-player-color"}
    		}
    	end
    else
    	if top[gui_names.player_color_button] then
    		top[gui_names.player_color_button].destroy()
    	end
    	-- Also destroy the player color picker.
    	if left[gui_names.player_color_picker] then
			left[gui_names.player_color_picker].destroy()
		end
    end
end

-- Creates or destroys the player color buttons for all connected players in the game according to the settings.
local function create_or_destroy_player_color_button_for_all_players()
	for _, player in pairs(game.connected_players) do
		create_or_destroy_player_color_button(player)
	end
end

----------------------------------------------------------------------------------------------

-- Handler of the on_player_joined_game event.
-- Updates the change player color button for the newly joined player.
local function on_player_joined_game(event)
	create_or_destroy_player_color_button(game.players[event.player_index])
end
script.on_event(defines.events.on_player_joined_game, on_player_joined_game)

----------------------------------------------------------------------------------------------

-- This mod provides shared functions via remote interface.
remote.add_interface("color-picker16",
{
	-- Adds a color picker under a GUI element. If there is already a GUI element with the same name as container_name, nothing will be done.
	--	Parameters:
	--		Table with the following fields:
	-- 			parent :: LuaGuiElement: The GUI element where the color picker will be added to.
	-- 			container_name :: string: The GUI element name of the color picker container. For example, this can be (your mod name) + "_color-picker".
	--			title_caption :: string or LocalisedString (optional): Title of the color picker. If not provided, localised "Color" will be used.
	--  		color :: Color (optional): The color this color picker is representing.
	--			hex_color :: string (optional): The hexadecimal color this color picker is representing (e.g. "FF0000FF", or "FF0000" if alpha is not supported). It is used only if "color" is not provided. If both "color" and it are not provided, the color white will be used.
	--			support_alpha :: boolean (optional): Whether the alpha channel is supported. It is false by default. If alpha is not supported, the alpha value of the provided color will be ignored, and the returned color in the events will not contain alpha.
	--			show_ok_button :: boolean (optional): Whether a OK button should be shown at the bottom. Default is false. The button will not do anything, but the on_ok_button_clicked event will be called when it is clicked. It is up to you to do anything with it. For example, you can simply destroy the container, i.e. close the color picker.
	--	Returns:
	--		The GUI element of the color picker container if it is successfully created.
	add_instance = add_instance,
	
	-- Sets the current color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--		color :: Color: The desired color. If the color picker does not support alpha, the value of "a" will be ignored.
	set_color = set_color,
	
	-- Sets the current hexadecimal color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuaGuiElement: The element of color picker container.
	--		hex_color :: string: The hexadecimal representation of desired color. If the color picker supports alpha, the provided string should contain exactly 8 characters; otherwise, it should contain exactly 6 characters.
	set_hex_color = set_hex_color,
	
	-- Gets the current color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--	Returns:
	--		The color represented by the color picker. If the color picker does not support alpha, it will not contain the "a" value.
	get_color = get_color,
	
	-- Gets the current hexadecimal color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--	Returns:
	--		The hexadecimal color represented by the color picker. If the color picker supports alpha, it will contain 8 characters; otherwise, it will contain 6 characters.
	get_hex_color = get_hex_color,
	
	-- Called when the color of a color picker is changed by player.
	--	Contains:
	--		container :: LuaGuiElement: The GUI element of the color picker's container.
	--		color :: Color: The updated color represented by the color picker. If the color picker does not support alpha, it will not contain the "a" value.
	--		hex_color :: string: The hexadecimal representation of color. If the color picker supports alpha, it will contain 8 characters; otherwise, it will contain 6 characters.
	--		player_index :: uint: The index of the player who did the change.
	on_color_updated = get_or_load_on_color_changed_event_id,
	
	-- Called when the OK button of a color picker is clicked by player.
	-- 	Contains:
	--		container :: LuaGuiElement: The GUI element of the color picker's container.
	--		color :: Color: The current color represented by the color picker. If the color picker does not support alpha, it will not contain the "a" value.
	--		hex_color :: string: The hexadecimal representation of color. If the color picker supports alpha, it will contain 8 characters; otherwise, it will contain 6 characters.
	--		player_index :: uint: The index of the player who clicked the button.
	on_ok_button_clicked = get_or_load_on_ok_button_clicked_event_id,
})

----------------------------------------------------------------------------------------------

-- Handler of the on_runtime_mod_setting_changed event.
local function on_runtime_mod_setting_changed(event)
	local setting_name = event.setting
	local player = game.players[event.player_index]
	if setting_name == setting_names.enable_player_color_picker then
		-- Update the change player color button.
		create_or_destroy_player_color_button(player)
	end
	
	-- Check whether we should create or destroy the entity color container.
	for entity_type, data in pairs(entity_types_with_color_picker_data) do
		if setting_name == data.setting_name then
			if player.mod_settings[setting_name].value then
				-- Create the container.
				local opened_entity = player.opened
				if opened_entity and opened_entity.type == entity_type then
					create_or_destroy_entity_color_container_and_button_for_player(player, opened_entity, data.button_style, data.button_tooltip, data.support_alpha)
				end
			else
				-- Destroy the container.
				create_or_destroy_entity_color_container_and_button_for_player(player, nil, nil, nil, nil)
			end
			break
		end
	end
end
script.on_event(defines.events.on_runtime_mod_setting_changed, on_runtime_mod_setting_changed)

----------------------------------------------------------------------------------------------

-- Sets the color of the given entity and updates the color picker for all players except the given one.
local function set_entity_color_and_update_color_picker_for_all_except_player(entity, player, new_color)
	entity.color = new_color
	-- Also update the color pickers of the other players who are opening the same entity.
	for _, player2 in pairs(game.connected_players) do
		if player ~= player2 then
			if opened_entities[player2.index] == entity then
				local left = player2.gui.left
				local change_color_container = left[gui_names.entity_color_container]
				if change_color_container then
					local color_picker = change_color_container[gui_names.entity_color_picker]
					if color_picker then
						set_color(color_picker, new_color)
					end
				end
			end
		end
	end
end

----------------------------------------------------------------------------------------------

-- Returns whether the given player is allowed to change entity color according to his/her current permission group.
local function is_player_allowed_to_change_entity_color(player)
	local permission_group = player.permission_group
    if not permission_group then
    	return true
    end
    return permission_group.allows_action(defines.input_action.set_entity_color)
end

----------------------------------------------------------------------------------------------

-- Handler of the on_entity_settings_pasted event.
-- Updates the color of the opened color pickers if the entity type is registered.
local function on_entity_settings_pasted(event)
	local source = event.source
	local source_type = source.type
	local source_color = source.color
	local destination = event.destination
	local destination_type = destination.type
	local data = entity_types_with_color_picker_data[destination_type]
	local player = game.players[event.player_index]
	if source_color and data and player.mod_settings[data.setting_name].value and is_player_allowed_to_change_entity_color(player) then
		if source_type == destination_type then
			set_entity_color_and_update_color_picker_for_all_except_player(destination, nil, source_color)
		else
			-- Locomotive/Train-stop <-> Cargo-wagon/Fluid-wagon?
			if (source_type == "cargo-wagon" and (destination_type == "locomotive" or destination_type == "train-stop" or destination_type == "fluid-wagon")) or
				(destination_type == "cargo-wagon" and (source_type == "locomotive" or source_type == "train-stop" or destination_type == "fluid-wagon")) or
				(source_type == "fluid-wagon" and (destination_type == "locomotive" or destination_type == "train-stop" or destination_type == "cargo-wagon")) or
				(destination_type == "fluid-wagon" and (source_type == "locomotive" or source_type == "train-stop" or source_type == "cargo-wagon")) then
				-- Check setting.
				if settings.startup[setting_names.make_color_pastable_between_wagon_and_others].value then
					set_entity_color_and_update_color_picker_for_all_except_player(destination, nil, source_color)
				end
			end
		end
	end
end
script.on_event(defines.events.on_entity_settings_pasted, on_entity_settings_pasted)

----------------------------------------------------------------------------------------------

-- Initializes the global tables.
local function initialize_global_tables()
	global.opened_entities = global.opened_entities or {}
	-- Update the local cache.
	opened_entities = global.opened_entities
	
	global.entity_color_pickers_opened = global.entity_color_pickers_opened or {}
	
	global.created_color_pickers = global.created_color_pickers or {}
	
	global.color_presets = global.color_presets or {}
	global.current_edit_preset_indexes = global.current_edit_preset_indexes or {}
end

-- Common handler of the on_init and on_load events.
-- Registers event IDs and also registers other event handlers if necessary.
local function on_init_or_load()
	get_or_load_on_color_changed_event_id()
	get_or_load_on_ok_button_clicked_event_id()
	
	-- Cache the global table of opened entities, because it is accessed in every tick.
	opened_entities = global.opened_entities
	
	-- Registers handler for the on_tick event.
	script.on_event(defines.events.on_tick, on_tick)
	
	-- Registers handlers for the color picker events.
    -- Changes the player or entity color when the color of a color picker is changed.
    script.on_event(remote.call("color-picker16", "on_color_updated"), function(event)
    	local player_index = event.player_index
    	local player = game.players[player_index]
    	local container_name = event.container.name
    	if container_name == gui_names.player_color_picker then
    		player.color = event.color
    		return
    	end
    	
    	if container_name == gui_names.entity_color_picker and is_player_allowed_to_change_entity_color(player) then
    		local entity = opened_entities[player_index]
    		if entity then
    			set_entity_color_and_update_color_picker_for_all_except_player(entity, player, event.color)
    		end
    		return
    	end
    end)
    
    -- Dismisses the color picker when the OK button is clicked.
    script.on_event(remote.call("color-picker16", "on_ok_button_clicked"), function(event)
    	local container = event.container
    	local container_name = container.name
    	if container_name == gui_names.player_color_picker then
    		container.destroy()
    		return
    	end
    	if container_name == gui_names.entity_color_picker then
    		container.destroy()
    		global.entity_color_pickers_opened[event.player_index] = false
    		return
    	end
    end)
end

-- Registers handler to the on_init event, which is called when a new game is started.
script.on_init(function()
	on_init_or_load()
	initialize_global_tables()
	-- The change player color buttons are created only when game initializes or when a new player joins.
	create_or_destroy_player_color_button_for_all_players()
end)

-- Registers handler to the on_load event, which is called when an existing game is loaded.
script.on_load(on_init_or_load)

-- Registers handler to the on_configuration_changed event, which is called when any mod version or the game verison is changed when an existing game is loaded.
script.on_configuration_changed(function(event)
	local mod_changes = event.mod_changes
	if mod_changes then
    	local my_mod_change = mod_changes[color_picker_defines.mod_id]
    	if my_mod_change then
    		local old_version = my_mod_change.old_version
    		local new_version = my_mod_change.new_version
    		if old_version ~= new_version then
    			-- This mod has been updated.
    			initialize_global_tables()
    			
    			if (old_version == nil or old_version <= "0.4.0") and (new_version ~= nil and new_version >= "0.4.0") then
    				-- The mod is updated from before 0.4.0 to 0.4.0+.
    				-- The change player color buttons should be created for all existing players.
    				create_or_destroy_player_color_button_for_all_players()
    			end
    			
    			if (old_version == nil or old_version < "0.4.4") and (new_version ~= nil and new_version >= "0.4.4") then
    				-- The mod is updated from before 0.4.4 to 0.4.4+.
    				-- The on_tick event handler is always needed, since the global runtime settings have been changed to per-player settings.
    				script.on_event(defines.events.on_tick, on_tick)
    				-- Also update the player color buttons as the mod options have been changed before the save is loaded.
    				create_or_destroy_player_color_button_for_all_players()
    				-- Same as other color buttons.
    				create_or_destroy_entity_color_container_and_button_for_all_players_according_to_settings()
    				-- Note: only need to call the above functions here, not in on_load becasue the settings will be saved in the save.
    			end
    		end
    	end
	end
end)