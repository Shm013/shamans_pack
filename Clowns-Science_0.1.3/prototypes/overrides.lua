local gas_param = 100

--ICONS
data.raw.recipe["science-pack-1"].icons =
{
	{
		icon = "__base__/graphics/icons/science-pack-1.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}
data.raw.recipe["science-pack-2"].icons =
{
	{
		icon = "__base__/graphics/icons/science-pack-2.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}
data.raw.recipe["science-pack-3"].icons =
{
	{
		icon = "__base__/graphics/icons/science-pack-3.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}
data.raw.recipe["military-science-pack"].icons =
{
	{
		icon = "__base__/graphics/icons/military-science-pack.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}
data.raw.recipe["production-science-pack"].icons =
{
	{
		icon = "__base__/graphics/icons/production-science-pack.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}
data.raw.recipe["high-tech-science-pack"].icons =
{
	{
		icon = "__base__/graphics/icons/high-tech-science-pack.png",
	},
	{
		icon = "__angelspetrochem__/graphics/icons/num_1.png",
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}
	}
	
}

data.raw.recipe["science-pack-1"].icon_size = 32
data.raw.recipe["science-pack-2"].icon_size = 32
data.raw.recipe["science-pack-3"].icon_size = 32
data.raw.recipe["military-science-pack"].icon_size = 32
data.raw.recipe["production-science-pack"].icon_size = 32
data.raw.recipe["high-tech-science-pack"].icon_size = 32

data.raw["tool"]["science-pack-1"].subgroup = "science-pack-1"
data.raw["tool"]["science-pack-2"].subgroup = "science-pack-2"
data.raw["tool"]["science-pack-3"].subgroup = "science-pack-3"
data.raw["tool"]["military-science-pack"].subgroup = "military-science-pack"
data.raw["tool"]["production-science-pack"].subgroup = "production-science-pack"
data.raw["tool"]["high-tech-science-pack"].subgroup = "high-tech-science-pack"

data.raw["tool"]["science-pack-1"].order = "a-a"
data.raw["tool"]["science-pack-2"].order = "a-a"
data.raw["tool"]["science-pack-3"].order = "a-a"
data.raw["tool"]["military-science-pack"].order = "a-a"
data.raw["tool"]["production-science-pack"].order = "a-a"
data.raw["tool"]["high-tech-science-pack"].order = "a-a"

if data.raw.recipe["logistic-science-pack"] then
	data.raw.recipe["logistic-science-pack"].icons =
	{
		{
			icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["logistic-science-pack"].icon_size = 32
	data.raw["tool"]["logistic-science-pack"].subgroup = "logistic-science-pack"
	data.raw["tool"]["logistic-science-pack"].order = "a-a"
	table.insert(data.raw["technology"]["logistics-3"].effects, {type = "unlock-recipe", recipe = "alt1-logistic-science-pack"})
	data:extend({{
		type = "recipe",
		name = "alt1-logistic-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "logistic-science-pack",
		order = "a-b",
		icons =
		{
			{
				icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_2.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"rail", 3},
			{"angels-plate-chrome", 1},
			{"substation", 1},
			{"filter-inserter", 1}
		},
		results = {{type="item", name="logistic-science-pack", amount=2}}
	}})
end

if data.raw.recipe["omni-pack"] then
	data.raw["tool"]["omni-pack"].subgroup = "omni-pack"
	data.raw["tool"]["omni-pack"].order = "a-a"
end

if data.raw.fluid["liquid-mercury"] then
	table.insert(data.raw["recipe"]["facility-high-tech-science-pack"].ingredients, {type="fluid", name="liquid-mercury", amount=gas_param})
	table.insert(data.raw["recipe"]["facility-production-science-pack"].ingredients, {type="fluid", name="liquid-mercury", amount=gas_param})
	if data.raw.recipe["facility-logistic-science-pack"] then
		table.insert(data.raw["recipe"]["facility-logistic-science-pack"].ingredients, {type="fluid", name="liquid-mercury", amount=gas_param})
	end
else
	table.insert(data.raw["recipe"]["facility-high-tech-science-pack"].ingredients, {type="fluid", name="gas-carbon-monoxide", amount=gas_param})
	table.insert(data.raw["recipe"]["facility-production-science-pack"].ingredients, {type="fluid", name="gas-carbon-monoxide", amount=gas_param})
	if data.raw.recipe["facility-logistic-science-pack"] then
		table.insert(data.raw["recipe"]["facility-logistic-science-pack"].ingredients, {type="fluid", name="gas-carbon-monoxide", amount=gas_param})
	end
end

table.insert(data.raw["technology"]["military-2"].effects, {type = "unlock-recipe", recipe = "alt1-military-science-pack"})
table.insert(data.raw["technology"]["military-2"].effects, {type = "unlock-recipe", recipe = "alt2-military-science-pack"})
table.insert(data.raw["technology"]["military-2"].effects, {type = "unlock-recipe", recipe = "facility-military-science-pack"})

table.insert(data.raw["technology"]["advanced-electronics"].effects, {type = "unlock-recipe", recipe = "alt1-science-pack-3"})
table.insert(data.raw["technology"]["advanced-electronics"].effects, {type = "unlock-recipe", recipe = "alt2-science-pack-3"})
table.insert(data.raw["technology"]["advanced-electronics"].effects, {type = "unlock-recipe", recipe = "facility-science-pack-3"})

table.insert(data.raw["technology"]["advanced-electronics-2"].effects, {type = "unlock-recipe", recipe = "alt1-high-tech-science-pack"})
table.insert(data.raw["technology"]["advanced-electronics-2"].effects, {type = "unlock-recipe", recipe = "alt2-high-tech-science-pack"})
table.insert(data.raw["technology"]["advanced-electronics-2"].effects, {type = "unlock-recipe", recipe = "facility-high-tech-science-pack"})

table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "alt1-production-science-pack"})
table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "alt2-production-science-pack"})
table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "facility-production-science-pack"})

if data.raw.recipe["logistic-science-pack"] then
	table.insert(data.raw["technology"]["logistics-3"].effects, {type = "unlock-recipe", recipe = "facility-logistic-science-pack"})
end

if mods["omnimatter_crystal"] then
	omni.lib.add_recipe_ingredient("alt1-science-pack-3","basic-crystallonic")
	omni.lib.add_recipe_ingredient("alt2-science-pack-3","basic-crystallonic")
	omni.lib.add_recipe_ingredient("alt1-production-science-pack","basic-oscillo-crystallonic")
	omni.lib.add_recipe_ingredient("alt2-production-science-pack","basic-oscillo-crystallonic")
	omni.lib.add_recipe_ingredient("alt1-high-tech-science-pack","basic-oscillo-crystallonic")
	omni.lib.add_recipe_ingredient("alt2-high-tech-science-pack","basic-oscillo-crystallonic")
	omni.lib.add_recipe_ingredient("alt1-logistic-science-pack","basic-oscillo-crystallonic")
end