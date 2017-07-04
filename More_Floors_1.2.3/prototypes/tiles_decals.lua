data:extend(
{
    {	
	  type = "tile",
      name = "decal1",
      needs_correction = false,
	  next_direction = "decal2",
      minable = {hardness = 0.2, mining_time = 0.5, result = "decal1"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal-floor1.png",
            count = 16,
            size = 1,
          },
		  
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal-floor2.png",
            count = 1,
            size = 2,
			probability = 1.0,
          }
		

        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-o.png",
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
      map_color={r=10, g=10, b=15},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  },
  
  {	

	  type = "tile",
      name = "decal2",
      needs_correction = false,
	  next_direction = "decal3",
      minable = {hardness = 0.2, mining_time = 0.5, result = "decal1"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal2-floor1.png",
            count = 16,
            size = 1,
          },
		  
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal2-floor2.png",
            count = 1,
            size = 2,
			probability = 1.0,
          }
		

        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-o.png",
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
      map_color={r=10, g=10, b=15},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  },
  
  
  {	

	  type = "tile",
      name = "decal3",
      needs_correction = false,
	  next_direction = "decal4",
      minable = {hardness = 0.2, mining_time = 0.5, result = "decal1"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal3-floor1.png",
            count = 16,
            size = 1,
          },
		  
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal3-floor2.png",
            count = 1,
            size = 2,
			probability = 1.0,
          }
		

        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-o.png",
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
      map_color={r=10, g=10, b=15},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  },
  
  
  {	

	  type = "tile",
      name = "decal4",
      needs_correction = false,
	  next_direction = "decal1",
      minable = {hardness = 0.2, mining_time = 0.5, result = "decal1"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal4-floor1.png",
            count = 16,
            size = 1,
          },
		  
		  {
            picture = "__More_Floors__/graphics/terrain/other-floor/decal4-floor2.png",
            count = 1,
            size = 2,
			probability = 1.0,
          }
		

        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/other-floor/concrete-o.png",
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
      map_color={r=10, g=10, b=15},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  }
	 
}
)	 
	