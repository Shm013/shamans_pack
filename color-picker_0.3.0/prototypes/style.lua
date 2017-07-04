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
		parent = "button_style",
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
				filename = "__core__/sound/listbox-click.ogg",
				volume = 1
			}
		}
	}
end
-- Makes multiple color button styles for a column of given zero-based index.
local function make_color_button_styles_for_column(default_style, column, values_r, values_g, values_b)
	for i = 1, 9, 1 do
		default_style["color_" .. values_r[i] .. "_" .. values_g[i] .. "_" .. values_b[i] .. "_button_style"] = make_color_button_style_for_rgb(values_r[i], values_g[i], values_b[i])
	end
end

-- Common variables.
local color_palette_width = 15
local color_palette_column_count = 13
local rgb_label_container_width = 40
local rgb_bar_button_width = 10
local rgb_bar_button_height = 15
local rgb_bar_button_count = 16
local rgb_value_textfield_width = 34
local rgb_container_horizontal_spacing = 8
-- The widest element.
local rgb_container_total_width = rgb_label_container_width + rgb_container_horizontal_spacing + rgb_bar_button_width * rgb_bar_button_count + rgb_container_horizontal_spacing + rgb_value_textfield_width
local hex_textfield_width = 80
local hex_label_width = rgb_container_total_width - rgb_container_horizontal_spacing - hex_textfield_width
local result_ok_button_width = 60
local result_label_without_ok_button_width = rgb_container_total_width
local result_label_with_ok_button_width = rgb_container_total_width - rgb_container_horizontal_spacing - result_ok_button_width

local color_palette_table_left_padding = math.floor((rgb_container_total_width - (color_palette_width * color_palette_column_count)) / 2)

-- Create styles.
local default_style = data.raw["gui-style"].default
-- The color picker panel button style.
default_style.small_color_picker_panel_button_style = 
{
    type = "button_style",
	parent = "button_style",
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
default_style.color_picker_frame_style =
{
	type = "frame_style",
	parent = "frame_style",
	horizontal_spacing = 0,
	resize_row_to_width = true
}
-- Style of the color palette table.
default_style.color_palette_table_style =
{
	type = "table_style",
	parent = "table_style",
	scalable = false,
	vertical_spacing = 0,
	horizontal_spacing = 0,
	left_padding = color_palette_table_left_padding
}
-- Styles of each color palette.
-- Grayscale
default_style.color_0_0_0_button_style = make_color_button_style_for_rgb(0, 0, 0)
default_style.color_26_26_26_button_style = make_color_button_style_for_rgb(26, 26, 26)
default_style.color_51_51_51_button_style = make_color_button_style_for_rgb(51, 51, 51)
default_style.color_77_77_77_button_style = make_color_button_style_for_rgb(77, 77, 77)
default_style.color_102_102_102_button_style = make_color_button_style_for_rgb(102, 102, 102)
default_style.color_128_128_128_button_style = make_color_button_style_for_rgb(128, 128, 128)
default_style.color_153_153_153_button_style = make_color_button_style_for_rgb(153, 153, 153)
default_style.color_179_179_179_button_style = make_color_button_style_for_rgb(179, 179, 179)
default_style.color_204_204_204_button_style = make_color_button_style_for_rgb(204, 204, 204)
default_style.color_230_230_230_button_style = make_color_button_style_for_rgb(230, 230, 230)
default_style.color_255_255_255_button_style = make_color_button_style_for_rgb(255, 255, 255)
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

-- Style of the RGB bar container (flow).
default_style.rgb_bar_container_flow_style =
{
	type = "flow_style",
	parent = "flow_style",
	width = color_picker_frame_width,
	scalable = false,
	horizontal_spacing = rgb_container_horizontal_spacing
}
-- Style of the RGB label container (table).
default_style.rgb_label_container_table_style =
{
	type = "table_style",
	parent = "table_style",
	width = rgb_label_container_width,
	scalable = false,
	horizontal_spacing = 0,
	top_padding = 4,
}
-- Style of the RGB bar button table.
default_style.rgb_button_table_style =
{
	type = "table_style",
	parent = "table_style",
	scalable = false,
	horizontal_spacing = 0,
	top_padding = 8
}
-- RGB bar buttons - on.
default_style.rgb_bar_button_off_style =
{
	type = "button_style",
	parent = "button_style",
	scalable = false,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
	width = rgb_bar_button_width,
	height = rgb_bar_button_height,
	left_click_sound =
	{
		{
			filename = "__core__/sound/listbox-click.ogg",
			volume = 1
		}
	}
}
-- RGB bar buttons - off.
default_style.rgb_bar_button_on_style =
{
	type = "button_style",
	parent = "rgb_bar_button_off_style",
	default_graphical_set =
	{
		type = "composition",
        filename = "__core__/graphics/gui.png",
        priority = "extra-high-no-scale",
        corner_size = {3, 3},
        position = {0, 8}
	}
}

-- RGB value textfield.
default_style.rgb_value_textfield_style =
{
	type = "textfield_style",
	parent = "textfield_style",
	width = rgb_value_textfield_width,
	scalable = false
}

-- Style of the hex label.
default_style.color_picker_hex_label_style =
{
	type = "label_style",
	parent = "label_style",
	width = hex_label_width,
	scalable = false,
	top_padding = 4
}
-- Style of the hex value textfield when the value is valid.
default_style.color_picker_hex_value_valid_textfield_style =
{
	type = "textfield_style",
	parent = "textfield_style",
	width = hex_textfield_width,
	scalable = false
}
-- Style of the hex value textfield when the value is invalid.
default_style.color_picker_hex_value_invalid_textfield_style =
{
	type = "textfield_style",
	parent = "color_picker_hex_value_valid_textfield_style",
	font_color = {r = 1, g = 0, b = 0}
}

-- Style of the result container (flow).
default_style.color_picker_result_container_flow_style =
{
	type = "flow_style",
	parent = "flow_style",
	scalable = false,
	left_padding = 0,
	right_padding = 0,
	top_padding = 16,
	horizontal_spacing = rgb_container_horizontal_spacing
}
-- Style of the result label without OK button.
default_style.color_picker_result_without_ok_button_label_style =
{
	type = "label_style",
	parent = "label_style",
	align = "center",
	width = result_label_without_ok_button_width,
	scalable = false
}
-- Style of the result label with OK button.
default_style.color_picker_result_with_ok_button_label_style =
{
	type = "label_style",
	parent = "label_style",
	top_padding = 10,
	width = result_label_with_ok_button_width,
	scalable = false
}
-- Style of the OK button.
default_style.color_picker_result_ok_button_style =
{
	type = "button_style",
	parent = "button_style",
	width = result_ok_button_width,
	scalable = false,
	left_click_sound =
	{
		{
			filename = "__core__/sound/gui-click.ogg",
			volume = 1
		}
	}
}