data:extend(
{
	{
		type = "recipe",
		name = "particle-accelerator",
		enabled = true,
		energy_required = 2,
		ingredients =
		{
			{"processing-unit", 100},
			{"iron-gear-wheel", 100},
			{"pipe", 100},
			{"stone-brick", 100}
		},
		result = "particle-accelerator"
	},

	{
		type = "item",
		name = "particle-accelerator",
		icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "g",
		place_result = "particle-accelerator",
		stack_size = 10,
	},

	{
		type = "assembling-machine",
		name = "particle-accelerator",
		fast_replaceable_group = "lab",
		icon = "__Clowns-Science__/graphics/icons/facility.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.8, mining_time = 1.2, result = "particle-accelerator"},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
			type = "fire",
			percent = 70
			}
		},
		collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
		selection_box = {{-3, -3}, {3, 3}},
		animation = 
		{
			filename = "__Clowns-Science__/graphics/entity/particle-accelerator.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 30,
			line_length = 6,
			animation_speed = 1,
			shift = {0,0}
		},
		crafting_categories = {"particle-accelerator"},
		crafting_speed = 1,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.01
		},
		energy_usage = "250MW",
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
		}
	}
}
)