data:extend(
{
    {
        type = "item",
        name = "Arci-asphalt",
        icon = "__AsphaltRoads__/graphics/icons/asphalt.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "Arci-asphalt",
        order = "a",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-hazard-white",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-hazard-white.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "g",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-hazard-white-left",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-hazard-yellow",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-hazard-yellow.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "h",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-hazard-yellow-left",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-hazard-red",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-hazard-red.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "i",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-hazard-red-left",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },
    {
        type = "item",
        name = "Arci-asphalt-hazard-blue",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-hazard-blue.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "j",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-hazard-blue-left",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	    
    {
        type = "item",
        name = "Arci-asphalt-marking-white-straight",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-white-straight.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "b",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-white-ns",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-marking-white-diagonal",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-white-diagonal.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "c",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-white-swne",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-marking-white-corner-left",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-white-corner-left.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "c",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-white-snw",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-marking-white-corner-right",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-white-corner-right.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "c",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-white-sne",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	    
    {
        type = "item",
        name = "Arci-asphalt-marking-yellow-straight",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-yellow-straight.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "d",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-yellow-ns",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-marking-yellow-diagonal",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-yellow-diagonal.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "e",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-yellow-swne",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	   
    {
        type = "item",
        name = "Arci-asphalt-marking-yellow-corner-left",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-yellow-corner-left.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "e",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-yellow-snw",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	
    {
        type = "item",
        name = "Arci-asphalt-marking-yellow-corner-right",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-marking-yellow-corner-right.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "e",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-marking-yellow-sne",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	     
    {
        type = "item",
        name = "Arci-asphalt-zebra-crossing",
        icon = "__AsphaltRoads__/graphics/icons/asphalt-zebra-crossing.png",
        flags = {"goes-to-quickbar"},
        subgroup = "Arci-asphalt",
        order = "f",
        stack_size = 100,
        place_as_tile =
        {
            result = "Arci-asphalt-zebra-crossing-vertical",
            condition_size = 4,
            condition = { "water-tile" }
        }
    },	    
}
)  
	
	
	


