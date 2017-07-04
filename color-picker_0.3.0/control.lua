require("defines")

-- Message about incorrect color picker container is provided.
local incorrect_color_picker_message = "Make sure the correct color picker container is provided."
-- Message about incorrect hex color is provided.
local incorrect_hex_color_message = "Make sure the provided hexadecimal color is valid (\"000000\" - \"FFFFFF\")."

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

-- Converts the given color (0 - 1) to RGB (0 - 255)
local function convert_color_to_color_255(color)
	local r255 = math.floor((color.r or 0) * 255)
	local g255 = math.floor((color.g or 0) * 255)
	local b255 = math.floor((color.b or 0) * 255)
	return r255, g255, b255
end

-- Converts the given RGB (0 - 255) to color (0 - 1)
local function convert_color_255_to_color(r255, g255, b255)
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

-- Converts the given color (0 - 255) to hex color.
local function convert_color_255_to_hex(r, g, b)
	return convert_255_to_hex(r) .. convert_255_to_hex(g) .. convert_255_to_hex(b)
end

-- Converts the given hexadecimal color to RGB (0 - 255)
local function convert_hex_to_color_255(hex)
	local r = tonumber("0x"..string.sub(hex, 1, 2))
	local g = tonumber("0x"..string.sub(hex, 3, 4))
	local b = tonumber("0x"..string.sub(hex, 5, 6))
	return r, g, b
end


-- Raises the on_color_changed event with the given event data for (0 - 1) color.
local function raise_on_color_changed_event(container, color, player_index)
	local r, g, b = convert_color_to_color_255(color)
	local hex = convert_color_255_to_hex(r, g, b)
	raise_event(on_color_changed_event_id,
	{
		container = container,
		color = color,
		hex_color = hex,
		player_index = player_index
	})
end

-- Raises the on_color_changed event with the given event data for (0 - 255) color channels.
local function raise_on_color_changed_event_255(container, r, g, b, player_index)
	raise_on_color_changed_event(container, convert_color_255_to_color(r, g, b), player_index)
end

-- Returns the GUI element name of the color palette button for given color (0 - 255).
local function get_color_palette_button_name(r, g, b)
	return string.gsub(string.gsub(string.gsub(color_picker_defines.names.gui.color_palette_button, "{r}", r), "{g}", g), "{b}", b)
end

-- Returns the GUI element name of the button in a RGB bar at given position (0 - 15).
local function get_rgb_bar_button_name(element_name_prefix, i)
	return string.gsub(element_name_prefix .. color_picker_defines.names.gui.rgb_bar_button_postfix, "{i}", i)
end

-- Sets the contents of the given RGB bar according to the given color (0 - 255).
local function set_rgb_bar_contents(bar_container, element_name_prefix, color_channel_value)
	local button_table = bar_container[element_name_prefix .. color_picker_defines.names.gui.rgb_bar_button_table_postfix]
	for i = 0, 15, 1 do
		local button = button_table[get_rgb_bar_button_name(element_name_prefix, i)]
		local value = i * 255 / 15
		if value <= color_channel_value then
			button.style = "rgb_bar_button_on_style"
		else
			button.style = "rgb_bar_button_off_style"
		end
	end
	
	local textfield = bar_container[element_name_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
	textfield.text = color_channel_value
end

-- Sets the current color (0 - 255) represented by the color picker with the given frame.
local function set_color_255(color_picker_frame, r, g, b)
	-- Set the RGB bars.
	local r_bar = color_picker_frame[color_picker_defines.names.gui.red_bar_container]
	set_rgb_bar_contents(r_bar, color_picker_defines.names.gui.red_bar_contents_prefix, r)
		
	local g_bar = color_picker_frame[color_picker_defines.names.gui.green_bar_container]
	set_rgb_bar_contents(g_bar, color_picker_defines.names.gui.green_bar_contents_prefix, g)
	
	local b_bar = color_picker_frame[color_picker_defines.names.gui.blue_bar_container]
	set_rgb_bar_contents(b_bar, color_picker_defines.names.gui.blue_bar_contents_prefix, b)
	
	-- Set the hex value textfield.
	local hex_container = color_picker_frame[color_picker_defines.names.gui.hex_container]
	if hex_container then
		local hex_textfield = hex_container[color_picker_defines.names.gui.hex_value_textfield]
		if hex_textfield then
			hex_textfield.text = convert_color_255_to_hex(r, g, b)
			hex_textfield.style = "color_picker_hex_value_valid_textfield_style"
		end
	end
	
	-- Update the result label.
	local result_container = color_picker_frame[color_picker_defines.names.gui.result_container]
	local result_label = result_container[color_picker_defines.names.gui.result_label]
	result_label.style.font_color = convert_color_255_to_color(r, g, b)
end

-- Sets the current color (0 - 1) represented by the color picker of the given container.
local function set_color(color_picker_container, color)
	local frame = color_picker_container[color_picker_defines.names.gui.frame]
	assert(frame, incorrect_color_picker_message)
	
	local r255 = math.floor((color.r or 0) * 255)
	local g255 = math.floor((color.g or 0) * 255)
	local b255 = math.floor((color.b or 0) * 255)
	
	set_color_255(frame, r255, g255, b255)
end

-- Returns whether the given hexadecimal color is valid.
local function is_valid_hex_color(color)
	if string.len(color) ~= 6 then
		return false
	end
	
	if string.match(color, "[^0-9a-fA-F]") then
		return false
	end
	
	return true
end

-- Sets the current hexadecimal color represented by the color picker of the given container.
local function set_hex_color(color_picker_container, hex_color)
	local frame = color_picker_container[color_picker_defines.names.gui.frame]
	assert(frame, incorrect_color_picker_message)
	
	if is_valid_hex_color(hex_color) then
		local r, g, b = convert_hex_to_color_255(hex_color)
		set_color_255(frame, r, g, b)
	else
		error(incorrect_hex_color_message)
	end
end

-- Returns the color (0 - 1) represented by the color picker of the given container.
local function get_color(color_picker_container)
	local frame = color_picker_container[color_picker_defines.names.gui.frame]
	assert(frame, incorrect_color_picker_message)
	
	local r_bar_container = frame[color_picker_defines.names.gui.red_bar_container]
	local g_bar_container = frame[color_picker_defines.names.gui.green_bar_container]
	local b_bar_container = frame[color_picker_defines.names.gui.blue_bar_container]
	if r_bar_container and g_bar_container and b_bar_container then
		local r_textfield = r_bar_container[color_picker_defines.names.gui.red_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local g_textfield = g_bar_container[color_picker_defines.names.gui.green_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local b_textfield = b_bar_container[color_picker_defines.names.gui.blue_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		if r_textfield and g_textfield and b_textfield then
			local r = tonumber(r_textfield.text)
			local g = tonumber(g_textfield.text)
			local b = tonumber(b_textfield.text)
			local color = convert_color_255_to_color(r, g, b)
			return color
		end
	end
	return nil
end

-- Returns the hex color (000000 - FFFFFF) represented by the color picker of the given container.
local function get_hex_color(color_picker_container)
	local frame = color_picker_container[color_picker_defines.names.gui.frame]
	assert(frame, incorrect_color_picker_message)
	
	local r_bar_container = frame[color_picker_defines.names.gui.red_bar_container]
	local g_bar_container = frame[color_picker_defines.names.gui.green_bar_container]
	local b_bar_container = frame[color_picker_defines.names.gui.blue_bar_container]
	if r_bar_container and g_bar_container and b_bar_container then
		local r_textfield = r_bar_container[color_picker_defines.names.gui.red_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local g_textfield = g_bar_container[color_picker_defines.names.gui.green_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local b_textfield = b_bar_container[color_picker_defines.names.gui.blue_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		if r_textfield and g_textfield and b_textfield then
			local r = tonumber(r_textfield.text)
			local g = tonumber(g_textfield.text)
			local b = tonumber(b_textfield.text)
			return convert_color_255_to_hex(r, g, b)
		end
	end
	return nil
end

-- Creates the contents of the RGB color bar in the given container.
local function create_rgb_bar_contents(bar_container, element_name_prefix, label_caption)
	local label_container = bar_container.add{type = "table", name = element_name_prefix .. color_picker_defines.names.gui.rgb_bar_label_container_postfix, style = "rgb_label_container_table_style", colspan = 2}
	label_container.add{type = "label", name = element_name_prefix .. color_picker_defines.names.gui.rgb_bar_label1_postfix, caption = label_caption}
	label_container.add{type = "label", name = element_name_prefix .. color_picker_defines.names.gui.rgb_bar_label2_postfix, caption = ":"}
	
	local button_table = bar_container.add{type = "table", name = element_name_prefix .. color_picker_defines.names.gui.rgb_bar_button_table_postfix, style = "rgb_button_table_style", colspan = 16}
	for i = 0, 15, 1 do
		button_table.add{type = "button", name = get_rgb_bar_button_name(element_name_prefix, i), style = "rgb_bar_button_off_style"}
	end
	
	bar_container.add{type = "textfield", name = element_name_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix, style = "rgb_value_textfield_style", text = 0}
end

-- Adds a color picker under a GUI element. If there is already a GUI element with the same name as container_name, nothing will be done.
-- Returns the color picker container if it is successfully created.
local function add_instance(data)
	assert(data.parent)
	assert(data.container_name)
	
	local parent = data.parent
	if parent[data.container_name] then
		return nil
	end
	
	local container = parent.add{type = "flow", name = data.container_name, direction = "vertical"}
	
	-- Frame.
	local frame = container.add{type = "frame", name = color_picker_defines.names.gui.frame, style = "color_picker_frame_style", direction = "vertical", caption = data.title_caption or {"gui-train.color"}}
	
	-- Color palettes.
	local color_palette_table = frame.add{type = "table", name = color_picker_defines.names.gui.color_palette_table, style = "color_palette_table_style", colspan = 13}
	-- Black palettes.
	for column = 1, 13, 1 do
		color_palette_table.add{type = "button", name = get_color_palette_button_name(0, 0, 0) .. "-column-" .. column, style = "color_0_0_0_button_style", tooltip = "(0, 0, 0)"}
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
		local style_name = "color_" .. current_grayscale_value .. "_" .. current_grayscale_value .. "_" .. current_grayscale_value .. "_button_style"
		local tooltip = "(" .. current_grayscale_value .. ", " .. current_grayscale_value .. ", " .. current_grayscale_value .. ")"
		color_palette_table.add{type = "button", name = button_name, style = style_name, tooltip = tooltip}
		-- Colors.
		for column = 2, 13, 1 do
			local current_components = color_components_in_rows[column - 1]
			local r = current_components[1][row - 1]
			local g = current_components[2][row - 1]
			local b = current_components[3][row - 1]
			button_name = get_color_palette_button_name(r, g, b)
			style_name = "color_" .. r .. "_" .. g .. "_" .. b .. "_button_style"
			tooltip = "(" .. r .. ", " .. g .. ", " .. b .. ")"
			color_palette_table.add{type = "button", name = button_name, style = style_name, tooltip = tooltip}
		end
	end
	-- White palettes.
	for column = 1, 13, 1 do
		color_palette_table.add{type = "button", name = get_color_palette_button_name(255, 255, 255) .. "-column-" .. column, style = "color_255_255_255_button_style", tooltip = "(255, 255, 255)"}
	end
	
	-- Red bar.
	local bar_container = frame.add{type = "flow", name = color_picker_defines.names.gui.red_bar_container, style = "rgb_bar_container_flow_style", direction = "horizontal"}
	bar_container.style.top_padding = 20
	create_rgb_bar_contents(bar_container, color_picker_defines.names.gui.red_bar_contents_prefix, {"red", ":"})
	
	-- Green bar.
	bar_container = frame.add{type = "flow", name = color_picker_defines.names.gui.green_bar_container, style = "rgb_bar_container_flow_style", direction = "horizontal"}
	create_rgb_bar_contents(bar_container, color_picker_defines.names.gui.green_bar_contents_prefix, {"green", ":"})
	
	-- Blue bar.
	bar_container = frame.add{type = "flow", name = color_picker_defines.names.gui.blue_bar_container, style = "rgb_bar_container_flow_style", direction = "horizontal"}
	create_rgb_bar_contents(bar_container, color_picker_defines.names.gui.blue_bar_contents_prefix, {"blue", ":"})
	
	-- Hex value.
	local hex_container = frame.add{type = "flow", name = color_picker_defines.names.gui.hex_container, style = "rgb_bar_container_flow_style", direction = "horizontal"}
	hex_container.add{type = "label", name = color_picker_defines.names.gui.hex_label, style = "color_picker_hex_label_style", caption = {"gui.color-picker_hex"}}
	hex_container.add{type = "textfield", name = color_picker_defines.names.gui.hex_value_textfield, text = "000000"}
	-- Style of the textfield is set in set_color.
	
	-- Result container.
	local show_ok_button = data.show_ok_button
	local result_container = frame.add{type = "flow", name = color_picker_defines.names.gui.result_container, style = "color_picker_result_container_flow_style", direction = "horizontal"}
	-- Result label.
	local result_label = result_container.add{type = "label", name = color_picker_defines.names.gui.result_label, caption = data.result_caption or {"gui.color-picker_result-text"}}
	if show_ok_button then
		result_label.style = "color_picker_result_with_ok_button_label_style"
	else
		result_label.style = "color_picker_result_without_ok_button_label_style"
	end
	-- OK button.
	if show_ok_button then
		result_container.add{type = "button", name = color_picker_defines.names.gui.ok_button, style = "color_picker_result_ok_button_style", caption = {"gui.ok"}}
	end
	
	-- Set color.
	local color
	if data.color then
		color = data.color
	elseif data.hex_color then
		if is_valid_hex_color(data.hex_color) then
			local r, g, b = convert_hex_to_color_255(data.hex_color)
			color = convert_color_255_to_color(r, g, b)
		else
			error(incorrect_hex_color_message)
		end
	else
		color = {r = 1, g = 1, b = 1}
	end
	set_color(container, color)
	
	return container
end

-- Returns the current RGB (0 - 255) from the RGB bar textfields.
local function get_rgb_from_bar_textfields(color_picker_frame)
	local red_bar_container = color_picker_frame[color_picker_defines.names.gui.red_bar_container]
	local green_bar_container = color_picker_frame[color_picker_defines.names.gui.green_bar_container]
	local blue_bar_container = color_picker_frame[color_picker_defines.names.gui.blue_bar_container]
	if red_bar_container and green_bar_container and blue_bar_container then
		local r_textfield = red_bar_container[color_picker_defines.names.gui.red_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local g_textfield = green_bar_container[color_picker_defines.names.gui.green_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		local b_textfield = blue_bar_container[color_picker_defines.names.gui.blue_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
		if r_textfield and g_textfield and b_textfield then
			return tonumber(r_textfield.text), tonumber(g_textfield.text), tonumber(b_textfield.text)
		end
	end
	return nil, nil, nil
end

-- Handler of the on_gui_click event.
local function on_gui_click(event)
	local element = event.element
	local player_index = event.player_index
	
	-- Is the element an OK button?
	if element.name == color_picker_defines.names.gui.ok_button then
		-- button -> result_container -> frame -> container
		local result_container = element.parent
		if result_container then
			local frame = result_container.parent
			if frame and frame.name == color_picker_defines.names.gui.frame then
				local container = frame.parent
				if container then
					local r_bar_container = frame[color_picker_defines.names.gui.red_bar_container]
					local g_bar_container = frame[color_picker_defines.names.gui.green_bar_container]
					local b_bar_container = frame[color_picker_defines.names.gui.blue_bar_container]
					if r_bar_container and g_bar_container and b_bar_container then
						local r_textfield = r_bar_container[color_picker_defines.names.gui.red_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
						local g_textfield = g_bar_container[color_picker_defines.names.gui.green_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
						local b_textfield = b_bar_container[color_picker_defines.names.gui.blue_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix]
						if r_textfield and g_textfield and b_textfield then
							local r = tonumber(r_textfield.text)
							local g = tonumber(g_textfield.text)
							local b = tonumber(b_textfield.text)
							local color = convert_color_255_to_color(r, g, b)
							local hex = convert_color_255_to_hex(r, g, b)
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
	
	-- Is the element a color palette button?
	-- button -> table -> frame
	local button_table = element.parent
	if button_table then
		local frame = button_table.parent
		if frame and frame.name == color_picker_defines.names.gui.frame then
			local container = frame.parent
			if container then
				local r, g, b = string.match(element.name, color_picker_defines.match_patterns.gui.color_palette_button)
				if r and g and b then
					r = tonumber(r)
					g = tonumber(g)
					b = tonumber(b)
					set_color_255(frame, r, g, b)
					raise_on_color_changed_event_255(container, r, g, b, player_index)
					return
				end
			end
		end
	end
	
	-- Is the element a button on the RGB bars?
	-- button -> table -> bar_container -> frame
	if button_table then
		local bar_container = button_table.parent
		if bar_container then
			local frame = bar_container.parent
			if frame and frame.name == color_picker_defines.names.gui.frame then
				local container = frame.parent
				if container then
					local current_r, current_g, current_b = get_rgb_from_bar_textfields(frame)
					if current_r and current_g and current_b then
						-- Red?
						local i = string.match(element.name, color_picker_defines.match_patterns.gui.red_bar_button)
						if i then
							current_r = tonumber(i * (255 / 15))
							set_color_255(frame, current_r, current_g, current_b)
							raise_on_color_changed_event_255(container, current_r, current_g, current_b, player_index)
							return
						else
							-- Green?
							i = string.match(element.name, color_picker_defines.match_patterns.gui.green_bar_button)
							if i then
								current_g = tonumber(i * (255 / 15))
								set_color_255(frame, current_r, current_g, current_b)
								raise_on_color_changed_event_255(container, current_r, current_g, current_b, player_index)
								return
							else
								-- Blue?
								i = string.match(element.name, color_picker_defines.match_patterns.gui.blue_bar_button)
								if i then
									current_b = tonumber(i * (255 / 15))
									set_color_255(frame, current_r, current_g, current_b)
									raise_on_color_changed_event_255(container, current_r, current_g, current_b, player_index)
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

-- Restricts the text of the given textfield to be numeric, between 0 and 255 inclusively, and updates the color.
-- Returns whether the textfield is really a textfield in a RGB bar so that the color can be updated.
local function on_rgb_bar_textfield_text_changed(textfield, is_r, is_g, player_index)
	-- Textfield -> bar_container -> frame
	local bar_container = textfield.parent
	if bar_container then
		local frame = bar_container.parent
		if frame and frame.name == color_picker_defines.names.gui.frame then
			local container = frame.parent
			if container then
				-- Restrict the text to be numberic and is 0 - 255.
				local value = tonumber(string.match(textfield.text, "%d*"))
				if value == nil then
					value = 0
				else
					value = math.min(math.max(value, 0), 255)
				end
				-- Get the current RGB and replace one of them by value.
				local current_r, current_g, current_b = get_rgb_from_bar_textfields(frame)
				if is_r then
					current_r = value
				elseif is_g then
					current_g = value
				else
					current_b = value
				end
				if current_r and current_g and current_b then
					set_color_255(frame, current_r, current_g, current_b)
					raise_on_color_changed_event_255(container, current_r, current_g, current_b, player_index)
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
	if element.name == color_picker_defines.names.gui.red_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix then
		if on_rgb_bar_textfield_text_changed(element, true, false, player_index) then
			return
		end
	end
	
	-- Green bar textfield?
	if element.name == color_picker_defines.names.gui.green_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix then
		if on_rgb_bar_textfield_text_changed(element, false, true, player_index) then
			return
		end
	end
	
	-- Blue bar textfield?
	if element.name == color_picker_defines.names.gui.blue_bar_contents_prefix .. color_picker_defines.names.gui.rgb_bar_textfield_postfix then
		if on_rgb_bar_textfield_text_changed(element, false, false, player_index) then
			return
		end
	end
	
	-- Hex value textfield?
	if element.name == color_picker_defines.names.gui.hex_value_textfield then
		-- Textfield -> hex_container -> frame
		local hex_container = element.parent
		if hex_container then
			local frame = hex_container.parent
			if frame and frame.name == color_picker_defines.names.gui.frame then
				local container = frame.parent
				if container then
					-- Restrict the text to be numberic and A-F (a-f) only, and also contains at most 6 characters.
					element.text = string.sub(string.gsub(element.text, '[^0-9a-fA-F]', ""), 1, 6)
					-- To uppercase.
					element.text = string.upper(element.text)
					
					-- Is valid hex value for color?
					local is_valid = string.len(element.text) == 6
					if is_valid then
						-- Convert hex to RGB. Set color and raise event.
						local r, g, b = convert_hex_to_color_255(element.text)
						set_color_255(frame, r, g, b)
						raise_on_color_changed_event_255(container, r, g, b, player_index)
					else
						element.style = "color_picker_hex_value_invalid_textfield_style"
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

-- Registers handler to the on_init event, which is called when a new game is started.
script.on_init(function()
	get_or_load_on_color_changed_event_id()
	get_or_load_on_ok_button_clicked_event_id()
end)

-- Registers handler to the on_load event, which is called when an existing game is loaded.
script.on_load(function()
	get_or_load_on_color_changed_event_id()
	get_or_load_on_ok_button_clicked_event_id()
end)

-- This mod provides shared functions via remote interface.
remote.add_interface("color-picker",
{
	-- Adds a color picker under a GUI element. If there is already a GUI element with the same name as container_name, nothing will be done.
	--	Parameters:
	--		Table with the following fields:
	-- 			parent :: LuaGuiElement: The GUI element where the color picker will be added to.
	-- 			container_name :: string: The GUI element name of the color picker container. For example, this can be (your mod name) + "_color-picker".
	--			title_caption :: string or LocalisedString (optional): Title of the color picker. If not provided, localised "Color" will be used.
	--			result_caption :: string or LocalisedString (optional): Caption of the result. If not provided, localised "@@@ Result Color @@@" will be used.
	--  		color :: Color (optional): The color this color picker is representing. The value of "a" will be ignored if provided.
	--			hex_color :: string (optional): The hexadecimal color this color picker is representing (e.g. "FF0000"). It is used only if "color" is not provided. If both "color" and it are not provided, the color white will be used.
	--			show_ok_button :: boolean (optional): Whether a OK button should be shown at the bottom. Default is false. The button will not do anything, but the on_ok_button_clicked event will be called when it is clicked. It is up to you to do anything with it. For example, you can simply destroy the container, i.e. close the color picker.
	--	Returns:
	--		The GUI element of the color picker container if it is successfully created.
	add_instance = add_instance,
	
	-- Sets the current color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--		color :: Color: The desired color.
	set_color = set_color,
	
	-- Sets the current hexadecimal color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuaGuiElement: The element of color picker container.
	--		hex_color :: string: The hexadecimal representation of desired color (e.g. "FF0000").
	set_hex_color = set_hex_color,
	
	-- Gets the current color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--	Returns:
	--		The color represented by the color picker.
	get_color = get_color,
	
	-- Gets the current hexadecimal color represented by the color picker of the given container.
	--	Parameters:
	--		color_picker_container :: LuiGuiElement: The element of color picker container.
	--	Returns:
	--		The hexadecimal color (e.g. "FF0000") represented by the color picker.
	get_hex_color = get_hex_color,
	
	-- Called when the color of a color picker is changed by player.
	--	Contains:
	--		container :: LuaGuiElement: The GUI element of the color picker's container.
	--		color :: Color: The updated color represented by the color picker.
	--		hex_color :: string: The hexadecimal representation of color (e.g. "FF0000").
	--		player_index :: uint: The index of the player who did the change.
	on_color_updated = get_or_load_on_color_changed_event_id,
	
	-- Called when the OK button of a color picker is clicked by player.
	-- 	Contains:
	--		container :: LuaGuiElement: The GUI element of the color picker's container.
	--		color :: Color: The current color represented by the color picker.
	--		hex_color :: string: The hexadecimal representation of color (e.g. "FF0000").
	--		player_index :: uint: The index of the player who clicked the button.
	on_ok_button_clicked = get_or_load_on_ok_button_clicked_event_id,
})