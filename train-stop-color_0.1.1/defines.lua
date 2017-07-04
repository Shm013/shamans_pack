-- Here are the values that are shared across different files.
train_stop_color_defines = {}

-- Mod ID.
train_stop_color_defines.mod_id = "train-stop-color"
-- Path to the mod's directory.
train_stop_color_defines.mod_directory = "__train-stop-color__"

-- Names that are reused in different parts of the scripts.
train_stop_color_defines.names = {}
-- GUI element names.
train_stop_color_defines.names.gui =
{
	change_color_container = train_stop_color_defines.mod_id .. "_change-color-container",
	change_color_button = train_stop_color_defines.mod_id .. "_change-color-button",
	color_picker = train_stop_color_defines.mod_id .. "_color-picker"
}
-- GUI style names.
train_stop_color_defines.names.gui_style =
{
	change_color_button = "change_train_stop_color_button_style"
}