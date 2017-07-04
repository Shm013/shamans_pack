data:extend(
{
    {
        type = "technology",
        name = "Arci-asphalt",
        icon = "__AsphaltRoads__/graphics/technology/tech-asphalt.png",
        icon_size = 128,
        prerequisites = {"concrete"},
        unit =
        {
            count = 300,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"production-science-pack", 1}
            },
        time = 45
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-zebra-crossing"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-hazard-white"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-hazard-yellow"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-hazard-red"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-hazard-blue"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-white-straight"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-white-diagonal"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-white-corner-right"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-white-corner-left"
            },            
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-yellow-straight"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-yellow-diagonal"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-yellow-corner-right"
            },
            {
                type = "unlock-recipe",
                recipe = "Arci-asphalt-marking-yellow-corner-left"
            },                        
        },
        order = "c-c-d"	
    } 
}
)	

	  
	  