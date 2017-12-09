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
            }
        },
        order = "c-c-d"	
    } 
}
)	

	  
	  