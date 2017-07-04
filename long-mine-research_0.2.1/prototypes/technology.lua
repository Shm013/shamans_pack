long_reach_research.create_technologies(
	settings.startup[long_mine_research.names.setting.enable_long_mine_t5].value,
	false,
{
	name_prefix = long_mine_research.names.technology.long_mine_prefix,
	icon_prefix = long_mine_research.mod_directory .. "/graphics/long-mine-",
	prerequisite_name_prefix = long_reach_research.names.technology.long_reach_prefix,
	effect_key_prefix = "technology-effect.long-mine-research_character-mine-distance-bonus-",
	effect_key = "technology-effect.long-mine-research_character-mine-distance-bonus-1.35",
	order_prefix = "a-b-a[long-reach-technologies]-c[long-mine]-",
	level_1 =
	{
		icon = "1.png",
		bonus = 1.35,
		count = 20,
		ingredients = {{"science-pack-1", 1}},
		time = 15
	},
	level_2 =
	{
		icon = "2.png",
		bonus = 1.35,
		count = 80,
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
		time = 30
	},
	level_3 =
	{
		icon = "3.png",
		bonus = 2.7,
		count = 160,
		count_formula = "(L-1)*80",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
		time = 60
	},
	level_4 =
	{
		icon = "4.png",
		bonus = 5.4,
		count = 320,
		count_formula = "(L-2)*100+20",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
		time = 120
	},
	level_5 =
	{
		icon = "5.png",
		count_formula = "(L-5)*200+100",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
		time = 180
	}
})