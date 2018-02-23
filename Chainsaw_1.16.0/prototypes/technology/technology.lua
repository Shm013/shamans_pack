data:extend({
	{
		type = "technology",
		name = "chainsaw",
		icon = "__Chainsaw__/graphics/technology/chainsaw.png",
    icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "chainsaw"
			},
		},
		prerequisites = {"steel-processing", "engine"},
		unit =
		{
			count = 20,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 20
		},
		order = "c-c-d",
	},
})
