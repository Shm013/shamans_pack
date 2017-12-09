-- Here are the values that are shared across different files.
long_reach_research = {}
long_reach_research.is_debug = false

-- Mod ID.
long_reach_research.mod_id = "long-reach-research"
-- Path to the mod's directory.
long_reach_research.mod_directory = "__long-reach-research__"
-- Mod ID pattern.
long_reach_research.mod_id_pattern = "long%-reach%-research"

-- Names that are reused in different parts of the scripts.
long_reach_research.names = {}
-- Technology names.
long_reach_research.names.technology =
{
	long_reach_prefix = long_reach_research.mod_id .. "_long-reach-",
	long_build_prefix = long_reach_research.mod_id .. "_long-build-"
}
-- Technology name patterns.
long_reach_research.names.technology_pattern =
{
	long_reach = long_reach_research.mod_id_pattern .. "_long%-reach%-(%d+)",
	long_build = long_reach_research.mod_id_pattern .. "_long%-build%-(%d+)"
}

-- Setting names.
long_reach_research.names.setting =
{	
	use_four_level_tech 		= long_reach_research.mod_id .. "_use-four-level-tech",
	
	enable_long_reach_t5		= long_reach_research.mod_id .. "_enable-long-reach-t5",
	enable_long_reach_t6		= long_reach_research.mod_id .. "_enable-long-reach-t6",
	
	enable_long_build_t5		= long_reach_research.mod_id .. "_enable-long-build-t5",
	enable_long_build_t6		= long_reach_research.mod_id .. "_enable-long-build-t6",
	
	initial_reach_distance_bonus	= long_reach_research.mod_id .. "_initial-reach-distance-bonus",
	initial_build_distance_bonus	= long_reach_research.mod_id .. "_initial-build-distance-bonus",
}

-----------------------------------------------------------------------

long_mine_research = {}

-- Mod ID.
long_mine_research.mod_id = "long-mine-research"
-- Path to the mod's directory.
long_mine_research.mod_directory = long_reach_research.mod_directory
-- Mod ID pattern.
long_mine_research.mod_id_pattern = "long%-mine%-research"

-- Names that are reused in different parts of the scripts.
long_mine_research.names = {}
-- Technology names.
long_mine_research.names.technology =
{
	long_mine_prefix = long_mine_research.mod_id .. "_long-mine-"
}
-- Technology name patterns.
long_mine_research.names.technology_pattern =
{
	long_mine = long_mine_research.mod_id_pattern .. "_long%-mine%-(%d+)"
}

-- Setting names.
long_mine_research.names.setting =
{	
	enable_long_mine		= long_mine_research.mod_id .. "_enable-long-mine",
	enable_long_mine_t5		= long_mine_research.mod_id .. "_enable-long-mine-t5",
	
	initial_mine_distance_bonus	= long_mine_research.mod_id .. "_initial-mine-distance-bonus",
}

-----------------------------------------------------------------------

long_pickup_research = {}

-- Mod ID.
long_pickup_research.mod_id = "long-pickup-research"
-- Path to the mod's directory.
long_pickup_research.mod_directory = long_reach_research.mod_directory
-- Mod ID pattern.
long_pickup_research.mod_id_pattern = "long%-pickup%-research"

-- Names that are reused in different parts of the scripts.
long_pickup_research.names = {}
-- Technology names.
long_pickup_research.names.technology =
{
	long_pickup_prefix = long_pickup_research.mod_id .. "_long-pickup-",
}
-- Technology name patterns.
long_pickup_research.names.technology_pattern =
{
	long_pickup = long_pickup_research.mod_id_pattern .. "_long%-pickup%-(%d+)"
}

-- Setting names.
long_pickup_research.names.setting =
{	
	enable_long_pickup		= long_pickup_research.mod_id .. "_enable-long-pickup",
	enable_long_pickup_t5	= long_pickup_research.mod_id .. "_enable-long-pickup-t5",
	
	initial_pickup_distance_bonus	= long_pickup_research.mod_id .. "_initial-pickup-distance-bonus",
}

-----------------------------------------------------------------------

long_loot_research = {}

-- Mod ID.
long_loot_research.mod_id = "long-loot-research"
-- Path to the mod's directory.
long_loot_research.mod_directory = long_reach_research.mod_directory
-- Mod ID pattern.
long_loot_research.mod_id_pattern = "long%-loot%-research"

-- Names that are reused in different parts of the scripts.
long_loot_research.names = {}
-- Technology names.
long_loot_research.names.technology =
{
	long_loot_prefix = long_loot_research.mod_id .. "_long-loot-",
}
-- Technology name patterns.
long_loot_research.names.technology_pattern =
{
	long_loot = long_loot_research.mod_id_pattern .. "_long%-loot%-(%d+)"
}

-- Setting names.
long_loot_research.names.setting =
{
	enable_long_loot		= long_loot_research.mod_id .. "_enable-long-loot",
	expensive_technology	= long_loot_research.mod_id .. "_expensive-technology",
	enable_long_loot_t5		= long_loot_research.mod_id .. "_enable-long-loot-t5",
	
	initial_loot_distance_bonus	= long_loot_research.mod_id .. "_initial-loot-distance-bonus",
}