data:extend(
{
     {
      type = "tile",
      name = "cobblestone",
      needs_correction = false,
      next_direction = "dry-grass-cobblestone",
      minable = {hardness = 0.2, mining_time = 0.5, result = "cobblestone"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.2,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__Extra_Floors__/graphics/terrain/stone-floor/grass-cobblestone-floor1.png",
            count = 16,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-side.png",
          count = 8
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
      name = "dry-grass-cobblestone",
      needs_correction = false,
      next_direction = "sand-cobblestone",
      minable = {hardness = 0.2, mining_time = 0.5, result = "cobblestone"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.2,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__Extra_Floors__/graphics/terrain/stone-floor/dry-grass-cobblestone-floor1.png",
            count = 16,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-side.png",
          count = 8
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
      name = "sand-cobblestone",
      needs_correction = false,
      next_direction = "dirt-cobblestone",
      minable = {hardness = 0.2, mining_time = 0.5, result = "cobblestone"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.2,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__Extra_Floors__/graphics/terrain/stone-floor/sand-cobblestone-floor1.png",
            count = 16,
            size = 1
          }
          
        },
        inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/sand-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/sand-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/sand-side.png",
          count = 8
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
      name = "dirt-cobblestone",
      needs_correction = false,
      next_direction = "cobblestone",
      minable = {hardness = 0.2, mining_time = 0.5, result = "cobblestone"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.2,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__Extra_Floors__/graphics/terrain/stone-floor/dirt-cobblestone-floor1.png",
            count = 16,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-side.png",
          count = 8
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