-- Here are the values that are shared across different files.
wagon_color_defines = {}

-- Mod ID.
wagon_color_defines.mod_id = "wagon-color"
-- Path to the mod's directory.
wagon_color_defines.mod_directory = "__wagon-color__"

-- Names that are reused in different parts of the scripts.
wagon_color_defines.names = {}

-- Setting names.
wagon_color_defines.names.setting =
{
	also_paste_color = wagon_color_defines.mod_id .. "_also-paste-color"
}

-- GUI element names.
wagon_color_defines.names.gui =
{
	change_color_container = wagon_color_defines.mod_id .. "_change-color-container",
	change_color_button = wagon_color_defines.mod_id .. "_change-color-button",
	color_picker = wagon_color_defines.mod_id .. "_color-picker"
}
-- GUI style names.
wagon_color_defines.names.gui_style =
{
	change_color_button = "change_wagon_color_button_style"
}