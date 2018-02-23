local rawmulti = angelsmods.marathon.rawmulti
local param = 2 --Multiplier for larger recipe
--ORDERING: vanilla science-pack-1 is a, science-pack-2 is b etc

data:extend(
{
	--RED
	
	{
		type = "recipe",
		name = "alt1-science-pack-1",
		enabled = true,
		energy_required = 5,
		subgroup = "science-pack-1",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-1.png",
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
			{"stone-pipe", 5},
			{"wooden-chest", 3}
		},
		result = "science-pack-1"
	},
	
	{
		type = "recipe",
		name = "alt2-science-pack-1",
		enabled = true,
		energy_required = 5,
		subgroup = "science-pack-1",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-1.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"angels-plate-lead", 2},
			{"iron-stick", 3}
		},
		results = {{type="item", name="science-pack-1", amount=1}}
	},
	
	--GREEN
	
	{
		type = "recipe",
		name = "alt1-science-pack-2",
		enabled = true,
		energy_required = 6,
		subgroup = "science-pack-2",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-2.png",
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
			{"small-lamp", 1},
			{"boiler", 1}
		},
		results = {{type="item", name="science-pack-2", amount=1}}
	},
	
	--[[
	{
		type = "recipe",
		name = "alt2-science-pack-2",
		enabled = false,
		energy_required = 6,
		subgroup = "science-pack-2",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-2.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"offshore-pump", 1},
			{"steel-axe", 1}
		},
		results = {{type="item", name="science-pack-2", amount=1}}
	},
	
	{
		type = "recipe",
		name = "alt3-science-pack-2",
		enabled = false,
		energy_required = 6,
		subgroup = "science-pack-2",
		order = "a-d",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-2.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"repair-pack", 1},
			{"solid-carbon", 3}
		},
		results = {{type="item", name="science-pack-2", amount=1}}
	},]]--
	
	--BLUE
	
	{
		type = "recipe",
		name = "alt1-science-pack-3",
		enabled = false,
		energy_required = 12,
		subgroup = "science-pack-3",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-3.png",
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
			{"electronic-circuit", 3},
			{"steel-furnace", 1},
			{"electric-mining-drill", 1},
			{"invar-alloy", 1}
		},
		results = {{type="item", name="science-pack-3", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt2-science-pack-3",
		enabled = false,
		energy_required = 12,
		subgroup = "science-pack-3",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-3.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"solid-rubber", 3},
			{"ore-crusher", 1},
			{"fast-inserter", 1},
			{"cobalt-steel-alloy", 1}
		},
		results = {{type="item", name="science-pack-3", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt1-military-science-pack",
		enabled = false,
		energy_required = 12,
		subgroup = "military-science-pack",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/military-science-pack.png",
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
			{"stone-wall", 1},
			{"radar", 1},
			{"shotgun", 1},
		},
		results = {{type="item", name="military-science-pack", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt2-military-science-pack",
		enabled = false,
		energy_required = 10,
		subgroup = "military-science-pack",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/military-science-pack.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"shotgun-shell", 1},
			{"bob-sniper-turret-1", 1},
			{"gunmetal-alloy", 2}
		},
		results = {{type="item", name="military-science-pack", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt1-production-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "production-science-pack",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
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
			{"insulated-cable", 4},
			{"steam-cracker", 1}
		},
		results = {{type="item", name="production-science-pack", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt2-production-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "production-science-pack",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"angels-plate-manganese", 1},
			{"electrum-alloy", 1},
			{"angels-flare-stack", 1},
			{"accumulator", 1},
		},
		results = {{type="item", name="production-science-pack", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt1-high-tech-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "high-tech-science-pack",
		order = "a-b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/high-tech-science-pack.png",
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
			{"advanced-circuit", 3},
			{"productivity-module", 2},
			{"lithium", 1},
			{"gilded-copper-cable", 4},
			{"angels-plate-glass", 4},
		},
		results = {{type="item", name="high-tech-science-pack", amount=2}}
	},
	
	{
		type = "recipe",
		name = "alt2-high-tech-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "high-tech-science-pack",
		order = "a-c",
		icons =
		{
			{
				icon = "__base__/graphics/icons/high-tech-science-pack.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{"advanced-processing-unit", 2},
			{"silver-zinc-battery", 2},
			{"copper-tungsten-alloy", 3},
			{"angels-plate-cobalt", 1},
		},
		results = {{type="item", name="high-tech-science-pack", amount=2}}
	},
}
)