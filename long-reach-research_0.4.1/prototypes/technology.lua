-- Returns the prototype data of a technology according to the given data.
local function create_technology(technology_data)
	local unit = {}
	if technology_data.max_level then
		unit.count_formula = technology_data.count_formula
	else
		unit.count = technology_data.count
	end
	unit.ingredients = technology_data.ingredients
	unit.time = technology_data.time
	return
	{
		type = "technology",
		name = technology_data.name,
		icon = technology_data.icon,
		icon_size = 128,
		effects =
		{
			{
				type = "nothing",
				effect_key = technology_data.effect_key
			}
		},
		prerequisites = technology_data.prerequisites,
		unit = unit,
		upgrade = true,
		order = technology_data.order,
		max_level = technology_data.max_level
	}
end

-- Returns the prototype data of a level, or a technology of multiple levels, of a technology according to the given data.
local function create_a_level_of_technology(data, level, level_order, infinite_actual_level, infinite_max_level, infinite_last_min_level, clear_prerequisites)
	local level_data = data["level_" .. tostring(level)]
	local prerequisites
	if not long_reach_research.is_debug and not clear_prerequisites then
		prerequisites = level_data.prerequisites
	end
	if data.prerequisite_name_prefix and not clear_prerequisites then
		if not prerequisites then prerequisites = {} end
		table.insert(prerequisites, data.prerequisite_name_prefix .. tostring(infinite_actual_level or level))
	end
	if level > 1 then
		if not prerequisites then prerequisites = {} end
		table.insert(prerequisites, data.name_prefix .. tostring(infinite_last_min_level or (level - 1)))
	end
	local max_level = nil
	if infinite_actual_level then
		if infinite_max_level then
			max_level = tostring(infinite_max_level)
		else
			max_level = "infinite"
		end
	end
	return create_technology
	{
		name = data.name_prefix .. tostring(infinite_actual_level or level),
		icon = data.icon_prefix .. level_data.icon,
		effect_key = data.effect_key or (data.effect_key_prefix .. tostring(level_data.bonus)),
		prerequisites = prerequisites,
		count = level_data.count,
		count_formula = level_data.count_formula,
		ingredients = level_data.ingredients,
		time = level_data.time,
		order = data.order_prefix .. level_order,
		max_level = max_level,
	}
end

--------------------------------------------------------------------------------------

-- Returns the prototype data of a 4-level long-reach technology.
local function create_four_level_technologies(data)
	local technologies = {}
	table.insert(technologies, create_a_level_of_technology(data, 1, "a"))
	table.insert(technologies, create_a_level_of_technology(data, 2, "b"))
	table.insert(technologies, create_a_level_of_technology(data, 3, "c"))
	table.insert(technologies, create_a_level_of_technology(data, 4, "d"))
	return technologies
end

--------------------------------------------------------------------------------------

-- Returns the prototype data of long-reach technology using the new levelling system.
local function create_new_level_technologies(additional_condition_for_tier_5, additional_condition_for_tier_6, data)
	local enable_tier_5 = settings.startup[long_reach_research.names.setting.enable_long_reach_t5].value
	if additional_condition_for_tier_5 ~= nil then
		enable_tier_5 = enable_tier_5 and additional_condition_for_tier_5
	end
	
	local enable_tier_6 = enable_tier_5 and settings.startup[long_reach_research.names.setting.enable_long_reach_t6].value
	if additional_condition_for_tier_6 ~= nil then
		enable_tier_6 = enable_tier_6 and additional_condition_for_tier_6
	end
	
	local technologies = {}
	-- Tier 1 - Lv1
	table.insert(technologies, create_a_level_of_technology(data, 1, "a"))
	-- Tier 2 - Lv2
	table.insert(technologies, create_a_level_of_technology(data, 2, "b"))
	-- Need to divide levels so the following technologies can depend on it?
	if data.need_divide_levels then
		-- Tier 3 - Lv3
		table.insert(technologies, create_a_level_of_technology(data, 3, "c", 3, 3, 2))
		-- Tier 3 - Lv4
		table.insert(technologies, create_a_level_of_technology(data, 3, "d", 4, 4, 3, true))
		-- Tier 4 - Lv5
		table.insert(technologies, create_a_level_of_technology(data, 4, "e", 5, 5, 4))
		-- Tier 4 - Lv6-8
		table.insert(technologies, create_a_level_of_technology(data, 4, "f", 6, 8, 5, true))
		if enable_tier_5 then
			-- Tier 5 - Lv9
			table.insert(technologies, create_a_level_of_technology(data, 5, "g", 9, 9, 6))
			-- Tier 5 - Lv10-16
			table.insert(technologies, create_a_level_of_technology(data, 5, "h", 10, 16, 9, true))
			if enable_tier_6 then
				-- Tier 6 - Lv17
				table.insert(technologies, create_a_level_of_technology(data, 6, "i", 17, 17, 10))
				-- Tier 6 - Lv18-Infinite
				table.insert(technologies, create_a_level_of_technology(data, 6, "j", 18, nil, 17, true))
			end
		end
	else
		-- Tier 3 - Lv3-4
		table.insert(technologies, create_a_level_of_technology(data, 3, "c", 3, 4, 2))
		-- Tier 4 - Lv5-8
		table.insert(technologies, create_a_level_of_technology(data, 4, "d", 5, 8, 3))
		if enable_tier_5 then
			-- Tier 5 - Lv9-16
			table.insert(technologies, create_a_level_of_technology(data, 5, "e", 9, 16, 5))
			if enable_tier_6 then
				-- Tier 6 - Lv17-Infinite
				table.insert(technologies, create_a_level_of_technology(data, 6, "f", 17, nil, 9))
			end
		end
	end
	return technologies
end

--------------------------------------------------------------------------------------

-- Creates and registers the technologies according to the given technology data, either for the 4-level system or new-level system.
local function create_technologies(additional_condition_for_tier_5, additional_condition_for_tier_6, technology_data)
	if settings.startup[long_reach_research.names.setting.use_four_level_tech].value then
		-- 4-level system.
		-- Clear the effect_key, because it is used only for the new-level system.
		technology_data.effect_key = nil
		data:extend(create_four_level_technologies(technology_data))
	else
		-- New-level system.
		data:extend(create_new_level_technologies(additional_condition_for_tier_5, additional_condition_for_tier_6, technology_data))
	end
end

--------------------------------------------------------------------------------------

-- Long reach.
create_technologies(nil, nil,
{
	name_prefix = long_reach_research.names.technology.long_reach_prefix,
	icon_prefix = long_reach_research.mod_directory .. "/graphics/long-reach-",
	order_prefix = "a-b-a[long-reach-technologies]-a[long-reach]-",
	effect_key_prefix = "technology-effect.long-reach-research_character-reach-distance-bonus-",
	effect_key = "technology-effect.long-reach-research_character-reach-distance-bonus-3",
	need_divide_levels = true,
	level_1 =
	{
		icon = "1.png",
		bonus = 3,
		count = 10,
		ingredients = {{"science-pack-1", 1}},
		time = 15
	},
	level_2 =
	{
		icon = "2.png",
		bonus = 3,
		count = 60,
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
		time = 30,
		prerequisites = {"heavy-armor"}
	},
	level_3 =
	{
		icon = "3.png",
		bonus = 6,
		count = 120,
		count_formula = "(L-1)*60",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
		time = 30,
		prerequisites = {"modular-armor", "battery", "automation"}
	},
	level_4 =
	{
		icon = "4.png",
		bonus = 12,
		count = 240,
		count_formula = "(L-2)*80",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
		time = 45,
		prerequisites = {"power-armor"}
	},
	level_5 =
	{
		icon = "5.png",
		count_formula = "(L-4)*120",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
		time = 45,
		prerequisites = {"power-armor-2"}
	},
	level_6 =
	{
		icon = "6.png",
		count_formula = "2^(L-16)*50 + (L-8)*200",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}, {"space-science-pack", 1}},
		time = 60
	}
})

-- Long build.
create_technologies(
	settings.startup[long_reach_research.names.setting.enable_long_build_t5].value,
	settings.startup[long_reach_research.names.setting.enable_long_build_t6].value,
{
	name_prefix = long_reach_research.names.technology.long_build_prefix,
	icon_prefix = long_reach_research.mod_directory .. "/graphics/long-build-",
	prerequisite_name_prefix = long_reach_research.names.technology.long_reach_prefix,		
	order_prefix = "a-b-a[long-reach-technologies]-b[long-build]-",
	effect_key_prefix = "technology-effect.long-reach-research_character-build-distance-bonus-",
	effect_key = "technology-effect.long-reach-research_character-build-distance-bonus-3",
	level_1 =
	{
		icon = "1.png",
		bonus = 3,
		count = 30,
		ingredients = {{"science-pack-1", 1}},
		time = 15
	},
	level_2 =
	{
		icon = "2.png",
		bonus = 3,
		count = 100,
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
		time = 30
	},
	level_3 =
	{
		icon = "3.png",
		bonus = 6,
		count = 200,
		count_formula = "(L-1)*100",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
		time = 30
	},
	level_4 =
	{
		icon = "4.png",
		bonus = 12,
		count = 400,
		count_formula = "(L-3)*200",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
		time = 45
	},
	level_5 =
	{
		icon = "5.png",
		count_formula = "(L-5)*300+100",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
		time = 45
	},
	level_6 =
	{
		icon = "6.png",
		count_formula = "2^(L-15)*100+3400",
		ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}, {"space-science-pack", 1}},
		time = 60
	}
})

--------------------------------------------------------------------------------------

-- Long mine.
if settings.startup[long_mine_research.names.setting.enable_long_mine].value then
	create_technologies(
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
			time = 30
		},
		level_4 =
		{
			icon = "4.png",
			bonus = 5.4,
			count = 320,
			count_formula = "(L-2)*100+20",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
			time = 45
		},
		level_5 =
		{
			icon = "5.png",
			count_formula = "(L-5)*200+100",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
			time = 45
		}
	})
end

--------------------------------------------------------------------------------------

-- Long pickup.
if settings.startup[long_pickup_research.names.setting.enable_long_pickup].value then
	create_technologies(
		settings.startup[long_pickup_research.names.setting.enable_long_pickup_t5].value,
		false,
	{
		name_prefix = long_pickup_research.names.technology.long_pickup_prefix,
		icon_prefix = long_pickup_research.mod_directory .. "/graphics/long-pickup-",
		prerequisite_name_prefix = long_reach_research.names.technology.long_reach_prefix,	
		effect_key_prefix = "technology-effect.long-pickup-research_character-pickup-distance-bonus-",
		effect_key = "technology-effect.long-pickup-research_character-pickup-distance-bonus-0.5",
		order_prefix = "a-b-a[long-reach-technologies]-d[long-pickup]-",
		need_divide_levels = settings.startup[long_loot_research.names.setting.enable_long_loot].value,
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
			time = 60
		},
		level_4 =
		{
			icon = "4.png",
			bonus = 2,
			count = 1000,
			count_formula = "(L-3)*500",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}},
			time = 60
		},
		level_5 =
		{
			icon = "5.png",
			count_formula = "2^(L-7)*150+240",
			ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}},
			time = 60
		}
	})
end

--------------------------------------------------------------------------------------

-- Long loot.
if settings.startup[long_loot_research.names.setting.enable_long_loot].value then
	local prerequisite_name_prefix
	local prerequisites_level_1
	local counts = {}
	local count_formulas = {}
	local ingredients = {}
	local times = {}
	local enable_t5 = settings.startup[long_loot_research.names.setting.enable_long_loot_t5].value
	-- Check if long loot research is installed.
	if settings.startup[long_pickup_research.names.setting.enable_long_pickup].value then
		-- Installed!
		prerequisite_name_prefix = long_pickup_research.names.technology.long_pickup_prefix
		enable_t5 = enable_t5 and settings.startup[long_pickup_research.names.setting.enable_long_pickup_t5].value
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
		times[3] = 90
		
		counts[4] = 1600
		count_formulas[4] = "(L-3)*800"
		ingredients[4] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}, {"production-science-pack", 1}}
		times[4] = 90
		
		counts[5] = 0
		count_formulas[5] = "2^(L-7)*200+4000"
		ingredients[5] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}
		times[5] = 90
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
		times[3] = 60
		
		counts[4] = 1000
		count_formulas[4] = "(L-3)*500"
		ingredients[4] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}
		times[4] = 60
		
		counts[5] = 0
		count_formulas[5] = "2^(L-7)*150+2400"
		ingredients[5] = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}
		times[5] = 60
	end

	create_technologies(
		enable_t5,
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
end