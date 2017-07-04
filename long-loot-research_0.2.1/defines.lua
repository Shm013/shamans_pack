-- Here are the values that are shared across different files.
long_loot_research = {}

-- Mod ID.
long_loot_research.mod_id = "long-loot-research"
-- Path to the mod's directory.
long_loot_research.mod_directory = "__long-loot-research__"
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
	expensive_technology	= long_loot_research.mod_id .. "_expensive-technology",
	enable_long_loot_t5		= long_loot_research.mod_id .. "_enable-long-loot-t5"
}