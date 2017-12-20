-- Basic components --
data:extend({
    {
        type = "technology",
        name = "sci-basic-components",
        icon = "__shmadvtech__/graphics/comp2.png",
        prerequisites =
        {
            "electronics",
--            "alloy-processing-1"
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
            count = 50,
            ingredients = 
            {
                {"science-pack-1", 1},
            },
            time = 15
        },
        upgrade = true,
        order = "a-a-a1"
    },

-- Midle components --
    {
        type = "technology",
        name = "sci-midle-components",
        icon = "__shmadvtech__/graphics/comp3.png",
        prerequisites =
        {	
            "sci-basic-components",
--            "lead-processing",
--            "aluminium-processing",
--            "nickel-processing",
--            "advanced-electronics",
            "plastics",
            "battery",
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

-- Production components --
    {
    type = "technology",
    name = "sci-prod-components",
    icon = "__shmadvtech__/graphics/comp-prod.png",
    prerequisites =
    {	
        "sci-midle-components",
--		"advanced-research",
--		"tungsten-processing",
--		"titanium-processing",
--		"ceramics",
--		"battery-2",
--        "zinc-processing",
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
        count = 200,
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
-- Military componets --

    {
        type = "technology",
        name = "milotary-components",
        icon = "__shmadvtech__/graphics/comp-military.png",
        prerequisites =
        {	
            "sci-basic-components",
            "military-2",
        },
        unit =
        {
            count = 50,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 30
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "sci-military-component",
            },
        },
    },

-- HT components --
    {
        type = "technology",
        name = "ht-components",
        icon = "__shmadvtech__/graphics/comp-ht.png",
        prerequisites =
        {	
            "sci-prod-components",
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
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "sci-ht-component",
            },
        },
    },

})

-- logistic components, bobtech require --
if data.raw["tool"]["logistic-science-pack"] then
    data:extend({
        {
            type = "technology",
            name = "sci-log-components",
            icon = "__shmadvtech__/graphics/comp-log.png",
            prerequisites =
            {	
                "sci-midle-components",
        --		"advanced-research",
        --		"electrum-processing",
        --        "concrete",
        --        "zinc-processing",
        --        "lithium-processing",
        --        "robotics",
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
end

-- Alien components. bobtech, bobwarfare, bobenemies require --
if data.raw["tool"]["alien-science-pack"] then
    data:extend({
        {
            type = "technology",
            name = "sci-alien-components",
            icon = "__shmadvtech__/graphics/comp-alien.png",
            prerequisites =
            {	
                "sci-midle-components",
        --		"advanced-research",
        --		"zinc-processing",
        --		"lithium-processing"
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "sci-alien-component",
                },
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
end
