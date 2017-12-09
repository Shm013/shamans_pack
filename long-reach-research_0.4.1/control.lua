require("defines")

local long_reach_research_setting_names = long_reach_research.names.setting
local long_reach_research_technology_names = long_reach_research.names.technology
local long_reach_research_technology_name_patterns = long_reach_research.names.technology_pattern
local long_mine_research_setting_names = long_mine_research.names.setting
local long_mine_research_technology_name_patterns = long_mine_research.names.technology_pattern
local long_pickup_research_setting_names = long_pickup_research.names.setting
local long_pickup_research_technology_name_patterns = long_pickup_research.names.technology_pattern
local long_loot_research_setting_names = long_loot_research.names.setting
local long_loot_research_technology_name_patterns = long_loot_research.names.technology_pattern

-- Table of all registered long reach technologies.
local long_reach_technology_data = {}

-- Registers a long reach technology according to the given data.
-- 	Parameters:
--		data :: dictionary string -> any: table with the following contents:
--			- pattern :: string : technology name pattern for recognizing the technology when once is researched.
--			- on_researched :: function(name, level) : the exact callback function to be executed when the detected technology is researched.
local function register_technology(data)
	table.insert(long_reach_technology_data, data)
end

-- Returns the array of distance bonuses based on the given base value for 4-level techs.
local function get_four_level_distance_bonuses(base_value)
	local bonuses = {}
	bonuses[1] = base_value * 0.5
	bonuses[2] = base_value
	bonuses[3] = base_value * 2
	bonuses[4] = base_value * 4
	return bonuses
end

-- Returns whether the 4-level technology setting is being used.
-- If false is returned, it is using the new setting which has more levels.
local function is_using_four_level_tech()
	return settings.startup[long_reach_research_setting_names.use_four_level_tech].value
end

-- Resets all the technologies whose names match the given pattern in the given force.
-- FIXME: reset technology saved research progress when the API is done.
local function reset_technologies_of_name_pattern(force, name_pattern)
	for _, technology in pairs(force.technologies) do
		if string.match(technology.name, name_pattern) then
			technology.researched = false
		end
	end
end

-- Executes the registered function if a registered technology has finished researched.
script.on_event(defines.events.on_research_finished, function(event)
	local research = event.research
	local research_name = research.name
	
	for _, data in pairs(long_reach_technology_data) do
		-- Trying matching the pattern.
		local level = string.match(research_name, data.pattern)
		if level then
			-- Matched!
			local research_level = research.level
			if not research.researched then
				-- Technologies with multiple levels will be started continue researching once its previous level has researched.
				-- We need to get the previous level instead.
				research_level = research_level - 1
			end
			
			if long_reach_research.is_debug then
				research.force.print("name: " .. research_name .. ", level: " .. research_level)
			end
			
			if data.on_researched then
				data.on_researched(research.force, research_level)
			end
			return
		end
	end
end)

---------------------------------------------------------

-- Reach distance bonuses for 4-level techs.
local four_level_reach_distance_bonuses = get_four_level_distance_bonuses(6)

-- Sets the reach distance for the given force according to the given long reach research level.
local function set_reach_distance(force, level)
	local initial_reach_distance_bonus = global.initial_reach_distance_bonus or 0
	if is_using_four_level_tech() and level <= 4 then
		force.character_reach_distance_bonus = four_level_reach_distance_bonuses[level] + initial_reach_distance_bonus
		force.character_item_drop_distance_bonus = four_level_reach_distance_bonuses[level] + initial_reach_distance_bonus
	else
		force.character_reach_distance_bonus = level * 3 + initial_reach_distance_bonus
		force.character_item_drop_distance_bonus = level * 3 + initial_reach_distance_bonus
	end
end

-- Sets the build distance for the given force according to the given long build research level.
local function set_build_distance(force, level)
	local initial_build_distance_bonus = global.initial_build_distance_bonus or 0
	if is_using_four_level_tech() and level <= 4 then
		force.character_build_distance_bonus = four_level_reach_distance_bonuses[level] + initial_build_distance_bonus
	else
		force.character_build_distance_bonus = level * 3 + initial_build_distance_bonus
	end
end

-- Resets reach distances and also the technologies for the given force.
local function reset_reach_distances(force)
	reset_technologies_of_name_pattern(force, long_reach_research_technology_name_patterns.long_reach)
	force.character_reach_distance_bonus = global.initial_reach_distance_bonus or 0
	force.character_item_drop_distance_bonus = global.initial_reach_distance_bonus or 0
	
	reset_technologies_of_name_pattern(force, long_reach_research_technology_name_patterns.long_build)
	force.character_build_distance_bonus = global.initial_build_distance_bonus or 0
end

-- Register technologies.
-- Long reach.
register_technology
{
	pattern = long_reach_research_technology_name_patterns.long_reach,
	on_researched = set_reach_distance
}
-- Long build.
register_technology
{
	pattern = long_reach_research_technology_name_patterns.long_build,
	on_researched = set_build_distance
}

---------------------------------------------------------

-- Mine distance bonuses for 4-level techs.
local four_level_mine_distance_bonuses = get_four_level_distance_bonuses(2.7)

-- Sets the mine distance for the given force according to the given long mine research level.
local function set_mine_distance(force, level)
	local initial_mine_distance_bonus = global.initial_mine_distance_bonus or 0
	if is_using_four_level_tech() and level <= 4 then
		force.character_resource_reach_distance_bonus = four_level_mine_distance_bonuses[level] + initial_mine_distance_bonus
	else
		force.character_resource_reach_distance_bonus = level * 1.35 + initial_mine_distance_bonus
	end
end

-- Resets mine distance and also the technologies for the given force.
local function reset_mine_distance(force)
	reset_technologies_of_name_pattern(force, long_mine_research_technology_name_patterns.long_mine)
	force.character_resource_reach_distance_bonus = global.initial_mine_distance_bonus or 0
end

-- Register technologies.
-- Long mine.
register_technology
{
	pattern = long_mine_research_technology_name_patterns.long_mine,
	on_researched = set_mine_distance
}

---------------------------------------------------------

-- Pickup distance bonuses for 4-level techs.
local four_level_pickup_distance_bonuses = get_four_level_distance_bonuses(1)

-- Sets the pickup distance for the given force according to the given long pickup research level.
local function set_pickup_distance(force, level)
	local initial_pickup_distance_bonus = global.initial_pickup_distance_bonus or 0
	if is_using_four_level_tech() and level <= 4 then
		force.character_item_pickup_distance_bonus = four_level_pickup_distance_bonuses[level] + initial_pickup_distance_bonus
	else
		force.character_item_pickup_distance_bonus = level * 0.5 + initial_pickup_distance_bonus
	end
end

-- Resets pickup distance and also the technologies for the given force.
local function reset_pickup_distance(force)
	reset_technologies_of_name_pattern(force, long_pickup_research_technology_name_patterns.long_pickup)
	force.character_item_pickup_distance_bonus = global.initial_pickup_distance_bonus or 0
end

-- Register technologies.
-- Long pickup.
register_technology
{
	pattern = long_pickup_research_technology_name_patterns.long_pickup,
	on_researched = set_pickup_distance
}

---------------------------------------------------------

-- Loot distance bonuses for 4-level techs.
local four_level_loot_distance_bonuses = get_four_level_distance_bonuses(2)

-- Sets the loot distance for the given force according to the given long loot research level.
local function set_loot_distance(force, level)
	local initial_loot_distance_bonus = global.initial_loot_distance_bonus or 0
	if is_using_four_level_tech() and level <= 4 then
		force.character_loot_pickup_distance_bonus = four_level_loot_distance_bonuses[level] + initial_loot_distance_bonus
	else
		force.character_loot_pickup_distance_bonus = level * 1 + initial_loot_distance_bonus
	end
end

-- Resets loot distance and also the technologies for the given force.
local function reset_loot_distance(force)
	reset_technologies_of_name_pattern(force, long_loot_research_technology_name_patterns.long_loot)
	force.character_loot_pickup_distance_bonus = global.initial_loot_distance_bonus or 0
end

-- Register technologies.
-- Long loot.
register_technology
{
	pattern = long_loot_research_technology_name_patterns.long_loot,
	on_researched = set_loot_distance
}

---------------------------------------------------------

-- Returns the level of long reach research in the given force.
local function get_long_reach_research_level_in_force(force)
	local tech = force.technologies[long_reach_research_technology_names.long_reach_prefix .. "4"]
	if tech and tech.researched then
		return 4
	end
	tech = force.technologies[long_reach_research_technology_names.long_reach_prefix .. "3"]
	if tech and tech.researched then
		return 3
	end
	tech = force.technologies[long_reach_research_technology_names.long_reach_prefix .. "2"]
	if tech and tech.researched then
		return 2
	end
	tech = force.technologies[long_reach_research_technology_names.long_reach_prefix .. "1"]
	if tech and tech.researched then
		return 1
	end
	return 0
end

-- Updates the initial distance bonuses for the given force.
local function update_initial_distance_bonuses_for_force(
	force,
	old_initial_reach_distance_bonus,
	old_initial_build_distance_bonus,
	old_initial_mine_distance_bonus,
	old_initial_pickup_distance_bonus,
	old_initial_loot_distance_bonus,
	
	new_initial_reach_distance_bonus,
	new_initial_build_distance_bonus,
	new_initial_mine_distance_bonus,
	new_initial_pickup_distance_bonus,
	new_initial_loot_distance_bonus)
	
	-- Reach.
	force.character_reach_distance_bonus = math.max(0, force.character_reach_distance_bonus - old_initial_reach_distance_bonus + new_initial_reach_distance_bonus)
	force.character_item_drop_distance_bonus = math.max(0, force.character_item_drop_distance_bonus - old_initial_reach_distance_bonus + new_initial_reach_distance_bonus)
	
	-- Build.
	force.character_build_distance_bonus = math.max(0, force.character_build_distance_bonus - old_initial_build_distance_bonus + new_initial_build_distance_bonus)
	
	-- Mine.
	force.character_resource_reach_distance_bonus = math.max(0, force.character_resource_reach_distance_bonus - old_initial_mine_distance_bonus + new_initial_mine_distance_bonus)
	
	-- Pickup.
	force.character_item_pickup_distance_bonus = math.max(0, force.character_item_pickup_distance_bonus - old_initial_pickup_distance_bonus + new_initial_pickup_distance_bonus)
	
	-- Loot.
	force.character_loot_pickup_distance_bonus = math.max(0, force.character_loot_pickup_distance_bonus - old_initial_loot_distance_bonus + new_initial_loot_distance_bonus)
end

-- Possible initial distance bonus code.
local update_initial_distance_bonus_code =
{
	reach_distance = 1,
	build_distance = 2,
	mine_distance = 3,
	pickup_distance = 4,
	loot_distance = 5,
}
-- Updates the initial distance bonuses for all forces and save the updated bonuses into global.
-- This can be called when mod init, mod changed or the bonuses are updated.
-- @param update_code	If provided, only the corresponding distance bonus will be updated.
local function update_initial_distance_bonuses(update_code)
	-- Getting the current long reach technology level for a force is too painful.
	-- Therefore, we saved the original initial bonuses and use the differences between the old bonuses and the new bonuses to set the appropriate distances.
	local old_initial_reach_distance_bonus = global.initial_reach_distance_bonus or 0
	local old_initial_build_distance_bonus = global.initial_build_distance_bonus or 0
	local old_initial_mine_distance_bonus = global.initial_mine_distance_bonus or 0
	local old_initial_pickup_distance_bonus = global.initial_pickup_distance_bonus or 0
	local old_initial_loot_distance_bonus = global.initial_loot_distance_bonus or 0
	
	local new_initial_reach_distance_bonus =
		(update_code == nil or update_code == update_initial_distance_bonus_code.reach_distance) and
		 	settings.global[long_reach_research_setting_names.initial_reach_distance_bonus].value or
		 	old_initial_reach_distance_bonus
	local new_initial_build_distance_bonus =
		(update_code == nil or update_code == update_initial_distance_bonus_code.build_distance) and
			settings.global[long_reach_research_setting_names.initial_build_distance_bonus].value or
			old_initial_build_distance_bonus
	local new_initial_mine_distance_bonus =
		(update_code == nil or update_code == update_initial_distance_bonus_code.mine_distance) and
			settings.global[long_mine_research_setting_names.initial_mine_distance_bonus].value or
			old_initial_mine_distance_bonus
	local new_initial_pickup_distance_bonus =
		(update_code == nil or update_code == update_initial_distance_bonus_code.pickup_distance) and
			settings.global[long_pickup_research_setting_names.initial_pickup_distance_bonus].value or
			old_initial_pickup_distance_bonus
	local new_initial_loot_distance_bonus =
		(update_code == nil or update_code == update_initial_distance_bonus_code.loot_distance) and
			settings.global[long_loot_research_setting_names.initial_loot_distance_bonus].value or
			old_initial_loot_distance_bonus
	
	global.initial_reach_distance_bonus = new_initial_reach_distance_bonus
	global.initial_build_distance_bonus = new_initial_build_distance_bonus
	global.initial_mine_distance_bonus = new_initial_mine_distance_bonus
	global.initial_pickup_distance_bonus = new_initial_pickup_distance_bonus
	global.initial_loot_distance_bonus = new_initial_loot_distance_bonus
	
	for _, force in pairs(game.forces) do
		update_initial_distance_bonuses_for_force(
    		force,
    		old_initial_reach_distance_bonus,
        	old_initial_build_distance_bonus,
        	old_initial_mine_distance_bonus,
        	old_initial_pickup_distance_bonus,
        	old_initial_loot_distance_bonus,
        	
        	new_initial_reach_distance_bonus,
        	new_initial_build_distance_bonus,
        	new_initial_mine_distance_bonus,
        	new_initial_pickup_distance_bonus,
        	new_initial_loot_distance_bonus)
	end
end

-- Resets build distance, mine distance, item pickup distance and loot pickup distance if this mod is updated to v0.2.0+.
-- Also ensures the reach distance is correct.
script.on_configuration_changed(function(event)
	local change_on_this_mod = event.mod_changes[long_reach_research.mod_id]
	if change_on_this_mod then
		local old_version = change_on_this_mod.old_version
		local new_version = change_on_this_mod.new_version
		if old_version then
			if old_version < "0.2.0" then
    			if new_version and new_version >= "0.2.0" then
    				-- v0.2.0: separate the long reach research into long reach/build/mine/pickup/loot research.
    				for _, force in pairs(game.forces) do
    					force.character_resource_reach_distance_bonus = 0
    					force.character_item_pickup_distance_bonus = 0
    					force.character_loot_pickup_distance_bonus = 0
    					force.character_build_distance_bonus = 0
    					if is_using_four_level_tech() then
    						local level = get_long_reach_research_level_in_force(force)
    						if level > 0 then
    							set_reach_distance(force, level)
    						end
    					end
    				end
    				-- Also free memory. We don't need it anymore.
    				global = nil
    			end
    		end
    		if old_version < "0.4.1" then
    			if new_version and new_version >= "0.4.1" then
    				-- v0.4.1: introduce initial distance bonuses.
    				update_initial_distance_bonuses()
    			end
    		end
		end
	end
end)

-- Initializes the initial distance bonuses for all forces.
script.on_init(function()
	update_initial_distance_bonuses()
end)

-- Mapping from the initial bonus setting names to the appropriate key of update message to be printed on the console and also the old value of the setting.
local initial_bonuse_names_to_update_message_and_old_value_key_map =
{
	[long_reach_research_setting_names.initial_reach_distance_bonus] =
	{
		message_key = "message.long-reach-research_initial-reach-distance-bonus-updated",
		get_old_value_function = function() return global.initial_reach_distance_bonus or 0 end,
		update_code = update_initial_distance_bonus_code.reach_distance
	},
	[long_reach_research_setting_names.initial_build_distance_bonus] =
	{
		message_key = "message.long-reach-research_initial-build-distance-bonus-updated",
		get_old_value_function = function() return global.initial_build_distance_bonus or 0 end,
		update_code = update_initial_distance_bonus_code.build_distance
	},
	[long_mine_research_setting_names.initial_mine_distance_bonus] =
	{
		message_key = "message.long-mine-research_initial-mine-distance-bonus-updated",
		get_old_value_function = function() return global.initial_mine_distance_bonus or 0 end,
		update_code = update_initial_distance_bonus_code.mine_distance
	},
	[long_pickup_research_setting_names.initial_pickup_distance_bonus] =
	{
		message_key = "message.long-pickup-research_initial-pickup-distance-bonus-updated",
		get_old_value_function = function() return global.initial_pickup_distance_bonus or 0 end,
		update_code = update_initial_distance_bonus_code.pickup_distance
	},
	[long_loot_research_setting_names.initial_loot_distance_bonus] =
	{
		message_key = "message.long-loot-research_initial-loot-distance-bonus-updated",
		get_old_value_function = function() return global.initial_loot_distance_bonus or 0 end,
		update_code = update_initial_distance_bonus_code.loot_distance
	}
}
-- Update the initial distance bonuses when a player change the setting.
script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
	local setting_name = event.setting
	local data = initial_bonuse_names_to_update_message_and_old_value_key_map[setting_name]
	if not data then
		-- Not our setting.
		return
	end
	-- It is one of our initial distance bonus settings.
	-- Store the old value.
	local old_value = data.get_old_value_function()
	-- Update for all forces.
	-- If multiple settings are changed at once, on_runtime_mod_setting_changed will be fired multiple times. But the setting values have already been changed.
	-- So, we should only update the corresponding distance bonus of the setting.
	update_initial_distance_bonuses(data.update_code)
	-- Print the message.
	for _, force in pairs(game.forces) do
		force.print
		{
			data.message_key,
			game.players[event.player_index].name,
			old_value,
			settings.global[setting_name].value
		}
	end
end)

-- Apply the initial distance bonuses to a newly created force.
script.on_event(defines.events.on_force_created, function(event)
	local force = event.force
	update_initial_distance_bonuses_for_force(
		force,
		0,
		0,
		0,
		0,
		0,
		global.initial_reach_distance_bonus,
		global.initial_build_distance_bonus,
		global.initial_mine_distance_bonus,
		global.initial_pickup_distance_bonus,
		global.initial_loot_distance_bonus)
end)

---------------------------------------------------------

-- Add command for resetting the reach distances.
local reset_command = "long-reach-research-reset"
local reset_command_help = {"command-help.long-reach-research_reset"}
commands.add_command(reset_command, reset_command_help, function(event)
	local player = game.players[event.player_index]
	
	-- Only admin can run this command.
	if not player.admin then
		player.print{"cant-run-command-not-admin", reset_command}
		return
	end
	
	-- Setup data for calling the sub-mods to reset technologies.
	local param_to_sub_mod_data_map =
	{
		["mine"] =
		{
			reset_function = reset_mine_distance,
			success_message = {"message.long-reach-research_mine-distance-reset", player.name},
			fail_message_key = "message.long-reach-research_cannot-reset-long-mine"
		},
		["pickup"] =
		{
			reset_function = reset_pickup_distance,
			success_message = {"message.long-reach-research_pickup-distance-reset", player.name},
			fail_message_key = "message.long-reach-research_cannot-reset-long-pickup"
		},
		["loot"] =
		{
			reset_function = reset_loot_distance,
			success_message = {"message.long-reach-research_loot-distance-reset", player.name},
			fail_message_key = "message.long-reach-research_cannot-reset-long-loot"
		}
	}
	
	-- Validate command parameter.
	local parameter = event.parameter
	local data = param_to_sub_mod_data_map[parameter]
	if data then
		-- Reset.
		for _, force in pairs(game.forces) do
			data.reset_function(force)
		end
		game.print(data.success_message)
		
	elseif parameter == "all" then
		-- Reset all available long reach technologies.
		-- Reset this mod.
		for _, force in pairs(game.forces) do
			reset_reach_distances(force)
		end
		game.print{"message.long-reach-research_all-reach-distance-reset", player.name}
		
		-- Reset the sub-mods.
		for _, data in pairs(param_to_sub_mod_data_map) do
			for _, force in pairs(game.forces) do
				data.reset_function(force)
			end
		end
		
	else
		-- Invalid parameter.
		player.print{"invalid-parameter"}
		player.print(reset_command_help)
		return
	end
end)