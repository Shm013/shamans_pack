-- Makes and returns a graphical set according to the given properties.
local function extract_monolith(file_name, x, y, width, height)
	return
	{
		type = "monolith",
		top_monolith_border = 0,
		right_monolith_border = 0,
		bottom_monolith_border = 0,
		left_monolith_border = 0,
		monolith_image =
		{
			filename = train_stop_color_defines.mod_directory .. "/graphics/" .. file_name,
			priority = "extra-high-no-scale",
			width = width,
			height = height,
			x = x,
			y = y
		},
	}
end

-- Change train stop color button style.
data.raw["gui-style"].default[train_stop_color_defines.names.gui_style.change_color_button] =
{
	type = "button_style",
	parent = "button_style",
	scalable = false,
	top_padding = 0,
	right_padding = 0,
	bottom_padding = 0,
	left_padding = 0,
	width = 36,
	height = 36,
	default_graphical_set = extract_monolith("change-train-stop-color.png", 0, 0, 36, 36),
	hovered_graphical_set = extract_monolith("change-train-stop-color.png", 36, 0, 36, 36),
	clicked_graphical_set = extract_monolith("change-train-stop-color.png", 72, 0, 36, 36),
}