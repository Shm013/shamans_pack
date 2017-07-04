-- Here are the values that are shared across different files.
long_mine_research = {}

-- Mod ID.
long_mine_research.mod_id = "long-mine-research"
-- Path to the mod's directory.
long_mine_research.mod_directory = "__long-mine-research__"
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
	enable_long_mine_t5		= long_mine_research.mod_id .. "_enable-long-mine-t5"
}