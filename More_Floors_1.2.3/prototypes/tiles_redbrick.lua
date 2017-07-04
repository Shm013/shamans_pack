data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "redbrick",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "redbrick"},
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
             picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-floor1.png",
            count = 16,
            size = 1
          },
        },
        inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/redbrick-o.png",
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
      map_color={r=25, g=25, b=25},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  }
	 
}
)	 
	