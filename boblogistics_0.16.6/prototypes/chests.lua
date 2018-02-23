if data.raw.item["brass-alloy"] then data:extend
{
  {
    type = "recipe",
    name = "brass-chest",
    enabled = false,
    ingredients = {{"brass-alloy", 8}},
    result = "brass-chest",
  },
  {
    type = "item",
    name = "brass-chest",
    icon = "__boblogistics__/graphics/icons/brass-chest.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-d[brass-chest]",
    place_result = "brass-chest",
    stack_size = 50
  },
  {
    type = "container",
    name = "brass-chest",
    icon = "__boblogistics__/graphics/icons/brass-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "brass-chest"},
    max_health = 500,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 70
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 64,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__boblogistics__/graphics/entity/chest/brass-chest.png",
      priority = "extra-high",
      width = 46,
      height = 32,
      shift = {0.21875, 0}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
} end

if data.raw.item["titanium-plate"] then data:extend
{
  {
    type = "recipe",
    name = "titanium-chest",
    enabled = false,
    ingredients = {{"titanium-plate", 8}},
    result = "titanium-chest",
  },
  {
    type = "item",
    name = "titanium-chest",
    icon = "__boblogistics__/graphics/icons/titanium-chest.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-e[titanium-chest]",
    place_result = "titanium-chest",
    stack_size = 50
  },
  {
    type = "container",
    name = "titanium-chest",
    icon = "__boblogistics__/graphics/icons/titanium-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "titanium-chest"},
    max_health = 650,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 90
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 80,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__boblogistics__/graphics/entity/chest/titanium-chest.png",
      priority = "extra-high",
      width = 46,
      height = 32,
      shift = {0.21875, 0}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
} end

