require("defines")

data:extend
{
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.make_color_pastable_between_wagon_and_others,
		setting_type = "startup",
		default_value = true,
		order = "a"
	},
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.add_color_mask_to_fluid_wagon,
		setting_type = "startup",
		default_value = true,
		order = "b"
	},

	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.enable_player_color_picker,
		setting_type = "runtime-per-user",
		default_value = true,
		order = "a"
	},
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.enable_train_stop_color_picker,
		setting_type = "runtime-per-user",
		default_value = true,
		order = "b"
	},
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.enable_locomotive_color_picker,
		setting_type = "runtime-per-user",
		default_value = true,
		order = "c"
	},
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.enable_cargo_wagon_color_picker,
		setting_type = "runtime-per-user",
		default_value = true,
		order = "d"
	},
	{
		type = "bool-setting",
		name = color_picker_defines.names.settings.enable_fluid_wagon_color_picker,
		setting_type = "runtime-per-user",
		default_value = true,
		order = "e"
	},
}