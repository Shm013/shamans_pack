-- Here are the values that are shared across different files.
long_pickup_research = {}

-- Mod ID.
long_pickup_research.mod_id = "long-pickup-research"
-- Path to the mod's directory.
long_pickup_research.mod_directory = "__long-pickup-research__"
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
	enable_long_pickup_t5	= long_pickup_research.mod_id .. "_enable-long-pickup-t5",
}