local style_names = color_picker_defines.names.style

-- Makes and returns a graphical set according to the given properties.
local function extract_monolith(file_name, x, y, width, height, tint)
	return
	{
		type = "monolith",
		top_monolith_border = 0,
		right_monolith_border = 0,
		bottom_monolith_border = 0,
		left_monolith_border = 0,
		monolith_image =
		{
			filename = color_picker_defines.mod_directory .. "/graphics/" .. file_name,
			priority = "extra-high-no-scale",
			width = width,
			height = height,
			x = x,
			y = y,
			tint = tint or {r = 1, g = 1, b = 1, a = 1}
		},
	}
end

-- Makes and returns a color button style for the given RGB (0 - 255)
local function make_color_button_style_for_rgb(r, g, b)
	local tint = {r = r / 255, g = g / 255, b = b / 255}
	return
	{
		type = "button_style",
		parent = "button",
		scalable = false,
		top_padding = 0,
		right_padding = 0,
		bottom_padding = 0,
		left_padding = 0,
		width = 15,
		height = 15,
		default_graphical_set = extract_monolith("color_palette.png", 0, 0, 15, 15, tint),
		hovered_graphical_set = extract_monolith("color_palette.png", 0, 0, 15, 15, tint),
		clicked_graphical_set = extract_monolith("color_palette.png", 0, 0, 15, 15, tint),
		left_click_sound =
		{
			{
				filename = "__core__/sound/list-box-click.ogg",
				volume = 1
			}
		}
	}
end
-- Makes multiple color button styles for a column of given zero-based index.
local function make_color_button_styles_for_column(default_style, column, values_r, values_g, values_b)
	for i = 1, 9, 1 do
		default_style[style_names.color_palette_button_style_prefix .. values_r[i] .. "_" .. values_g[i] .. "_" .. values_b[i]] = make_color_button_style_for_rgb(values_r[i], values_g[i], values_b[i])
	end
end

-- Common variables.
local color_palette_width = 15
local color_palette_column_count = 13
local rgba_label_container_width = 40
local rgba_bar_button_width = 10
local rgba_bar_button_height = 15
local rgba_bar_button_count = 16
local rgba_value_textfield_width = 34
local rgba_container_horizontal_spacing = 8
-- The widest element.
local rgba_container_total_width = rgba_label_container_width + rgba_container_horizontal_spacing + rgba_bar_button_width * rgba_bar_button_count + rgba_container_horizontal_spacing + rgba_value_textfield_width
local hex_textfield_width = 80
local hex_label_width = rgba_container_total_width - rgba_container_horizontal_spacing - hex_textfield_width
local color_palette_table_left_padding = math.floor((rgba_container_total_width - (color_palette_width * color_palette_column_count)) / 2)

local result_frame_width = hex_textfield_width
local ok_button_width = 60
local preset_button_width = color_picker_defines.font_sizes.saved_preset + 4
local presets_and_result_horizontal_spacing = rgba_container_total_width - result_frame_width - (preset_button_width * color_picker_defines.presets_per_row)

-- Create styles.
local default_style = data.raw["gui-style"].default
-- The color picker panel button style.
default_style[style_names.small_color_picker_panel_button_style] = 
{
    type = "button_style",
	parent = "button",
	scalable = false,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
	width = 20,
	height = 20,
	default_graphical_set = extract_monolith("small-color-picker-panel.png", 0, 0, 20, 20, {r = 1, g = 1, b = 1}),
	hovered_graphical_set = extract_monolith("small-color-picker-panel.png", 20, 0, 20, 20, {r = 1, g = 1, b = 1}),
	clicked_graphical_set = extract_monolith("small-color-picker-panel.png", 40, 0, 20, 20, {r = 1, g = 1, b = 1}),
	disabled_graphical_set = extract_monolith("small-color-picker-panel.png", 60, 0, 20, 20, {r = 1, g = 1, b = 1}),
}
-- Style of the color picker frame. No horizontal spacing.
default_style[style_names.color_picker_frame_style] =
{
	type = "frame_style",
	parent = "frame",
	horizontal_spacing = 0,
	resize_row_to_width = true
}
-- Style of the color palette table.
default_style[style_names.color_palette_table_style] =
{
	type = "table_style",
	parent = "table",
	scalable = false,
	vertical_spacing = 0,
	horizontal_spacing = 0,
	left_padding = color_palette_table_left_padding
}
-- Styles of each color palette.
-- Grayscale
default_style[style_names.color_palette_button_style_prefix .. "0_0_0"] = make_color_button_style_for_rgb(0, 0, 0)
default_style[style_names.color_palette_button_style_prefix .. "26_26_26"] = make_color_button_style_for_rgb(26, 26, 26)
default_style[style_names.color_palette_button_style_prefix .. "51_51_51"] = make_color_button_style_for_rgb(51, 51, 51)
default_style[style_names.color_palette_button_style_prefix .. "77_77_77"] = make_color_button_style_for_rgb(77, 77, 77)
default_style[style_names.color_palette_button_style_prefix .. "102_102_102"] = make_color_button_style_for_rgb(102, 102, 102)
default_style[style_names.color_palette_button_style_prefix .. "128_128_128"] = make_color_button_style_for_rgb(128, 128, 128)
default_style[style_names.color_palette_button_style_prefix .. "153_153_153"] = make_color_button_style_for_rgb(153, 153, 153)
default_style[style_names.color_palette_button_style_prefix .. "179_179_179"] = make_color_button_style_for_rgb(179, 179, 179)
default_style[style_names.color_palette_button_style_prefix .. "204_204_204"] = make_color_button_style_for_rgb(204, 204, 204)
default_style[style_names.color_palette_button_style_prefix .. "230_230_230"] = make_color_button_style_for_rgb(230, 230, 230)
default_style[style_names.color_palette_button_style_prefix .. "255_255_255"] = make_color_button_style_for_rgb(255, 255, 255)
-- Colors. Ignore the first and last rows.
local full_values = color_picker_defines.color_values.full
local half_values = color_picker_defines.color_values.half
local zero_values = color_picker_defines.color_values.zero
-- R 100%, G 0%, B 0%
make_color_button_styles_for_column(default_style, 1, full_values, zero_values, zero_values)
-- R 100%, G 50%, B 0%
make_color_button_styles_for_column(default_style, 2, full_values, half_values, zero_values)
-- R 100%, G 100%, B 0%
make_color_button_styles_for_column(default_style, 3, full_values, full_values, zero_values)
-- R 50%, G 100%, B 0%
make_color_button_styles_for_column(default_style, 4, half_values, full_values, zero_values)
-- R 0%, G 100%, B 0%
make_color_button_styles_for_column(default_style, 5, zero_values, full_values, zero_values)
-- R 0%, G 100%, B 50%
make_color_button_styles_for_column(default_style, 6, zero_values, full_values, half_values)
-- R 0%, G 100%, B 100%
make_color_button_styles_for_column(default_style, 7, zero_values, full_values, full_values)
-- R 0%, G 50%, B 100%
make_color_button_styles_for_column(default_style, 8, zero_values, half_values, full_values)
-- R 0%, G 0%, B 100%
make_color_button_styles_for_column(default_style, 9, zero_values, zero_values, full_values)
-- R 50%, G 0%, B 100%
make_color_button_styles_for_column(default_style, 10, half_values, zero_values, full_values)
-- R 100%, G 0%, B 100%
make_color_button_styles_for_column(default_style, 11, full_values, zero_values, full_values)
-- R 100%, G 0%, B 50%
make_color_button_styles_for_column(default_style, 12, full_values, zero_values, half_values)

-- Style of the RGBA bar container (flow).
default_style[style_names.rgba_bar_container_flow_style] =
{
	type = "horizontal_flow_style",
	parent = "horizontal_flow",
	scalable = false,
	horizontal_spacing = rgba_container_horizontal_spacing
}
-- Style of the RGBA label container (table).
default_style[style_names.rgba_label_container_table_style] =
{
	type = "table_style",
	parent = "table",
	width = rgba_label_container_width,
	scalable = false,
	horizontal_spacing = 0,
	top_padding = 4,
}
-- Style of the RGBA bar button table.
default_style[style_names.rgba_button_table_style] =
{
	type = "table_style",
	parent = "table",
	scalable = false,
	horizontal_spacing = 0,
	top_padding = 8
}
-- RGBA bar buttons - on.
default_style[style_names.rgba_bar_button_off_style] =
{
	type = "button_style",
	parent = "button",
	scalable = false,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
	width = rgba_bar_button_width,
	height = rgba_bar_button_height,
	left_click_sound =
	{
		{
			filename = "__core__/sound/list-box-click.ogg",
			volume = 1
		}
	}
}
-- RGBA bar buttons - off.
default_style[style_names.rgba_bar_button_on_style] =
{
	type = "button_style",
	parent = style_names.rgba_bar_button_off_style,
	default_graphical_set =
	{
		type = "composition",
        filename = "__core__/graphics/gui.png",
        priority = "extra-high-no-scale",
        corner_size = {3, 3},
        position = {0, 8}
	}
}

-- RGBA value textfield.
default_style[style_names.rgba_value_textfield_style] =
{
	type = "textfield_style",
	parent = "textfield",
	width = rgba_value_textfield_width,
	scalable = false
}

-- Style of the hex label.
default_style[style_names.hex_label_style] =
{
	type = "label_style",
	parent = "label",
	width = hex_label_width,
	scalable = false,
	top_padding = 4
}
-- Style of the hex value textfield when the value is valid.
default_style[style_names.hex_value_valid_textfield_style] =
{
	type = "textfield_style",
	parent = "textfield",
	width = hex_textfield_width,
	scalable = false
}
-- Style of the hex value textfield when the value is invalid.
default_style[style_names.hex_value_invalid_textfield_style] =
{
	type = "textfield_style",
	parent = "invalid_value_textfield",
	width = hex_textfield_width,
	scalable = false
}
-- Style of the presets-and-result container (flow).
default_style[style_names.presets_and_result_container_flow_style] =
{
	type = "horizontal_flow_style",
	parent = "horizontal_flow",
	scalable = false,
	left_padding = 0,
	right_padding = 0,
	top_padding = 16,
	horizontal_spacing = presets_and_result_horizontal_spacing
}
-- Style of the presets container (flow).
default_style[style_names.presets_container_flow_style] =
{
	type = "vertical_flow_style",
	parent = "vertical_flow",
	scalable = false,
	width = preset_button_width * color_picker_defines.presets_per_row,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
}
-- Style of the presets table.
default_style[style_names.presets_table_style] =
{
	type = "table_style",
	parent = "table",
	scalable = false,
	width = preset_button_width * color_picker_defines.presets_per_row,
	horizontal_spacing = 0,
	vertical_spacing = 0,
	cell_padding = 0,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
}
-- Style of saved preset button.
default_style[style_names.saved_preset_button_style] =
{
	type = "button_style",
	parent = "slot_button",
	width = preset_button_width,
	height = preset_button_width,
	scalable = false,
	align = "left",
	font = color_picker_defines.names.font.simple_square_small,
	hovered_font_color = nil,
	clicked_font_color = nil,
	disabled_font_color = nil,
	left_click_sound =
	{
		{
			filename = "__core__/sound/gui-click.ogg",
			volume = 1
		}
	}
}
-- Style of the add-to-preset button.
default_style[style_names.add_to_preset_button_style] =
{
	type = "button_style",
	parent = "button",
	width = preset_button_width,
	height = preset_button_width,
	scalable = false,
	align = "left",
	top_padding = 1,
	right_padding = 1,
	bottom_padding = 1,
	left_padding = 1,
	font = color_picker_defines.names.font.simple_square_tiny,
	hovered_font_color = nil,
	clicked_font_color = nil,
	disabled_font_color = nil,
	left_click_sound =
	{
		{
			filename = "__core__/sound/gui-click.ogg",
			volume = 1
		}
	}
}
-- Style of the result container (flow).
default_style[style_names.result_container_flow_style] =
{
	type = "vertical_flow_style",
	parent = "vertical_flow",
	scalable = false,
	align = "right",
	left_padding = 0,
	right_padding = 0,
	top_padding = 0,
	vertical_spacing = 12
}
-- Style of the result frame.
default_style[style_names.result_frame_style] =
{
	type = "frame_style",
	parent = "frame",
	align = "center",
	width = result_frame_width,
	height = color_picker_defines.font_sizes.result + 3 * 2 + 3, -- Font size + top padding + bottom padding + something that makes it looks good.
	scalable = true, -- This looks better when screen size is changed (based on the screen height).
	font = color_picker_defines.names.font.simple_square,
	graphical_set =
	{
		type = "composition",
		filename = color_picker_defines.mod_directory .. "/graphics/reverse-frame.png",
		priority = "extra-high-no-scale",
        load_in_minimal_mode = true,
        corner_size = {3, 3},
        position = {0, 0}
	},
	-- Legacy, for old color pickers that were opened before v0.4.2.
	title_top_padding = 1,
	title_left_padding = 1,
	title_right_padding = 1,
	title_bottom_padding = 1,
}
-- Style of the result label container.
default_style[style_names.result_label_container_style] =
{
	type = "table_style",
	parent = "table",
	horizontal_spacing = 0
}
-- Style of the result label.
default_style[style_names.result_label_style] =
{
	type = "label_style",
	parent = "label",
	font = color_picker_defines.names.font.simple_square
}
-- Style of the OK button container (flow).
default_style[style_names.ok_button_container_flow_style] =
{
	type = "horizontal_flow_style",
	parent = "horizontal_flow",
	scalable = false,
	horizontal_spacing = 0
}
-- Style of the space before the OK button (flow).
default_style[style_names.ok_button_space_flow_style] =
{
	type = "horizontal_flow_style",
	parent = "horizontal_flow",
	scalable = false,
	width = result_frame_width - ok_button_width
}
-- Style of the OK button.
default_style[style_names.ok_button_style] =
{
	type = "button_style",
	parent = "button",
	width = ok_button_width,
	scalable = false,
	left_click_sound =
	{
		{
			filename = "__core__/sound/gui-click.ogg",
			volume = 1
		}
	}
}

-- Style of the change player color button.
default_style[style_names.change_player_color_button_style] = 
{
	type = "button_style",
	parent = "button",
	scalable = false,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
	width = 36,
	height = 36,
	default_graphical_set = extract_monolith("change-object-color.png", 0, 0, 36, 36),
	hovered_graphical_set = extract_monolith("change-object-color.png", 36, 0, 36, 36),
	clicked_graphical_set = extract_monolith("change-object-color.png", 72, 0, 36, 36),
	left_click_sound =
	{
		{
			filename = "__core__/sound/gui-click.ogg",
			volume = 1
		}
	}
}
-- Style of the change train stop color button.
default_style[style_names.change_train_stop_color_button_style] =
{
	type = "button_style",
	parent = style_names.change_player_color_button_style,
	default_graphical_set = extract_monolith("change-object-color.png", 0, 36, 36, 36),
	hovered_graphical_set = extract_monolith("change-object-color.png", 36, 36, 36, 36),
	clicked_graphical_set = extract_monolith("change-object-color.png", 72, 36, 36, 36),
}
-- Style of the change locomotive color button.
default_style[style_names.change_locomotive_color_button_style] =
{
	type = "button_style",
	parent = style_names.change_player_color_button_style,
	default_graphical_set = extract_monolith("change-object-color.png", 0, 72, 36, 36),
	hovered_graphical_set = extract_monolith("change-object-color.png", 36, 72, 36, 36),
	clicked_graphical_set = extract_monolith("change-object-color.png", 72, 72, 36, 36),
}
-- Style of the change cargo wagon color button.
default_style[style_names.change_cargo_wagon_color_button_style] =
{
	type = "button_style",
	parent = style_names.change_player_color_button_style,
	default_graphical_set = extract_monolith("change-object-color.png", 0, 108, 36, 36),
	hovered_graphical_set = extract_monolith("change-object-color.png", 36, 108, 36, 36),
	clicked_graphical_set = extract_monolith("change-object-color.png", 72, 108, 36, 36),
}
-- Style of the change fluid wagon color button.
default_style[style_names.change_fluid_wagon_color_button_style] =
{
	type = "button_style",
	parent = style_names.change_player_color_button_style,
	default_graphical_set = extract_monolith("change-object-color.png", 0, 144, 36, 36),
	hovered_graphical_set = extract_monolith("change-object-color.png", 36, 144, 36, 36),
	clicked_graphical_set = extract_monolith("change-object-color.png", 72, 144, 36, 36),
}