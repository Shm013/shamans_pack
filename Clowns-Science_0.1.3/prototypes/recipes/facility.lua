local rawmulti = angelsmods.marathon.rawmulti
local energy_param = 12
local gas_param = 100
local order = "b"

if data.raw.recipe["logistic-science-pack"] then
data:extend(
{
	{
		type = "recipe",
		name = "facility-logistic-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "logistic-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="liquid-nitric-acid", amount=gas_param},
		},
		result = "logistic-science-pack"
	}
}
)
end

if data.raw.recipe["omni-pack"] and data.raw.fluid["omniston"] then
data:extend(
{
	{
		type = "recipe",
		name = "facility-omni-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "omni-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="omniston", amount=gas_param},
			{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
		},
		result = "omni-pack"
	}
}
)
end

data:extend(
{
	{
		type = "recipe",
		name = "facility-science-pack-1",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "science-pack-1",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-1.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="gas-oxygen", amount=gas_param},
			{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
		},
		result = "science-pack-1"
	},
	
	{
		type = "recipe",
		name = "facility-science-pack-2",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "science-pack-2",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-2.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="gas-chlorine", amount=gas_param},
			{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
		},
		result = "science-pack-2"
	},
	
	{
		type = "recipe",
		name = "facility-science-pack-3",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "science-pack-3",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/science-pack-3.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="gas-ammonia", amount=gas_param},
			{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
		},
		result = "science-pack-3"
	},
	
	{
		type = "recipe",
		name = "facility-military-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "military-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/military-science-pack.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="liquid-sulfuric-acid", amount=gas_param},
			{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
		},
		result = "military-science-pack"
	},
	
	{
		type = "recipe",
		name = "facility-production-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "production-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="gas-methanol", amount=gas_param},
		},
		result = "production-science-pack"
	},
	
	{
		type = "recipe",
		name = "facility-high-tech-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "high-tech-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/high-tech-science-pack.png",
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			scale = 0.32,
			shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients =
		{
			{type="fluid", name="liquid-hydrofluoric-acid", amount=gas_param},
		},
		result = "high-tech-science-pack"
	},
}
)