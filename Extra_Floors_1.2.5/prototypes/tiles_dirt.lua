data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "mf_dirt_dark",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_dirt_dark"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = false,
      layer = 59,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
        },



        inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-side.png",
          count = 8
        },
		u_transition =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-u.png",
          count = 8
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-o.png",
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
      map_color={r=132, g=89, b=33},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  {	  
  
  
	  type = "tile",
      name = "mf_dirt",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "mf_dirt"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = false,
      layer = 50,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor2.png",
            count = 8,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor4.png",
            count = 8,
            size = 4,
            probability = 1,	
          },  
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
        },
		u_transition =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-u.png",
          count = 8
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-o.png",
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
      map_color={r=140, g=105, b=33},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  
  {	  
  
  
	  type = "tile",
      name = "dirt_dark_blueprint",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "dirt_dark_blueprint"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = true,
      layer = 59,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
        },



        inner_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-side.png",
          count = 8
        },
		u_transition =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-u.png",
          count = 8
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-dark-o.png",
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
      map_color={r=132, g=89, b=33},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  
  {	  
  
  
	  type = "tile",
      name = "dirt_blueprint",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "dirt_blueprint"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
	  can_be_part_of_blueprint = true,
      layer = 50,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor2.png",
            count = 8,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-floor4.png",
            count = 8,
            size = 4,
            probability = 1,	
          },  
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
        },
		u_transition =
        {
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-u.png",
          count = 8
        },
		o_transition =
		{
          picture = "__Extra_Floors__/graphics/terrain/biome-floor/dirt-o.png",
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
      map_color={r=140, g=105, b=33},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  }
  
	 
}
)	 
		 
	