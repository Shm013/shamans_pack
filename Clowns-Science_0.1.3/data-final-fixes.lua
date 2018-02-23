if data.raw.recipe["omni-pack"] and data.raw.fluid["omniston"] then
	table.insert(data.raw["technology"]["facility"].effects, {type = "unlock-recipe", recipe = "facility-omni-pack"})
end

if mods["omnimatter_science"] then
	data.raw.recipe["production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["alt1-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["alt2-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["alt2-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
		},
		{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
		}
	}
end