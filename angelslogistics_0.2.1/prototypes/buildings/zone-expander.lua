  data:extend(
  {
    {
    type = "item",
    name = "angels-zone-expander",
    icon = "__angelslogistics__/graphics/icons/angels-zone-expander.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "b[angels-zone-expander]",
    place_result = "angels-zone-expander",
    stack_size = 50
    },
    {
    type = "roboport",
    name = "angels-zone-expander",
    icon = "__angelslogistics__/graphics/icons/angels-zone-expander.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-zone-expander"},
    fast_replaceable_group = "roboport",
    max_health = 500,
    corpse = "small-remnants",
	--collision_mask = {"ghost-layer"},
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "1kW",
      buffer_capacity = "1kW"
    },
	charging_energy = "0kW",
	recharge_minimum = "0MJ",
	energy_usage = "0kW",
    logistics_radius = 4.5,
    construction_radius = 0,
	charge_approach_distance = 0,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, 0}},
    base =
    {
      filename = "__angelslogistics__/graphics/entity/zone-expander/zone-expander-base.png",
      width = 128,
      height = 224,
      shift = {0.25, -1},
	  scale = 0.5,
    },
	base_animation =
    {
      filename = "__angelslogistics__/graphics/entity/zone-expander/zone-expander.png",
      priority = "medium",
      width = 128,
      height = 224,
      frame_count = 16,
	  line_length = 4,
      shift = {0.25, -1},
	  scale = 0.5,
	  animation_speed = 0.5
    },
	base_patch =
	{
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
	door_animation =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_up =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_down =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    recharging_animation =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
	recharging_light = {intensity = 0, size = 0},
    request_to_open_door_timeout = 0,
    spawn_and_station_height = 0,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
	circuit_wire_connection_point =
    {
      shadow =
      {
        red = {1.17188, 1.98438},
        green = {1.04688, 2.04688}
      },
      wire =
      {
        red = {0.78125, 1.375},
        green = {0.78125, 1.53125}
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
    circuit_wire_max_distance = 10,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  },
    {
    type = "item",
    name = "angels-zone-expander-2",
    icon = "__angelslogistics__/graphics/icons/angels-zone-expander-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cargo-bots",
    order = "b[angels-zone-expander-2]",
    place_result = "angels-zone-expander-2",
    stack_size = 50
    },
    {
    type = "roboport",
    name = "angels-zone-expander-2",
    icon = "__angelslogistics__/graphics/icons/angels-zone-expander-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-zone-expander-2"},
    fast_replaceable_group = "roboport",
    max_health = 500,
    corpse = "small-remnants",
	--collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "1kW",
      buffer_capacity = "1kW"
    },
	charging_energy = "0kW",
	recharge_minimum = "0MJ",
	energy_usage = "0kW",
    logistics_radius = 10,
    construction_radius = 0,
	charge_approach_distance = 0,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, 0}},
    base =
    {
      filename = "__angelslogistics__/graphics/entity/zone-expander/zone-expander-base.png",
      width = 128,
      height = 224,
      shift = {0.5, -2},
    },
	base_animation =
    {
      filename = "__angelslogistics__/graphics/entity/zone-expander/zone-expander.png",
      priority = "medium",
      width = 128,
      height = 224,
      frame_count = 16,
	  line_length = 4,
      shift = {0.5, -2},
	  animation_speed = 0.5
    },
	base_patch =
	{
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
	door_animation =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_up =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_down =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    recharging_animation =
    {
      filename = "__angelslogistics__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
	recharging_light = {intensity = 0, size = 0},
    request_to_open_door_timeout = 0,
    spawn_and_station_height = 0,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
	circuit_wire_connection_point =
    {
      shadow =
      {
        red = {1.17188, 1.98438},
        green = {1.04688, 2.04688}
      },
      wire =
      {
        red = {0.78125, 1.375},
        green = {0.78125, 1.53125}
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
    circuit_wire_max_distance = 10,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  },
  }
  )