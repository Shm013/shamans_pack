color_picker_data_functions = color_picker_data_functions or {}

-- Make locomotive, train stop, cargo wagon and fluid wagon pasteble to each other.
if settings.startup[color_picker_defines.names.settings.make_color_pastable_between_wagon_and_others].value then
	local locomotive_names = {}
	local train_stop_names = {}
	local cargo_wagon_names = {}
	local fluid_wagon_names = {}
	-- Get all names of the locomotives, train stops, cargo wagons and fluid wagons.
	for _, data in pairs(data.raw["locomotive"]) do
		table.insert(locomotive_names, data.name)
	end
	for _, data in pairs(data.raw["train-stop"]) do
		table.insert(train_stop_names, data.name)
	end
	for _, data in pairs(data.raw["cargo-wagon"]) do
		table.insert(cargo_wagon_names, data.name)
	end
	for _, data in pairs(data.raw["fluid-wagon"]) do
		table.insert(fluid_wagon_names, data.name)
	end
	
	-- Add cargo wagons and fluid wagons to locomotives.
	for _, data in pairs(data.raw["locomotive"]) do
		local additional_pastable_entities = data.additional_pastable_entities or {}
		for _, name in ipairs(cargo_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(fluid_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		data.additional_pastable_entities = additional_pastable_entities
	end
	-- Add cargo wagons and fluid wagons to train-stops.
	for _, data in pairs(data.raw["train-stop"]) do
		local additional_pastable_entities = data.additional_pastable_entities or {}
		for _, name in ipairs(cargo_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(fluid_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		data.additional_pastable_entities = additional_pastable_entities
	end
	-- Add locomotives, train-stops and fluid wagons to cargo wagons.
	for _, data in pairs(data.raw["cargo-wagon"]) do
		local additional_pastable_entities = data.additional_pastable_entities or {}
		for _, name in ipairs(locomotive_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(train_stop_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(fluid_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		data.additional_pastable_entities = additional_pastable_entities
	end
	-- Add locomotives, train-stops and cargo wagons to fluid wagons.
	for _, data in pairs(data.raw["fluid-wagon"]) do
		local additional_pastable_entities = data.additional_pastable_entities or {}
		for _, name in ipairs(locomotive_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(train_stop_names) do
			table.insert(additional_pastable_entities, name)
		end
		for _, name in ipairs(cargo_wagon_names) do
			table.insert(additional_pastable_entities, name)
		end
		data.additional_pastable_entities = additional_pastable_entities
	end
end

-- Adds the pictures of color mask to the given data of fluid wagon.
-- @param reset_color	Whether the color of the fluid wagon should be reset to (0, 0, 0, 0) so that its default color will be the same as before after the color mask is added.
function color_picker_data_functions.add_color_mask_to_fluid_wagon(fluid_wagon_data, reset_color)
	if reset_color then
		fluid_wagon_data.color = {r = 0, g = 0, b = 0, a = 0}
	end
	table.insert(fluid_wagon_data.pictures.layers, 
	{
		flags = {"mask"},
        priority = "very-low",
		width = 208,
		height = 210,
		back_equals_front = true,
		apply_runtime_tint = true,
		direction_count = 128,
		filenames =
		{
			color_picker_defines.mod_directory .. "/graphics/fluid-wagon/fluid-wagon-1-color-mask.png",
            color_picker_defines.mod_directory .. "/graphics/fluid-wagon/fluid-wagon-2-color-mask.png",
            color_picker_defines.mod_directory .. "/graphics/fluid-wagon/fluid-wagon-3-color-mask.png",
            color_picker_defines.mod_directory .. "/graphics/fluid-wagon/fluid-wagon-4-color-mask.png"
        },
        line_length = 4,
        lines_per_file = 8,
        shift = {0 + 0.013, -1 + 0.077},
        hr_version =
        {
        	flags = {"mask"},
            priority = "very-low",
        	width = 416,
        	height = 419,
        	back_equals_front = true,
        	apply_runtime_tint = true,
        	direction_count = 128,
        	filenames =
        	{
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-1-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-2-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-3-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-4-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-5-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-6-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-7-color-mask.png",
        		color_picker_defines.mod_directory .. "/graphics/fluid-wagon/hr-fluid-wagon-8-color-mask.png"
            },
            line_length = 4,
            lines_per_file = 4,
            shift = {0 + 0.013, -1 + 0.077},
            scale = 0.5
        }
	})
end

-- Add color mask to fluid wagon.
if settings.startup[color_picker_defines.names.settings.add_color_mask_to_fluid_wagon].value then
	local fluid_wagon = data.raw["fluid-wagon"]["fluid-wagon"]
	if fluid_wagon then
		color_picker_data_functions.add_color_mask_to_fluid_wagon(fluid_wagon, true)
	end
end