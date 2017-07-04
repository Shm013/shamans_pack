require("defines")

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
	return settings.startup[long_reach_research.names.setting.use_four_level_tech].value
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
	if is_using_four_level_tech() and level <= 4 then
		force.character_reach_distance_bonus = four_level_reach_distance_bonuses[level]
		force.character_item_drop_distance_bonus = four_level_reach_distance_bonuses[level]
	else
		force.character_reach_distance_bonus = level * 3
		force.character_item_drop_distance_bonus = level * 3
	end
end

-- Sets the build distance for the given force according to the given long build research level.
local function set_build_distance(force, level)
	if is_using_four_level_tech() and level <= 4 then
		force.character_build_distance_bonus = four_level_reach_distance_bonuses[level]
	else
		force.character_build_distance_bonus = level * 3
	end
end

-- Resets reach distances and also the technologies for the given force.
local function reset_reach_distances(force)
	reset_technologies_of_name_pattern(force, long_reach_research.names.technology_pattern.long_reach)
	force.character_reach_distance_bonus = 0
	force.character_item_drop_distance_bonus = 0
	
	reset_technologies_of_name_pattern(force, long_reach_research.names.technology_pattern.long_build)
	force.character_build_distance_bonus = 0
end

-- Register technologies.
-- Long reach.
register_technology
{
	pattern = long_reach_research.names.technology_pattern.long_reach,
	on_researched = set_reach_distance
}
-- Long build.
register_technology
{
	pattern = long_reach_research.names.technology_pattern.long_build,
	on_researched = set_build_distance
}

---------------------------------------------------------

-- Mine distance bonuses for 4-level techs.
local four_level_mine_distance_bonuses = get_four_level_distance_bonuses(2.7)

-- Sets the mine distance for the given force according to the given long mine research level.
local function set_mine_distance(force, level)
	if is_using_four_level_tech() and level <= 4 then
		force.character_resource_reach_distance_bonus = four_level_mine_distance_bonuses[level]
	else
		force.character_resource_reach_distance_bonus = level * 1.35
	end
end

-- Resets mine distance and also the technologies for the given force.
local function reset_mine_distance(force)
	reset_technologies_of_name_pattern(force, long_mine_research.names.technology_pattern.long_mine)
	force.character_resource_reach_distance_bonus = 0
end

-- Register technologies.
-- Long mine.
register_technology
{
	pattern = long_mine_research.names.technology_pattern.long_mine,
	on_researched = set_mine_distance
}

---------------------------------------------------------

-- Pickup distance bonuses for 4-level techs.
local four_level_pickup_distance_bonuses = get_four_level_distance_bonuses(1)

-- Sets the pickup distance for the given force according to the given long pickup research level.
local function set_pickup_distance(force, level)
	if is_using_four_level_tech() and level <= 4 then
		force.character_item_pickup_distance_bonus = four_level_pickup_distance_bonuses[level]
	else
		force.character_item_pickup_distance_bonus = level * 0.5
	end
end

-- Resets pickup distance and also the technologies for the given force.
local function reset_pickup_distance(force)
	reset_technologies_of_name_pattern(force, long_pickup_research.names.technology_pattern.long_pickup)
	force.character_item_pickup_distance_bonus = 0
end

-- Register technologies.
-- Long pickup.
register_technology
{
	pattern = long_pickup_research.names.technology_pattern.long_pickup,
	on_researched = set_pickup_distance
}

---------------------------------------------------------

-- Loot distance bonuses for 4-level techs.
local four_level_loot_distance_bonuses = get_four_level_distance_bonuses(2)

-- Sets the loot distance for the given force according to the given long loot research level.
local function set_loot_distance(force, level)
	if is_using_four_level_tech() and level <= 4 then
		force.character_loot_pickup_distance_bonus = four_level_loot_distance_bonuses[level]
	else
		force.character_loot_pickup_distance_bonus = level * 1
	end
end

-- Resets loot distance and also the technologies for the given force.
local function reset_loot_distance(force)
	reset_technologies_of_name_pattern(force, long_loot_research.names.technology_pattern.long_loot)
	force.character_loot_pickup_distance_bonus = 0
end

-- Register technologies.
-- Long loot.
register_technology
{
	pattern = long_loot_research.names.technology_pattern.long_loot,
	on_researched = set_loot_distance
}

---------------------------------------------------------

-- Returns the level of long reach research in the given force.
local function get_long_reach_research_level_in_force(force)
	local tech = force.technologies[long_reach_research.names.technology.long_reach_prefix .. "4"]
	if tech and tech.researched then
		return 4
	end
	tech = force.technologies[long_reach_research.names.technology.long_reach_prefix .. "3"]
	if tech and tech.researched then
		return 3
	end
	tech = force.technologies[long_reach_research.names.technology.long_reach_prefix .. "2"]
	if tech and tech.researched then
		return 2
	end
	tech = force.technologies[long_reach_research.names.technology.long_reach_prefix .. "1"]
	if tech and tech.researched then
		return 1
	end
	return 0
end

-- Resets build distance, mine distance, item pickup distance and loot pickup distance if this mod is updated to v0.2.0+.
-- Also ensures the reach distance is correct.
script.on_configuration_changed(function(event)
	local change_on_this_mod = event.mod_changes[long_reach_research.mod_id]
	if change_on_this_mod then
		if change_on_this_mod.old_version and change_on_this_mod.old_version < "0.2.0" then
			if change_on_this_mod.new_version and change_on_this_mod.new_version >= "0.2.0" then
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
	end
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