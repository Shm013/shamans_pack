require "config"

data:extend(
{
    -- asphalt tile --------------------------------------------------------------------
    {
    
        type = "tile",
        name = "Arci-asphalt",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier 
    },
    -- asphalt zebra crossing tiles ----------------------------------------------------
    {
        type = "tile",
        name = "Arci-asphalt-zebra-crossing-horizontal",
        next_direction = "Arci-asphalt-zebra-crossing-vertical",
        --if merge_transitions_of_asphalt_tiles then transition_merges_with_tiles = asphalt_merge_tile end,
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-horizontal/azch1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-horizontal/azch2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-horizontal/azch4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-zebra-crossing-vertical",
        next_direction = "Arci-asphalt-zebra-crossing-horizontal",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-vertical/azcv1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-vertical/azcv2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-zebra-crossing-vertical/azcv4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
  
    -- hazard marking tiles ------------------------------------------------------------
    {
        type = "tile",
        name = "Arci-asphalt-hazard-white-left",
        next_direction = "Arci-asphalt-hazard-white-right",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-left/ahwl1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-left/ahwl2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-left/ahwl4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-white-right",
        next_direction = "Arci-asphalt-hazard-white-left",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-right/ahwr1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-right/ahwr2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-white-right/ahwr4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-yellow-left",
        next_direction = "Arci-asphalt-hazard-yellow-right",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-left/ahyl1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-left/ahyl2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-left/ahyl4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-yellow-right",
        next_direction = "Arci-asphalt-hazard-yellow-left",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-right/ahyr1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-right/ahyr2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-yellow-right/ahyr4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-red-left",
        next_direction = "Arci-asphalt-hazard-red-right",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-left/ahrl1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-left/ahrl2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-left/ahrl4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_red,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-red-right",
        next_direction = "Arci-asphalt-hazard-red-left",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-right/ahrr1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-right/ahrr2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-red-right/ahrr4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_red,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-blue-left",
        next_direction = "Arci-asphalt-hazard-blue-right",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-left/ahbl1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-left/ahbl2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-left/ahbl4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_blue,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-hazard-blue-right",
        next_direction = "Arci-asphalt-hazard-blue-left",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-right/ahbr1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-right/ahbr2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__AsphaltRoads__/graphics/terrain/asphalt-hazard-blue-right/ahbr4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_blue,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    -- lane marking tiles --------------------------------------------------------------
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-ns",
        next_direction = "Arci-asphalt-marking-white-we",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-ns/amw-ns.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-swne",
        next_direction = "Arci-asphalt-marking-white-nwse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_priority_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-swne/amw-swne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/marking-white-swne/amw-swne-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-we",
        next_direction = "Arci-asphalt-marking-white-ns",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-we/amw-we.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },    
    {
    
        type = "tile",
        name = "Arci-asphalt-marking-white-nwse",
        next_direction = "Arci-asphalt-marking-white-swne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_priority_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-nwse/amw-nwse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/marking-white-nwse/amw-nwse-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },    
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-ns",
        next_direction = "Arci-asphalt-marking-yellow-we",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-ns/amy-ns.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-swne",
        next_direction = "Arci-asphalt-marking-yellow-nwse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_priority_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-swne/amy-swne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-swne/amy-swne-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-we",
        next_direction = "Arci-asphalt-marking-yellow-ns",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-we/amy-we.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },    
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-nwse",
        next_direction = "Arci-asphalt-marking-yellow-swne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_priority_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-nwse/amy-nwse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-nwse/amy-nwse-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },    
    -- asphalt connector tiles ----------------------------------------------------
    -- white --
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-sne",
        next_direction = "Arci-asphalt-marking-white-wse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-sne/amw-sne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-wse",
        next_direction = "Arci-asphalt-marking-white-nsw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-wse/amw-wse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-nsw",
        next_direction = "Arci-asphalt-marking-white-enw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-nsw/amw-nsw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-enw",
        next_direction = "Arci-asphalt-marking-white-sne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-enw/amw-enw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-snw",
        next_direction = "Arci-asphalt-marking-white-wne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-snw/amw-snw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-wne",
        next_direction = "Arci-asphalt-marking-white-nse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-wne/amw-wne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-nse",
        next_direction = "Arci-asphalt-marking-white-esw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-nse/amw-nse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-white-esw",
        next_direction = "Arci-asphalt-marking-white-snw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-white-esw/amw-esw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_white,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    -- yellow --
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-sne",
        next_direction = "Arci-asphalt-marking-yellow-wse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-sne/amy-sne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-wse",
        next_direction = "Arci-asphalt-marking-yellow-nsw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-wse/amy-wse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-nsw",
        next_direction = "Arci-asphalt-marking-yellow-enw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-nsw/amy-nsw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-enw",
        next_direction = "Arci-asphalt-marking-yellow-sne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-enw/amy-enw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-snw",
        next_direction = "Arci-asphalt-marking-yellow-wne",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-snw/amy-snw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-wne",
        next_direction = "Arci-asphalt-marking-yellow-nse",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-wne/amy-wne.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-nse",
        next_direction = "Arci-asphalt-marking-yellow-esw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-nse/amy-nse.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },
    {
        type = "tile",
        name = "Arci-asphalt-marking-yellow-esw",
        next_direction = "Arci-asphalt-marking-yellow-snw",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "Arci-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = {"ground-tile"},
        walking_speed_modifier = asphalt_walking_speed_modifier,
        layer = asphalt_base_layer,
        decorative_removal_probability = 0.97,
        variants =
        {
            main =
            {
                {
                    picture = "__AsphaltRoads__/graphics/terrain/marking-yellow-esw/amy-esw.png",
                    count = 16,
                    size = 1
                }
            },
            inner_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-u.png",
                count = 8
            },
                o_transition =
            {
                picture = "__AsphaltRoads__/graphics/terrain/asphalt/asphalt-o.png",
                count = 1
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = asphalt_colour_marking_yellow,
        ageing=0,
        vehicle_friction_modifier = asphalt_vehicle_speed_modifier
    },    
})