require("config")

local fluid_locomotive = {
    type = "locomotive",
    name = "Diesel-Locomotive-fluid-locomotive",
	icon = "__Diesel-Locomotive__/graphics/icons/diesel-locomotive.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "Diesel-Locomotive-fluid-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    drawing_box = {{-1, -4}, {1, 3}},
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 2000,
    max_speed = 1.2,
    max_power = "600kW",
    reversing_power_modifier = 0.6,
    braking_force = 10,
    friction_force = 0.50,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = {
		{type = "fire", decrease = 15, percent = 50},
		{type = "physical", decrease = 15, percent = 30},
		{type = "impact", decrease = 50, percent = 60},
		{type = "explosion", decrease = 15, percent = 30},
		{type = "acid", decrease = 10, percent = 20}
    },
    burner = {
		fuel_category = "Diesel-Locomotive-fluid",
		effectivity = 1,
		fuel_inventory_size = 3,
		smoke = {
			{
				name = "train-smoke",
				deviation = {0.3, 0.3},
				frequency = 100,
				position = {0, 0},
				starting_frame = 0,
				starting_frame_deviation = 60,
				height = 2,
				height_deviation = 0.5,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.1,
			}
		}
    },
    front_light = {
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture = {
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = { "light" },
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {-0.6, -16},
			size = 2,
			intensity = 0.6,
			color = {r = 1.0, g = 0.9, b = 0.9}
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture = {
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = { "light" },
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -16},
			size = 2,
			intensity = 0.6,
			color = {r = 1.0, g = 0.9, b = 0.9}
		}
    },
    back_light = {
		{
			minimum_darkness = 0.3,
			color = { r = 1, g = 0.1, b = 0.05, a = 0 },
			shift = {-0.6, 3.5},
			size = 2,
			intensity = 0.6,
			add_perspective = true
		},
		{
			minimum_darkness = 0.3,
			color = { r = 1, g = 0.1, b = 0.05, a = 0 },
			shift = {0.6, 3.5},
			size = 2,
			intensity = 0.6,
			add_perspective = true
		}
	},
    stand_by_light = {
		{
			minimum_darkness = 0.3,
			color = { r = 0.05, g = 0.2, b = 1, a = 0 },
			shift = {-0.6, -3.5},
			size = 2,
			intensity = 0.5,
			add_perspective = true
		},
		{
			minimum_darkness = 0.3,
			color = { r = 0.05, g = 0.2, b = 1, a = 0 },
			shift = {0.6, -3.5},
			size = 2,
			intensity = 0.5,
			add_perspective = true
		}
	},
    color = {r = 1, g = 1, b = 0, a = 0.5},
    pictures = {
		layers = {
			{
				slice = 4,
				priority = "very-low",
				width = 346,
				height = 248,
				direction_count = 256,
				allow_low_quality_rotation = true,
				filenames = {
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-01.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-02.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-03.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-04.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-05.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-06.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-07.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-08.png"
				},
				line_length = 4,
				lines_per_file = 8,
				shift = {1, -0.45},
			},
			{
				priority = "very-low",
				flags = { "mask" },
				slice = 4,
				width = 346,
				height = 248,
				direction_count = 256,
				allow_low_quality_rotation = true,
				filenames = {
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-01.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-02.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-03.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-04.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-05.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-06.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-07.png",
					"__Diesel-Locomotive__/graphics/diesel-locomotive/diesel-locomotive-mask-08.png"
				},
				line_length = 4,
				lines_per_file = 8,
				shift = {1, -0.45},
				apply_runtime_tint = true,
			},
			{
				priority = "very-low",
				flags = { "shadow" },
				width = 253,
				height = 212,
				direction_count = 256,
				draw_as_shadow = true,
				allow_low_quality_rotation = true,
				filenames = {
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
					"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
				},
				line_length = 4,
				lines_per_file = 8,
				shift = {1, 0.3}
			}
		}
    },
    wheels = {
		priority = "very-low",
		width = 115,
		height = 115,
		direction_count = 256,
		filenames = {
			"__base__/graphics/entity/diesel-locomotive/train-wheels-01.png",
			"__base__/graphics/entity/diesel-locomotive/train-wheels-02.png"
		},
		line_length = 8,
		lines_per_file = 16,
		hr_version = {
			priority = "very-low",
			width = 229,
			height = 227,
			direction_count = 256,
			filenames = {
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-1.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-2.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-3.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-4.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-5.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-6.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-7.png",
				"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-8.png",
			},
			line_length = 4,
			lines_per_file = 8,
			--shift = {0.015625, -0.453125}, original shifting from spritesheeter (likely needs doubling or halving)
			scale = 0.5
		}
	},
    rail_category = "regular",
    stop_trigger = {
		-- left side
		{
			type = "create-trivial-smoke",
			repeat_count = 125,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			-- smoke goes to the left
			speed = {-0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
		},
		-- right side
		{
			type = "create-trivial-smoke",
			repeat_count = 125,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			-- smoke goes to the right
			speed = {0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
		},
		{
			type = "play-sound",
			sound = {
				{
					filename = "__base__/sound/train-breaks.ogg",
					volume = 0.6
				},
			}
		},
    },
    drive_over_tie_trigger = {
		type = "play-sound",
		sound = {
			{
				filename = "__base__/sound/train-tie-1.ogg",
				volume = 0.6
			},
			{
				filename = "__base__/sound/train-tie-2.ogg",
				volume = 0.6
			},
			{
				filename = "__base__/sound/train-tie-3.ogg",
				volume = 0.6
			},
			{
				filename = "__base__/sound/train-tie-4.ogg",
				volume = 0.6
			},
		}
	},
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
		sound = {
			filename = "__base__/sound/train-engine.ogg",
			volume = 0.4
		},
		match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
}
data:extend{fluid_locomotive}

local allowed_fluids = {}
for i,a in pairs(USABLE_FLUID) do
	table.insert(allowed_fluids, i)
end
local tanks = {}
for i=0,242 do
	local pipe_connections = {}
	
	if i%243 >= 162 then
		table.insert(pipe_connections, { position = {0, -1.5}, type="output" })
	elseif i%243 >= 81 then
		table.insert(pipe_connections, { position = {0, -1.5}, type="output" })
		table.insert(pipe_connections, { position = {0, 1.5}, type="input" })
	else
		table.insert(pipe_connections, { position = {0, 1.5}, type="input" })
	end
	
	if i%81 >= 54 then
		table.insert(pipe_connections, { position = {-1.5, -0.5}, type="output" })
	elseif i%81 >= 27 then
		table.insert(pipe_connections, { position = {-1.5, -0.5}, type="input" })
	end
	
	if i%27 >= 18 then
		table.insert(pipe_connections, { position = {-1.5, 0.5}, type="output" })
	elseif i%27 >= 9 then
		table.insert(pipe_connections, { position = {-1.5, 0.5}, type="input" })
	end
	
	if i%9 >= 6 then
		table.insert(pipe_connections, { position = {1.5, -0.5}, type="output" })
	elseif i%9 >= 3 then
		table.insert(pipe_connections, { position = {1.5, -0.5}, type="input" })
	end
	
	if i%3 >= 2 then
		table.insert(pipe_connections, { position = {1.5, 0.5}, type="output" })
	elseif i%3 >= 1 then
		table.insert(pipe_connections, { position = {1.5, 0.5}, type="input" })
	end
	
	local tank = {
		type = "pump",
		name = "Diesel-Locomotive-proxy-tank-"..i,
		icon = "__core__/graphics/empty.png",
		icon_size = 1,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
		collision_mask = {},
		selectable_in_game = false,
		minable = nil,
		max_health = nil,
		fast_replaceable_group = "pipe",
		corpse = "small-remnants",
		collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances = {},
		fluid_box = {
			base_area = 1,
			height = TANK_CAPACITY/100,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = pipe_connections,
			filters = allowed_fluids
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0,
			render_no_power_icon = false,
			render_no_network_icon = false
		},
		energy_usage = "-2.96439387504747926505941275721e-32W",
		pumping_speed = 100*TANK_CAPACITY,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0 },

		animations = {
			north = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				line_length = 1,
				frame_count =1,
				animation_speed = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					line_length = 1,
					frame_count =1,
					animation_speed = 1,
					shift = util.by_pixel(0, 0),
				}
			},
			east = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				line_length = 1,
				frame_count =1,
				animation_speed = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					line_length = 1,
					frame_count =1,
					animation_speed = 1,
					shift = util.by_pixel(0, 0),
				}
			},
			south = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				line_length = 1,
				frame_count =1,
				animation_speed = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					line_length = 1,
					frame_count =1,
					animation_speed = 1,
					shift = util.by_pixel(0, 0),
				}
			},
			west = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				line_length = 1,
				frame_count =1,
				animation_speed = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					line_length = 1,
					frame_count =1,
					animation_speed = 1,
					shift = util.by_pixel(0, 0),
				}
			}
		},

		fluid_wagon_connector_frame_count = 1,

		fluid_wagon_connector_graphics = {
			load_animations = {
				west = {{}, {}, {}, {}, {}, {}},
				north = {{}, {}, {}, {}, {}, {}},
				east = {{}, {}, {}, {}, {}, {}},
				south = {{}, {}, {}, {}, {}, {}}
			},
			unload_animations = {
				west = {{}, {}, {}, {}, {}, {}},
				north = {{}, {}, {}, {}, {}, {}},
				east = {{}, {}, {}, {}, {}, {}},
				south = {{}, {}, {}, {}, {}, {}}
			}
		},

		fluid_animation = {
			north = {
				filename = "__core__/graphics/empty.png",
				apply_runtime_tint = false,
				width = 1,
				height = 1,
				line_length = 1,
				frame_count = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					apply_runtime_tint = false,
					width = 1,
					height = 1,
					scale = 1,
					line_length = 1,
					frame_count = 1,
					shift = util.by_pixel(0, 0)
				}
			},
			east = {
				filename = "__core__/graphics/empty.png",
				apply_runtime_tint = false,
				width = 1,
				height = 1,
				line_length = 1,
				frame_count = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					apply_runtime_tint = false,
					width = 1,
					height = 1,
					scale = 1,
					line_length = 1,
					frame_count = 1,
					shift = util.by_pixel(0, 0)
				}
			},
			south = {
				filename = "__core__/graphics/empty.png",
				apply_runtime_tint = false,
				width = 1,
				height = 1,
				line_length = 1,
				frame_count = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					apply_runtime_tint = false,
					width = 1,
					height = 1,
					scale = 1,
					line_length = 1,
					frame_count = 1,
					shift = util.by_pixel(0, 0)
				}
			},
			west = {
				filename = "__core__/graphics/empty.png",
				apply_runtime_tint = false,
				width = 1,
				height = 1,
				line_length = 1,
				frame_count = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__core__/graphics/empty.png",
					apply_runtime_tint = false,
					width = 1,
					height = 1,
					scale = 1,
					line_length = 1,
					frame_count = 1,
					shift = util.by_pixel(0, 0)
				}
			}
		},

		glass_pictures = {
			north = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					scale = 1,
				},
			},
			east = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					scale = 1,
				},
			},
			south = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					scale = 1,
				},
			},
			west = {
				filename = "__core__/graphics/empty.png",
				width = 1,
				height = 1,
				hr_version = {
					filename = "__core__/graphics/empty.png",
					width = 1,
					height = 1,
					scale = 1,
				},
			}
		},

		circuit_wire_connection_points = {},
		circuit_connector_sprites = {},
		circuit_wire_max_distance = 0,
		order = "Diesel-proxy-tank-"..i,
		localised_name = "Hidden"
	}
	table.insert(tanks, tank)
end
data:extend(tanks)

data:extend{
	{
		type = "item-with-entity-data",
		name = "Diesel-Locomotive-fluid-locomotive",
		icon = "__Diesel-Locomotive__/graphics/icons/diesel-locomotive.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "a[train-system]-f[diesel-locomotive]-a",
		place_result = "Diesel-Locomotive-fluid-locomotive",
		stack_size = 5
	}
}