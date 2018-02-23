data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "tar",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "tar"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 0.15,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-floor2.png",
            count = 4,
            size = 2
            
          },
          {
            picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-floor4.png",
            count = 4,
            size = 4,	
          },  
        },



        inner_corner =
      {
        picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-inner-corner.png",
        count = 6
      },
      outer_corner =
      {
        picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-outer-corner.png",
        count = 6
      },
      side =
      {
        picture = "__Extra_Floors__/graphics/terrain/biome-floor/tar-side.png",
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
      map_color={r=25, g=25, b=25},
      ageing=0,
      vehicle_friction_modifier = sand_vehicle_speed_modifier

  }
	 
}
)	 
		 
	