--recipes.lua

if DECT.CONFIG["modified_concrete_recipe"] then
	
	-- Modify base concrete recipe to replace iron ore with iron sticks
	data.raw["recipe"]["concrete"].ingredients = {
				{"stone-brick", 5},
				{"iron-stick", 2},
				{type="fluid", name="water", amount=100}
			}

end

if DECT.ENABLED["landscaping"] then

	-- Add recipes for base assets
	data:extend({
		{
			type = "recipe",
			name = "dect-base-dirt",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"stone", 1}
			},
			result = "dect-base-dirt",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-sand",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"stone", 2}
			},
			result = "dect-base-sand",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-sand-dark",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"stone", 2}
			},
			result = "dect-base-sand-dark",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-grass",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"raw-wood", 2}
			},
			result = "dect-base-grass",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-grass-dry",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"raw-wood", 2}
			},
			result = "dect-base-grass-dry",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-red-desert",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"stone", 2}
			},
			result = "dect-base-red-desert",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-red-desert-dark",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"stone", 2}
			},
			result = "dect-base-red-desert-dark",
			result_count = 10
		},
		{
			type = "recipe",
			name = "dect-base-water",
			energy_required = 10,
			enabled = false,
			category = "crafting-with-fluid",
			ingredients = {
				{"iron-axe", 2},
				{"explosives", 5},
				{type="fluid", name="water", amount=100}
			},
			result = "dect-base-water",
			result_count = 1
		},
		{
			type = "recipe",
			name = "dect-base-water-green",
			energy_required = 10,
			enabled = false,
			category = "crafting-with-fluid",
			ingredients = {
				{"iron-axe", 2},
				{"explosives", 5},
				{type="fluid", name="water", amount=100}
			},
			result = "dect-base-water-green",
			result_count = 1
		}
	})

	-- Adjust base landfill recipe
	local base_landfill = data.raw["recipe"]["landfill"]
	base_landfill.energy_required = 10

end

if DECT.ENABLED["painted-concrete"] then

	-- Add new recipes
	for _, variant in pairs(DECT.CONFIG.PAINT_VARIANTS) do
		data:extend({
			{
				type = "recipe",
				name = "dect-paint-"..variant,
				energy_required = 10,
				enabled = false,
				category = "crafting",
				ingredients = {
					{"concrete", 10},
				},
				result= "dect-paint-"..variant,
				result_count = 10
			}
		})
	end

	-- Disable base hazard concrete recipe
	if DECT.CONFIG["disable_hazard_concrete"] then
		data.raw["recipe"]["hazard-concrete"].enabled = false
	end

end

if DECT.ENABLED["wood-floor"] then

	-- Add new recipes
	data:extend({
		{	-- Wooden floorboards
			type = "recipe",
			name = "dect-wood-floor",
			energy_required = 5,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"wood", 10},
			},
			result= "dect-wood-floor",
			result_count = 10
		}
	})

end

if DECT.ENABLED["walls"] then
	
	-- Add new recipes
	data:extend({
		{
			type = "recipe",
			name = "dect-concrete-wall",
			enabled = false,
			ingredients = {{"concrete", 5}},
			result = "dect-concrete-wall"
		},
		{
			type = "recipe",
			name = "dect-concrete-wall-from-stone-wall",
			localised_name = {"recipe-name.dect-concrete-wall-from-stone-wall"},
			icon = "__Dectorio__/graphics/icons/concrete-wall-from-stone-wall.png",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{"stone-wall", 1},
				{"concrete", 2}
			},
			result = "dect-concrete-wall"
		},
		{
			type = "recipe",
			name = "dect-chain-wall",
			enabled = false,
			ingredients = {
				{"iron-stick", 2},
				{"steel-plate", 2}
			},
			result = "dect-chain-wall"
		},
		{
			type = "recipe",
			name = "dect-wood-wall",
			enabled = false,
			ingredients = {{"raw-wood", 3}},
			result = "dect-wood-wall"
		},
		{
			type = "recipe",
			name = "dect-hazard-gate",
			enabled = false,
			ingredients = {
				{"dect-concrete-wall", 1},
				{"steel-plate", 2},
				{"electronic-circuit", 2}
			},
			result = "dect-hazard-gate"
		}
	})

	-- Change gates to use concrete-wall
	data.raw["recipe"]["gate"].ingredients = data.raw["recipe"]["dect-hazard-gate"].ingredients

end