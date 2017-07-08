data:extend({
	{
		type = "technology",
		name = "illumination",
		icon = "__shmlamps__/graphics/technology/illumination.png",
		icon_size = 128,
        effects =
		{
			{
                type = "unlock-recipe",
                recipe = "medium-lamp"
			},
		},
		prerequisites = {"optics"},
		unit =
		{
			count = 120/6,
			ingredients =
			{
				{"science-pack-1", 1},
   			},
			time = 30
		},
	},
	{
		type = "technology",
		name = "advanced-illumination",
		icon = "__shmlamps__/graphics/technology/advanced-illumination.png",
		icon_size = 128,
        effects =
		{
			{
                type = "unlock-recipe",
                recipe = "medium-lamp-mk2"
			},
			{
                type = "unlock-recipe",
                recipe = "small-lamp-mk2"
			},
		},
		prerequisites = {"illumination", "steel-processing"},
		unit =
		{
			count = 120/6,
			ingredients =
			{
				{"science-pack-1", 2},
				{"science-pack-2", 1},
   			},
			time = 30
		},
	},    	
})
