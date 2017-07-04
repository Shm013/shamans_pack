-- Here are the values that are shared across different files.
player_color_defines = {}

-- Mod ID.
player_color_defines.mod_id = "player-color"
-- Path to the mod's directory.
player_color_defines.mod_directory = "__player-color__"

-- Names that are reused in different parts of the scripts.
player_color_defines.names = {}
-- GUI element names.
player_color_defines.names.gui =
{
	change_color_button = player_color_defines.mod_id .. "_change-color-button",
	color_picker = player_color_defines.mod_id .. "_color-picker"
}
-- GUI style names.
player_color_defines.names.gui_style =
{
	change_color_button = "change_player_color_button_style"
}