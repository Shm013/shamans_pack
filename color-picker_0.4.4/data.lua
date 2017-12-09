-- Notify user to uninstall the obsolete mods.
local has_player_color = mods["player-color"]
local has_train_stop_color = mods["train-stop-color"]
local has_locomotive_color = mods["locomotive-color"]
local has_wagon_color = mods["wagon-color"]
if has_player_color or has_train_stop_color or has_locomotive_color or has_wagon_color then
	local mod_names = ""
	if has_player_color then
		mod_names = mod_names .. "\nColor Picker - Player (player-color)"
	end
	if has_train_stop_color then
		mod_names = mod_names .. "\nColor Picker - Train Stop (train-stop-color)"
	end
	if has_locomotive_color then
		mod_names = mod_names .. "\nColor Picker - Locomotive (locomotive-color)"
	end
	if has_wagon_color then
		mod_names = mod_names .. "\nColor Picker - Wagon (wagon-color)"
	end
	
	error("Please uninstall the following mods. They have been combined into Color Picker v0.4.0:" .. mod_names)
end

require("defines")
require("prototypes/fonts")
require("prototypes/style")