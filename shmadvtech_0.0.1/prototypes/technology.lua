data:extend({
    {
        type = "technology",
        name = "sci-component-1",
        icon = "__shmadvtech__/graphics/comp2.png",
        prerequisites =
        {
            "electronics",
            "alloy-processing-1"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "sci-component-2",
            },
        },
        unit =
        {
            count = 100,
            ingredients = 
            {
                {"science-pack-1", 1},
            },
            time = 15
        },
        upgrade = true,
        order = "a-a-a1"
    },
})

data:extend({
    {
        type = "technology",
        name = "sci-component-2",
        icon = "__shmadvtech__/graphics/comp3.png",
        prerequisites =
        {	
            "sci-component-1",
            "zinc-processing",
            "lead-processing",
            "aluminium-processing",
            "nickel-processing",
            "advanced-electronics",
            "battery"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "sci-component-3",
            },
	        {
                type = "unlock-recipe",
                recipe = "advcomp3",
            },
        },
        unit =
        {
            count = 150,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 30
        },
        upgrade = true,
        order = "a-a-a1"
    },
})

data:extend({
    {
    type = "technology",
    name = "sci-prod-component",
    icon = "__shmadvtech__/graphics/comp-prod.png",
    prerequisites =
    {	
		"sci-component-2",
		"advanced-research",
		"tungsten-processing",
		"titanium-processing",
		"gold-processing",
		"invar-processing",
		"cobalt-processing",
		"ceramics",
		"logistics-3",
		"battery-2",
		"advanced-electronics-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sci-prod-component",
      },
	  {
        type = "unlock-recipe",
        recipe = "advcomp-prod",
      },
    },
    unit =
    {
      count = 250,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-a1"
  },
})
data:extend({
    {
    type = "technology",
    name = "sci-alien-component",
    icon = "__shmadvtech__/graphics/advcomp-alien.png",
    prerequisites =
    {	
		"sci-component-2",
		"zinc-processing",
		"lithium-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advcomp-alien",
      },
    },
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "a-a-a2"
  },
})
data:extend({
    {
    type = "technology",
    name = "sci-log-component",
    icon = "__shmadvtech__/graphics/comp-log.png",
    prerequisites =
    {	
		"sci-component-2",
		"zinc-processing",
		"lithium-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sci-log-component",
      },
      {
        type = "unlock-recipe",
        recipe = "advcomp-log",
      },
    },
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "a-a-a2"
  },
})
