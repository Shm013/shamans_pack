--PARAMETERS
local energy = 3
local amount_param = 1

--CALCULATE PROBABILITY OF EACH OUTPUT

--This bit is unnecessary because output probability does not need to equal 1 in total, more than one result can be created at once. Holding on to it just in case some use for it is implemented in the future yo

--[[local ingredients = 5

if data.raw.recipe["omni-pack"] then
	ingredients = ingredients + 1
end
if data.raw.recipe["logistic-science-pack"] then
	ingredients = ingredients + 1
end

local probability = 1/ingredients]]

--PROBABLILITY PARAMETER

local probability = 0.25

--BUILD RESULTS

local results = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results, {type="item", name="omni-pack", amount=amount_param, probability=probability})
end
table.insert(results, {type="item", name="science-pack-1", amount=amount_param, probability=probability})
table.insert(results, {type="item", name="science-pack-2", amount=amount_param, probability=probability})
table.insert(results, {type="item", name="science-pack-3", amount=amount_param, probability=probability})
table.insert(results, {type="item", name="military-science-pack", amount=amount_param, probability=probability})
table.insert(results, {type="item", name="production-science-pack", amount=amount_param, probability=probability})
if data.raw.recipe["logistic-science-pack"] then
	table.insert(results, {type="item", name="logistic-science-pack", amount=amount_param, probability=probability})
end
table.insert(results, {type="item", name="high-tech-science-pack", amount=amount_param, probability=probability})

--RECIPE

data:extend(
{
	{
		type = "recipe",
		name = "particle-accelerator-1",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy,
		subgroup = "science-pack",
		order = "a",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png"
			}
		},
		icon_size = 32,
		ingredients = {},
		results = results
	}
}
)