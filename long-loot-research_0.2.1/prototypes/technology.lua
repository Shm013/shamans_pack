local prerequisite_name_prefix
local prerequisites_level_1
local counts = {}
local count_formulas = {}
local ingredients = {}
local times = {}
-- Check if long loot research is installed.
if long_pickup_research then
	-- Installed!
	prerequisite_name_prefix = long_pickup_research.names.technology.long_pickup_prefix
	long_pickup_research.remake_new_level_technologies()
else
	-- No installed.
	prerequisite_name_prefix = long_reach_research.names.technology.long_reach_prefix
end

if settings.startup[long_loot_research.names.setting.expensive_technology].value then
	-- Expensive technology. (Unit count and research time are not affected.)
	prerequisites_level_1 = {"military-3"}
	
	counts[1] = 150
	count_formulas[1] = ""
	ingredients[1] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}}
	times[1] = 45
	
	counts[2] = 400
	count_formulas[2] = ""
	ingredients[2] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}}
	times[2] = 90
	
	counts[3] = 800
	count_formulas[3] = "(L-1)*400"
	ingredients[3] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}}
	times[3] = 180
	
	counts[4] = 1600
	count_formulas[4] = "(L-3)*800"
	ingredients[4] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}, {"production-science-pack", 1}}
	times[4] = 360
	
	counts[5] = 0
	count_formulas[5] = "2^(L-7)*200+4000"
	ingredients[5] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}
	times[5] = 540
else
	-- Cheap technology.
	prerequisites_level_1 = nil
	
	counts[1] = 100
	count_formulas[1] = ""
	ingredients[1] = {{"science-pack-1", 1}, {"science-pack-2", 1}}
	times[1] = 30
	
	counts[2] = 250
	count_formulas[2] = ""
	ingredients[2] = {{"science-pack-1", 1}, {"science-pack-2", 1}}
	times[2] = 60
	
	counts[3] = 500
	count_formulas[3] = "(L-1)*250"
	ingredients[3] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}
	times[3] = 120
	
	counts[4] = 1000
	count_formulas[4] = "(L-3)*500"
	ingredients[4] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}
	times[4] = 240
	
	counts[5] = 0
	count_formulas[5] = "2^(L-7)*150+2400"
	ingredients[5] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}
	times[5] = 360
end

long_reach_research.create_technologies(
	settings.startup[long_loot_research.names.setting.enable_long_loot_t5].value,
	false,
{
	name_prefix = long_loot_research.names.technology.long_loot_prefix,
	icon_prefix = long_loot_research.mod_directory .. "/graphics/long-loot-",
	prerequisite_name_prefix = prerequisite_name_prefix,
	effect_key_prefix = "technology-effect.long-loot-research_character-loot-distance-bonus-",
	effect_key = "technology-effect.long-loot-research_character-loot-distance-bonus-1",
	order_prefix = "a-b-a[long-reach-technologies]-e[long-loot]-",
	level_1 =
	{
		icon = "1.png",
		bonus = 1,
		count = counts[1],
		ingredients = ingredients[1],
		time = times[1],
		prerequisites = prerequisites_level_1
	},
	level_2 =
	{
		icon = "2.png",
		bonus = 1,
		count = counts[2],
		ingredients = ingredients[2],
		time = times[2]
	},
	level_3 =
	{
		icon = "3.png",
		bonus = 2,
		count = counts[3],
		count_formula = count_formulas[3],
		ingredients = ingredients[3],
		time = times[3]
	},
	level_4 =
	{
		icon = "4.png",
		bonus = 4,
		count = counts[4],
		count_formula = count_formulas[4],
		ingredients = ingredients[4],
		time = times[4]
	},
	level_5 =
	{
		icon = "5.png",
		count_formula = count_formulas[5],
		ingredients = ingredients[5],
		time = times[5]
	}
})