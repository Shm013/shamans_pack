-- Here are the values that are shared across different files.
color_picker_defines = {}

-- Mod ID.
color_picker_defines.mod_id = "color-picker16"
-- Path to the mod's directory.
color_picker_defines.mod_directory = "__color-picker16__"

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

-- Settings names.
color_picker_defines.names.settings =
{
	make_color_pastable_between_wagon_and_others = color_picker_defines.mod_id .. "_make-color-pastable-between-wagon-and-others",
	add_color_mask_to_fluid_wagon = color_picker_defines.mod_id .. "_add-color-mask-to-fluid-wagon",
	
	enable_player_color_picker = color_picker_defines.mod_id .. "_enable-player-color-picker",
	enable_train_stop_color_picker = color_picker_defines.mod_id .. "_enable-train-stop-color-picker",
	enable_locomotive_color_picker = color_picker_defines.mod_id .. "_enable-locomotive-color-picker",
	enable_cargo_wagon_color_picker = color_picker_defines.mod_id .. "_enable-cargo-wagon-color-picker",
	enable_fluid_wagon_color_picker = color_picker_defines.mod_id .. "_enable-fluid-wagon-color-picker",
}

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
	alpha_bar_container = color_picker_defines.mod_id .. "_alpha-bar-container",
	alpha_bar_contents_prefix = color_picker_defines.mod_id .. "_alpha-bar",
	rgba_bar_label_container_postfix = "-label-container",
	rgba_bar_label1_postfix = "-label1",
	rgba_bar_label2_postfix = "-label2",
	rgba_bar_button_table_postfix = "-button-table",
	rgba_bar_button_postfix = "-button-{i}",
	rgba_bar_textfield_postfix = "-textfield",
	hex_container = color_picker_defines.mod_id .. "_hex-container",
	hex_label = color_picker_defines.mod_id .. "_hex-label",
	hex_value_textfield = color_picker_defines.mod_id .. "_hex-textfield",
	
	presets_and_result_container = color_picker_defines.mod_id .. "_presets-and-result-container",
	
	presets_container = color_picker_defines.mod_id .. "_presets-container",
	presets_label = color_picker_defines.mod_id .. "_presets-label",
	presets_table = color_picker_defines.mod_id .. "_presets-table",
	preset_button_prefix = color_picker_defines.mod_id .. "_preset-{i}",
	add_to_preset_button = color_picker_defines.mod_id .. "_add-to-preset-button",
	
	result_container = color_picker_defines.mod_id .. "_result-container",
	result_frame = color_picker_defines.mod_id .. "_result-frame",
	result_frame_label_container = color_picker_defines.mod_id .. "_result-frame-label-container",
	result_frame_label_1 = color_picker_defines.mod_id .. "_result-frame-label-1",
	result_frame_label_2 = color_picker_defines.mod_id .. "_result-frame-label-2",
	ok_button_container = color_picker_defines.mod_id .. "_ok-button-container",
	ok_button_space = color_picker_defines.mod_id .. "_ok-button-space",
	ok_button = color_picker_defines.mod_id .. "_ok-button",
	
	---------------------------
	
	name_preset_popup_frame = color_picker_defines.mod_id .. "_name-preset-popup-frame",
	name_preset_popup_table = color_picker_defines.mod_id .. "_name-preset-popup-table",
	name_preset_popup_name_label = color_picker_defines.mod_id .. "_name-preset-popup-name-label",
	name_preset_popup_name_textfield = color_picker_defines.mod_id .. "_name-preset-popup-name-textfield",
	name_preset_popup_color_label = color_picker_defines.mod_id .. "_name-preset-popup-color-label",
	name_preset_popup_color_frame = color_picker_defines.mod_id .. "_name-preset-popup-color-frame",
	name_preset_popup_color_frame_label_container = color_picker_defines.mod_id .. "_name-preset-popup-color-frame-label-container",
	name_preset_popup_color_frame_label_1 = color_picker_defines.mod_id .. "_name-preset-popup-color-frame-label-1",
	name_preset_popup_color_frame_label_2 = color_picker_defines.mod_id .. "_name-preset-popup-color-frame-label-2",
	
	name_preset_popup_buttons_container = color_picker_defines.mod_id .. "_name-preset-popup-buttons-container",
	name_preset_popup_delete_button = color_picker_defines.mod_id .. "_name-preset-popup-delete-button",
	name_preset_popup_confirm_button = color_picker_defines.mod_id .. "_name-preset-popup-confirm-button",
	name_preset_popup_cancel_button = color_picker_defines.mod_id .. "_name-preset-popup-cancel-button",
	
	---------------------------
	
	player_color_button = color_picker_defines.mod_id .. "_player-color-button",
	player_color_picker = color_picker_defines.mod_id .. "_player-color-picker",
	
	entity_color_container = color_picker_defines.mod_id .. "_entity-color-container",
	entity_color_button = color_picker_defines.mod_id .. "_entity-color-button",
	entity_color_picker = color_picker_defines.mod_id .. "_entity-color-picker",
}
-- Font names.
color_picker_defines.names.font =
{
	simple_square = color_picker_defines.mod_id .. "_simple-square",
	simple_square_small = color_picker_defines.mod_id .. "_simple-square-small",
	simple_square_tiny = color_picker_defines.mod_id .. "_simple-square-tiny",
}
-- Font file names.
color_picker_defines.names.font_file =
{
	simple_square = color_picker_defines.mod_id .. "_simple-square"
}
-- Style names.
color_picker_defines.names.style =
{
	small_color_picker_panel_button_style = "small_color_picker_panel_button_style",
	
	color_picker_frame_style = "color_picker_frame_style",
	color_palette_table_style = "color_picker_color_palette_table_style",
	color_palette_button_style_prefix = "color_picker_color_palette_button_style_",
	rgba_bar_container_flow_style = "color_picker_rgba_bar_container_flow_style",
	rgba_label_container_table_style = "color_picker_rgba_label_container_table_style",
	rgba_button_table_style = "color_picker_rgba_button_table_style",
	rgba_bar_button_off_style = "color_picker_rgba_bar_button_off_style",
	rgba_bar_button_on_style = "color_picker_rgba_bar_button_on_style",
	rgba_value_textfield_style = "color_picker_rgba_value_textfield_style",
	hex_label_style = "color_picker_hex_label_style",
	hex_value_valid_textfield_style = "color_picker_hex_value_valid_textfield_style",
	hex_value_invalid_textfield_style = "color_picker_hex_value_invalid_textfield_style",
	presets_and_result_container_flow_style = "color_picker_presets_and_result_container_flow_style",
	presets_container_flow_style = "color_picker_presets_container_flow_style",
	presets_table_style = "color_picker_presets_table_style",
	saved_preset_button_style = "color_picker_saved_preset_button_style",
	add_to_preset_button_style = "color_picker_add_to_preset_button_style",
	result_container_flow_style = "color_picker_result_container_flow_style",
	result_frame_style = "color_picker_result_frame_style",
	result_label_container_style = "color_picker_result_label_container_style",
	result_label_style = "color_picker_result_label_style",
	ok_button_container_flow_style = "color_picker_ok_button_container_flow_style",
	ok_button_space_flow_style = "color_picker_ok_button_space_flow_style",
	ok_button_style = "color_picker_ok_button_style",
	
	name_preset_popup_frame_style = "color_picker_name_preset_popup_frame_style",
	
	change_player_color_button_style = "color_picker_change_player_color_button_style",
	change_train_stop_color_button_style = "color_picker_change_train_stop_color_button_style",
	change_locomotive_color_button_style = "color_picker_change_locomotive_color_button_style",
	change_cargo_wagon_color_button_style = "color_picker_change_cargo_wagon_color_button_style",
	change_fluid_wagon_color_button_style = "color_picker_change_fluid_wagon_color_button_style",
}

-- Patterns for matching strings.
color_picker_defines.match_patterns = {}
-- For matching GUI element names.
color_picker_defines.match_patterns.gui =
{
	color_palette_button = "color%-picker16_color%-(%d+)%-(%d+)%-(%d+)%a*",
	red_bar_button = "color%-picker16_red%-bar%-button%-(%d+)",
	green_bar_button = "color%-picker16_green%-bar%-button%-(%d+)",
	blue_bar_button = "color%-picker16_blue%-bar%-button%-(%d+)",
	alpha_bar_button = "color%-picker16_alpha%-bar%-button%-(%d+)",
	preset_button = "color%-picker16_preset%-(%d+)"
}

-- Different font sizes.
color_picker_defines.font_sizes =
{
	result = 30,
	saved_preset = 14,
	add_to_preset = 9
}

-- The maximum number of presets in each row.
color_picker_defines.presets_per_row = 8
-- The maximum number of presets for each player.
color_picker_defines.max_presets = color_picker_defines.presets_per_row * 3