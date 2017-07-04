-- Creates, or re-creates the long-pickup technologies.
local function create_technologies(divide_levels)
	long_reach_research.create_technologies(
		settings.startup[long_pickup_research.names.setting.enable_long_pickup_t5].value,
		false,
	{
		name_prefix = long_pickup_research.names.technology.long_pickup_prefix,
		icon_prefix = long_pickup_research.mod_directory .. "/graphics/long-pickup-",
		prerequisite_name_prefix = long_reach_research.names.technology.long_reach_prefix,	
		effect_key_prefix = "technology-effect.long-pickup-research_character-pickup-distance-bonus-",
		effect_key = "technology-effect.long-pickup-research_character-pickup-distance-bonus-0.5",
		order_prefix = "a-b-a[long-reach-technologies]-d[long-pickup]-",
		need_divide_levels = divide_levels,
		level_1 =
		{
			icon = "1.png",
			bonus = 0.5,
			count = 100,
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
			time = 30,
			prerequisites = {"stack-inserter"}
		},
		level_2 =
		{
			icon = "2.png",
			bonus = 0.5,
			count = 250,
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
			time = 60
		},
		level_3 =
		{
			icon = "3.png",
			bonus = 1,
			count = 500,
			count_formula = "(L-1)*250",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
			time = 120
		},
		level_4 =
		{
			icon = "4.png",
			bonus = 2,
			count = 1000,
			count_formula = "(L-3)*500",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
			time = 240
		},
		level_5 =
		{
			icon = "5.png",
			count_formula = "2^(L-7)*150+240",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
			time = 360
		}
	})
end

-- Create the technologies once, without divide levels.
create_technologies(false)

-- Remakes the new-level technologies with divided levels for the long-loot technologies.
-- Nothing will be done if the four-level system is used.
function long_pickup_research.remake_new_level_technologies()
	if settings.startup[long_reach_research.names.setting.use_four_level_tech].value then
		return
	end
	long_reach_research.remove_new_level_technologies_without_divided_levels(long_pickup_research.names.technology.long_pickup_prefix)
	create_technologies(true)
end