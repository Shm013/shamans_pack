bobmods.lib.recipe.replace_ingredient("high-tech-science-pack", "battery", "electric-engine-unit")
bobmods.lib.recipe.replace_ingredient("production-science-pack", "electric-engine-unit", "electric-mining-drill")
bobmods.lib.recipe.replace_ingredient("science-pack-3", "electric-mining-drill", "battery")
data.raw.recipe["science-pack-3"].result_count = 2

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient("high-tech-science-pack", {"lithium-ion-battery", 1})
end

if data.raw.item["express-inserter"] then
  bobmods.lib.recipe.replace_ingredient("logistic-science-pack", "filter-inserter", "express-inserter")
end

if data.raw.item["bronze-alloy"] then
  bobmods.lib.recipe.add_ingredient("science-pack-3", {"bronze-alloy", 1})
end

if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.remove_ingredient("high-tech-science-pack", "copper-cable")
  bobmods.lib.recipe.add_ingredient("high-tech-science-pack", {"silicon-nitride", 2})
end

