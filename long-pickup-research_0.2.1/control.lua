require("defines")

-- Reach distance bonuses for 4-level techs.
local four_level_distance_bonuses = remote.call("long-reach-research", "get_four_level_distance_bonuses", 1)

-- Remote interface.
remote.add_interface("long-pickup-research",
{
	-- Sets the pickup distance for the given force according to the given long pickup research level.
	set_pickup_distance = function(force, level)
		if remote.call("long-reach-research", "is_using_four_level_tech") and level <= 4 then
			force.character_item_pickup_distance_bonus = four_level_distance_bonuses[level]
		else
			force.character_item_pickup_distance_bonus = level * 0.5
		end
	end,
	
	-- Resets the pickup distance and also the technologies for the given force.
	reset = function(force)
		remote.call("long-reach-research", "reset_technologies_of_name_pattern", force, long_pickup_research.names.technology_pattern.long_pickup)
		force.character_item_pickup_distance_bonus = 0
	end,
})

--------

-- Register technologies.
-- Long pickup.
remote.call("long-reach-research", "register_technology",
{
	pattern = long_pickup_research.names.technology_pattern.long_pickup,
	interface = "long-pickup-research",
	function_name = "set_pickup_distance"
})