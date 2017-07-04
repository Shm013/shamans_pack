-- Here are the values that are shared across different files.
locomotive_color_defines = {}

-- Mod ID.
locomotive_color_defines.mod_id = "locomotive-color"
-- Path to the mod's directory.
locomotive_color_defines.mod_directory = "__locomotive-color__"

-- Names that are reused in different parts of the scripts.
locomotive_color_defines.names = {}
-- GUI element names.
locomotive_color_defines.names.gui =
{
	change_color_container = locomotive_color_defines.mod_id .. "_change-color-container",
	change_color_button = locomotive_color_defines.mod_id .. "_change-color-button",
	color_picker = locomotive_color_defines.mod_id .. "_color-picker"
}
-- GUI style names.
locomotive_color_defines.names.gui_style =
{
	change_color_button = "change_locomotive_color_button_style"
}