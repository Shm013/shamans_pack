require("defines")

-- Reach distance bonuses for 4-level techs.
local four_level_distance_bonuses = remote.call("long-reach-research", "get_four_level_distance_bonuses", 2)

-- Remote interface.
remote.add_interface("long-loot-research",
{
	-- Sets the loot distance for the given force according to the given long loot research level.
	set_loot_distance = function(force, level)
		if remote.call("long-reach-research", "is_using_four_level_tech") and level <= 4 then
			force.character_loot_pickup_distance_bonus = four_level_distance_bonuses[level]
		else
			force.character_loot_pickup_distance_bonus = level * 1
		end
	end,
	
	-- Resets the loot distance and also the technologies for the given force.
	reset = function(force)
		remote.call("long-reach-research", "reset_technologies_of_name_pattern", force, long_loot_research.names.technology_pattern.long_loot)
		force.character_loot_pickup_distance_bonus = 0
	end,
})

--------

-- Register technologies.
-- Long loot.
remote.call("long-reach-research", "register_technology",
{
	pattern = long_loot_research.names.technology_pattern.long_loot,
	interface = "long-loot-research",
	function_name = "set_loot_distance"
})