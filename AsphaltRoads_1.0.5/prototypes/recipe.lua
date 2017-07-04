require "config"

data:extend(
{
    {
        type = "recipe",
        name = "Arci-asphalt",
        energy_required = 10,
        enabled = false,
        category = "chemistry",
        ingredients =
        {
            {type="fluid", name="crude-oil", amount=3},
            {type="fluid", name="heavy-oil", amount=3},
            {type="item", name="stone-brick", amount=4}
        },
        result= "Arci-asphalt",
        result_count = 10,
        crafting_machine_tint =
        {
            primary = {r = 0.130, g = 0.150, b = 0.110, a = 0.300}, 
            secondary = {r = 0.150, g = 0.170, b = 0.150, a = 0.100}, 
            tertiary = {r = 0.450, g = 0.470, b = 0.490, a = 0.400}, 
        }
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-hazard-white",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-hazard-white",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-hazard-yellow",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-hazard-yellow",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-hazard-red",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-hazard-red",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-hazard-blue",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-hazard-blue",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-white-straight",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-white-straight",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-white-diagonal",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-white-diagonal",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-white-corner-right",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-white-corner-right",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-white-corner-left",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-white-corner-left",
        result_count = 10
    },    
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-yellow-straight",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-yellow-straight",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-yellow-diagonal",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-yellow-diagonal",
        result_count = 10
    },    
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-yellow-corner-right",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-yellow-corner-right",
        result_count = 10
    },
    {
    	type = "recipe",
        name = "Arci-asphalt-marking-yellow-corner-left",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-marking-yellow-corner-left",
        result_count = 10
    },        
    {
    	type = "recipe",
        name = "Arci-asphalt-zebra-crossing",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"Arci-asphalt", 10}
        },
        result= "Arci-asphalt-zebra-crossing",
        result_count = 10
    },    
})