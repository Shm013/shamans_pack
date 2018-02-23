data:extend(
{
	{
		type = "recipe",
		name = "facility",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"basic-circuit-board", 10},
			{"iron-gear-wheel", 10},
			{"pipe", 10},
			{"stone-brick", 10}
		},
		result = "facility"
	},

	{
		type = "item",
		name = "facility",
		icon = "__Clowns-Science__/graphics/icons/facility.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "g[facility]",
		place_result = "facility",
		stack_size = 10,
	},

	{
		type = "assembling-machine",
		name = "facility",
		fast_replaceable_group = "lab",
		icon = "__Clowns-Science__/graphics/icons/facility.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.8, mining_time = 1.2, result = "facility"},
		max_health = 500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
			type = "fire",
			percent = 70
			}
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation = 
		{
			filename = "__Clowns-Science__/graphics/entity/facility.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 29,
			line_length = 6,
			animation_speed = 1,
			shift = {0,-0.3}
		},
		crafting_categories = {"facility"},
		crafting_speed = 1, --* settings.startup["shaft-mine-crafting-speed"].value,
		module_specification =
		{
			module_slots = 3
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1
		},
		energy_usage = "4MW",
		ingredient_count = 2,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound = 
			{
				{
				  filename = "__base__/sound/assembling-machine-t1-1.ogg",
				  volume = 0.8
				},
				{
				  filename = "__base__/sound/assembling-machine-t1-2.ogg",
				  volume = 0.8
				},
			},
			idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
			apparent_volume = 1.5,
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -1.8} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -1.8} }}
			}
		}
	}
}
)