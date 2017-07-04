-- Replaces the color mask image file names in the given particular image layer by replacing the mod directory.
local function replace_filenames_in_layer(layer)
	if layer.filenames then
		for i, filename in pairs(layer.filenames) do
			layer.filenames[i] = string.gsub(filename, "__base__", "__brighter-wagon-color-mask__")
		end
	end
	if layer.filename then
		layer.filename = string.gsub(layer.filename, "__base__", "__brighter-wagon-color-mask__")
	end
end

-- Replaces the color mask image file names in the given image layers by replacing the mod directory.
local function replace_mask_image_filenames(layers)
	for _, layer in pairs(layers) do
		if layer.apply_runtime_tint == true then
			replace_filenames_in_layer(layer)
			if layer.hr_version then
				replace_filenames_in_layer(layer.hr_version)
			end
		end
	end
end

-- Replace the color mask image file names of the cargo-wagon prototype.
local cargo_wagon = data.raw["cargo-wagon"]["cargo-wagon"]
replace_mask_image_filenames(cargo_wagon.pictures.layers)
replace_mask_image_filenames(cargo_wagon.horizontal_doors.layers)
replace_mask_image_filenames(cargo_wagon.vertical_doors.layers)