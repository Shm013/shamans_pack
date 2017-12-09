require("defines")

-- Startup settings.
data:extend
{
	{
		type = "bool-setting",
		name = long_reach_research.names.setting.use_four_level_tech,
		setting_type = "startup",
		default_value = false,
		order = "a"
	},
	
	{
		type = "bool-setting",
		name = long_reach_research.names.setting.enable_long_reach_t5,
		setting_type = "startup",
		default_value = true,
		order = "ba"
	},
	{
		type = "bool-setting",
		name = long_reach_research.names.setting.enable_long_reach_t6,
		setting_type = "startup",
		default_value = true,
		order = "bb"
	},
	
	{
		type = "bool-setting",
		name = long_reach_research.names.setting.enable_long_build_t5,
		setting_type = "startup",
		default_value = true,
		order = "ca"
	},
	{
		type = "bool-setting",
		name = long_reach_research.names.setting.enable_long_build_t6,
		setting_type = "startup",
		default_value = false,
		order = "cb"
	},
	
	{
		type = "bool-setting",
		name = long_mine_research.names.setting.enable_long_mine,
		setting_type = "startup",
		default_value = true,
		order = "d[long-mine]-a"
	},
	{
		type = "bool-setting",
		name = long_mine_research.names.setting.enable_long_mine_t5,
		setting_type = "startup",
		default_value = true,
		order = "d[long-mine]-b"
	},
	
	{
		type = "bool-setting",
		name = long_pickup_research.names.setting.enable_long_pickup,
		setting_type = "startup",
		default_value = false,
		order = "e[long-pickup]-a"
	},
	{
		type = "bool-setting",
		name = long_pickup_research.names.setting.enable_long_pickup_t5,
		setting_type = "startup",
		default_value = true,
		order = "e[long-pickup]-b"
	},
	
	{
		type = "bool-setting",
		name = long_loot_research.names.setting.enable_long_loot,
		setting_type = "startup",
		default_value = false,
		order = "f[long-loot]-a"
	},
	{
		type = "bool-setting",
		name = long_loot_research.names.setting.expensive_technology,
		setting_type = "startup",
		default_value = false,
		order = "f[long-loot]-b"
	},
	{
		type = "bool-setting",
		name = long_loot_research.names.setting.enable_long_loot_t5,
		setting_type = "startup",
		default_value = true,
		order = "f[long-loot]-c"
	}
}

-- Runtime-global settings.
data:extend
{
	{
		type = "double-setting",
		name = long_reach_research.names.setting.initial_reach_distance_bonus,
		setting_type = "runtime-global",
		default_value = 0,
		minimum_value = 0,
		order = "a"
	},
	{
		type = "double-setting",
		name = long_reach_research.names.setting.initial_build_distance_bonus,
		setting_type = "runtime-global",
		default_value = 0,
		minimum_value = 0,
		order = "b"
	},
	{
		type = "double-setting",
		name = long_mine_research.names.setting.initial_mine_distance_bonus,
		setting_type = "runtime-global",
		default_value = 0,
		minimum_value = 0,
		order = "c"
	},
	{
		type = "double-setting",
		name = long_pickup_research.names.setting.initial_pickup_distance_bonus,
		setting_type = "runtime-global",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 1000,
		order = "d"
	},
	{
		type = "double-setting",
		name = long_loot_research.names.setting.initial_loot_distance_bonus,
		setting_type = "runtime-global",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 1000,
		order = "e"
	},
}