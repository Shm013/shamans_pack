require("defines")

-- Reach distance bonuses for 4-level techs.
local four_level_distance_bonuses = remote.call("long-reach-research", "get_four_level_distance_bonuses", 2.7)

-- Remote interface.
remote.add_interface("long-mine-research",
{
	-- Sets the mine distance for the given force according to the given long mine research level.
	set_mine_distance = function(force, level)
		if remote.call("long-reach-research", "is_using_four_level_tech") and level <= 4 then
			force.character_resource_reach_distance_bonus = four_level_distance_bonuses[level]
		else
			force.character_resource_reach_distance_bonus = level * 1.35
		end
	end,
	
	-- Resets the mine distance and also the technologies for the given force.
	reset = function(force)
		remote.call("long-reach-research", "reset_technologies_of_name_pattern", force, long_mine_research.names.technology_pattern.long_mine)
		force.character_resource_reach_distance_bonus = 0
	end,
})

--------

-- Register technologies.
-- Long mine.
remote.call("long-reach-research", "register_technology",
{
	pattern = long_mine_research.names.technology_pattern.long_mine,
	interface = "long-mine-research",
	function_name = "set_mine_distance"
})