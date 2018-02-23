data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "mf_green_grass",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_green_grass"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = false,
      layer = 60,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
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
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-o.png",
          count = 1
        }

       
      },
	  
	  
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/grass-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=57, g=48, b=16},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  {	  
  
  
	  type = "tile",
      name = "mf_grass_dry",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_grass_dry"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = false,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor2.png",
            count = 8,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor4.png",
            count = 8,
            size = 4,
            probability = 1,	
          },  
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
          filename = "__base__/sound/walking/grass-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=49, g=36, b=8},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  
  {	  
  
  
	  type = "tile",
      name = "mf_grass_dry_blueprint",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_grass_dry_blueprint"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = true,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-dry-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
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
          filename = "__base__/sound/walking/grass-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=49, g=36, b=8},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  {	  
  
  
	  type = "tile",
      name = "mf_green_grass_blueprint",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_green_grass_blueprint"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = true,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor2.png",
            count = 8,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-floor4.png",
            count = 8,
            size = 4,
            probability = 1,	
          },  
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
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/grass-o.png",
          count = 1
        }

       
      },
	  
	  
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/grass-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/grass-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=57, g=48, b=16},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  }
  
	 
}
)	 
		 
	