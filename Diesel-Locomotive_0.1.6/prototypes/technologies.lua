data:extend{{
    type = "technology",
    name = "diesel-locomotive",
    icon = "__Diesel-Locomotive__/graphics/technologies/diesel-locomotive.png",
	icon_size = 128,
    effects =
    {
      {
		type = "unlock-recipe",
		recipe = "Diesel-Locomotive-fluid-locomotive"
		}
    },
    prerequisites = {"railway", "oil-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "c-g-a-c",
}}