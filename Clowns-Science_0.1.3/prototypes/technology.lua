--COMPILE LIST OF PREREQUISITES FOR PARTICLE ACCELERATOR
local prereqs =
{
	"military-2",
	"advanced-electronics",
	"advanced-electronics-2",
	"advanced-material-processing-2",
}

if data.raw.recipe["logistic-science-pack"] then
	table.insert(prereqs, "logistics-3")
end

data:extend(
{
	{
		type = "technology",
		name = "facility",
		icon = "__Clowns-Science__/graphics/technology/facility.png",
		icon_size = 128,
		prerequisites = {},
		unit =
		{
			count = 20,
			time = 30,
			ingredients =
			{
				{"science-pack-1", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "facility"
			},
			{
				type = "unlock-recipe",
				recipe = "facility-science-pack-1"
			},
			{
				type = "unlock-recipe",
				recipe = "facility-science-pack-2"
			}
		}
	},
	
	{
		type = "technology",
		name = "particle-accelerator",
		icon = "__Clowns-Science__/graphics/technology/particle-accelerator.png",
		icon_size = 128,
		prerequisites = prereqs,
		unit =
		{
			count = 100,
			time = 30,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
				{"high-tech-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator"
			},
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-1"
			},
		},
	}
}
)