data:extend(
{
     {
      type = "tile",
      name = "nitinol-arrow-grate",
      needs_correction = false,
      next_direction = "nitinol-arrow-grate-right",
      minable = {hardness = 0.2, mining_time = 0.5, result = "nitinol-arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.7,
      layer = 79,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/nitinol-grate-up1.png",
            count = 1,
            size = 1
          },
		  {
            picture = "__More_Floors__/graphics/terrain/metal-floor/large-nitinol-grate-up1.png",
            count = 1,
            size = 2,
            probability = 1.00,
          },
          
        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
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
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
    {
      type = "tile",
      name = "nitinol-arrow-grate-right",
      needs_correction = false,
      next_direction = "nitinol-arrow-grate-down",
      minable = {hardness = 0.2, mining_time = 0.5, result = "nitinol-arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.7,
      layer = 79,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/nitinol-grate-right1.png",
            count = 1,
            size = 1
          },
		  {
            picture = "__More_Floors__/graphics/terrain/metal-floor/large-nitinol-grate-right1.png",
            count = 1,
            size = 2,
            probability = 1.00,
          },
          
        },
        
			inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-side2.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
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
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
	{
      type = "tile",
      name = "nitinol-arrow-grate-down",
      needs_correction = false,
      next_direction = "nitinol-arrow-grate-left",
      minable = {hardness = 0.2, mining_time = 0.5, result = "nitinol-arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.7,
      layer = 79,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/nitinol-grate-down1.png",
            count = 1,
            size = 1
          },
		  {
            picture = "__More_Floors__/graphics/terrain/metal-floor/large-nitinol-grate-down1.png",
            count = 1,
            size = 2,
            probability = 1.00,
          },
          
        },
        	inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
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
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
    {
      type = "tile",
      name = "nitinol-arrow-grate-left",
      needs_correction = false,
      next_direction = "nitinol-arrow-grate",
      minable = {hardness = 0.2, mining_time = 0.5, result = "nitinol-arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.7,
      layer = 79,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/nitinol-grate-left1.png",
            count = 1,
            size = 1
          },
		  {
            picture = "__More_Floors__/graphics/terrain/metal-floor/large-nitinol-grate-left1.png",
            count = 1,
            size = 2,
            probability = 1.00,
          },
          
        },
        
			inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-side2.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
          count = 1
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/blank-floor.png",
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
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    
  }
}
)