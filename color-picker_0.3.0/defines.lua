-- Here are the values that are shared across different files.
color_picker_defines = {}

-- Mod ID.
color_picker_defines.mod_id = "color-picker"
-- Path to the mod's directory.
color_picker_defines.mod_directory = "__color-picker__"

-- Values of red, green or blue components for the color palettes in each column.
-- The first and last rows are ignored because they are just complete black and white.
color_picker_defines.color_values =
{
	full = 	{51,	102,	153,	204,	255,	255,	255,	255,	255},
	half = 	{26,	51,		76,		102,	128,	153,	178,	204,	230},
	zero = 	{0,		0,		0,		0,		0,		51,		102,	153,	204}
}

-- Names that are reused in different parts of the scripts.
color_picker_defines.names = {}
-- GUI element names.
color_picker_defines.names.gui =
{
	frame = color_picker_defines.mod_id .. "_frame",
	color_palette_table = color_picker_defines.mod_id .. "_color-palette-table",
	color_palette_button = color_picker_defines.mod_id .. "_color-{r}-{g}-{b}",
	red_bar_container = color_picker_defines.mod_id .. "_red-bar-container",
	red_bar_contents_prefix = color_picker_defines.mod_id .. "_red-bar",
	green_bar_container = color_picker_defines.mod_id .. "_green-bar-container",
	green_bar_contents_prefix = color_picker_defines.mod_id .. "_green-bar",
	blue_bar_container = color_picker_defines.mod_id .. "_blue-bar-container",
	blue_bar_contents_prefix = color_picker_defines.mod_id .. "_blue-bar",
	rgb_bar_label_container_postfix = "-label-container",
	rgb_bar_label1_postfix = "-label1",
	rgb_bar_label2_postfix = "-label2",
	rgb_bar_button_table_postfix = "-button-table",
	rgb_bar_button_postfix = "-button-{i}",
	rgb_bar_textfield_postfix = "-textfield",
	hex_container = color_picker_defines.mod_id .. "_hex-container",
	hex_label = color_picker_defines.mod_id .. "_hex-label",
	hex_value_textfield = color_picker_defines.mod_id .. "_hex-textfield",
	result_container = color_picker_defines.mod_id .. "_result-container",
	result_label = color_picker_defines.mod_id .. "_result-label",
	ok_button = color_picker_defines.mod_id .. "_ok-button"
}

-- Patterns for matching strings.
color_picker_defines.match_patterns = {}
-- For matching GUI element names.
color_picker_defines.match_patterns.gui =
{
	color_palette_button = "color%-picker_color%-(%d+)%-(%d+)%-(%d+)%a*",
	red_bar_button = "color%-picker_red%-bar%-button%-(%d+)",
	green_bar_button = "color%-picker_green%-bar%-button%-(%d+)",
	blue_bar_button = "color%-picker_blue%-bar%-button%-(%d+)"
}