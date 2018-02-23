bobmods.logistics.robot_shadow = {
  filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
  priority = "high",
  width = 52,
  height = 37,
  frame_count = 1,
  direction_count = 1
}

bobmods.logistics.smoke = {
  filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
  width = 39,
  height = 32,
  frame_count = 19,
  line_length = 19,
  shift = {0.078125, -0.15625},
  animation_speed = 0.3,
}

bobmods.logistics.sparks = {
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.203125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.234375},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.171875},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
}


function bobmods.logistics.robot_picture(filename)
return {
  filename = filename,
  priority = "high",
  width = 32,
  height = 32,
  frame_count = 1,
  direction_count = 1
}
end


data:extend(
{
  {
    type = "logistic-robot",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/logistic-robot-2.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-2"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 125,
    max_payload_size = 3,
    speed = 0.07,
    max_energy = "2250kJ",
    energy_per_tick = "65J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-2.png"),
    idle_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-2.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-2.png"),
    in_motion_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-2.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_in_motion_with_cargo = bobmods.logistics.robot_shadow,
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/logistic-robot-3.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-3"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 150,
    max_payload_size = 6,
    speed = 0.09,
    max_energy = "3000kJ",
    energy_per_tick = "80J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-3.png"),
    idle_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-3.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-3.png"),
    in_motion_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-3.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_in_motion_with_cargo = bobmods.logistics.robot_shadow,
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/logistic-robot-4.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-4"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 175,
    max_payload_size = 11,
    speed = 0.12,
    max_energy = "3750kJ",
    energy_per_tick = "95J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-4.png"),
    idle_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-4.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-4.png"),
    in_motion_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-4.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_in_motion_with_cargo = bobmods.logistics.robot_shadow,
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-5",
    icon = "__boblogistics__/graphics/entity/robots/logistic-robot-5.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-5"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 175,
    max_payload_size = 11,
    speed = 0.12,
    max_energy = "1500kJ",
    energy_per_tick = "0J",
    energy_per_move = "0J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-5.png"),
    idle_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-5.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-5.png"),
    in_motion_with_cargo = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/logistic-robot-5.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_in_motion_with_cargo = bobmods.logistics.robot_shadow,
  },
}
)


data:extend(
{
  {
    type = "construction-robot",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/construction-robot-2.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-2"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 225,
    max_payload_size = 2,
    speed = 0.09,
    max_energy = "2250kJ",
    energy_per_tick = "60J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-2.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-2.png"),
    working = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-2.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_working = bobmods.logistics.robot_shadow,
    smoke = bobmods.logistics.smoke,
    sparks = bobmods.logistics.sparks
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/construction-robot-3.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-3"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 350,
    max_payload_size = 4,
    speed = 0.12,
    max_energy = "3000kJ",
    energy_per_tick = "75J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-3.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-3.png"),
    working = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-3.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_working = bobmods.logistics.robot_shadow,
    smoke = bobmods.logistics.smoke,
    sparks = bobmods.logistics.sparks
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/construction-robot-4.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-4"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 500,
    max_payload_size = 6,
    speed = 0.15,
    max_energy = "3750kJ",
    energy_per_tick = "80J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-4.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-4.png"),
    working = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-4.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_working = bobmods.logistics.robot_shadow,
    smoke = bobmods.logistics.smoke,
    sparks = bobmods.logistics.sparks
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-5",
    icon = "__boblogistics__/graphics/entity/robots/construction-robot-5.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-5"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 500,
    max_payload_size = 6,
    speed = 0.15,
    max_energy = "1500kJ",
    energy_per_tick = "0J",
    energy_per_move = "0J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-5.png"),
    in_motion = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-5.png"),
    working = bobmods.logistics.robot_picture("__boblogistics__/graphics/entity/robots/construction-robot-5.png"),
    shadow_idle = bobmods.logistics.robot_shadow,
    shadow_in_motion = bobmods.logistics.robot_shadow,
    shadow_working = bobmods.logistics.robot_shadow,
    smoke = bobmods.logistics.smoke,
    sparks = bobmods.logistics.sparks
  },
}
)
