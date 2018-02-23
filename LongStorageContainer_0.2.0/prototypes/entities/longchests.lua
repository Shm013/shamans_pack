data:extend(
{
 {
    type = "item",
    name = "long-chest",
    icons = {{
	    icon = "__base__/graphics/icons/steel-chest.png",
	    tint = {r = 0.6, g = 0.6, b = 1, a = 1}
    }},
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-d[long-chest]",
    place_result = "long-chest",
    stack_size = 20
  },
   {
    type = "container",
    name = "long-chest",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "long-chest"},
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
    selection_box = {{-1, -0.5}, {1, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__LongStorageContainer__/graphics/entity/long-chest.png",
      priority = "extra-high",
      width = 81,
      height = 34,
      shift = {0.1875, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5
  }
})
