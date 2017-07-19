local order = 65
local function createSC(name)
    data:extend({
        { 
            type = "item",
            name = name.."-structure-components",
            icon = "__shmstructcomp__/graphics/" .. name .. "SC.png",
            flags = {"goes-to-main-inventory"},
            subgroup = "structurecomponents",
            order = "a-" .. string.char(order),
            stack_size = 50,
--            icon_size = 64
        }
    })
    order = order + 1
end

data:extend({{
    type = "item-subgroup",
    name = "structurecomponents",
    group = "bob-intermediate-products",
    order = "z-z",
}})

local function newRecipe(item, time)
    local rec = { 
        type = "recipe",
        name = item.."-structure-components",
        category = "crafting-machine",
        enabled = false,
        energy_required = time,
        ingredients = {},
        result = item.."-structure-components",
    }
    data:extend({rec})
    return rec
end

createSC("basic")
createSC("intermediate")
createSC("advanced")
createSC("anotherworld")

newRecipe("basic", 15).ingredients = {
    {"lead-plate", 33},
    {"glass", 15},
    {"stone-brick", 22}
}
newRecipe("intermediate", 30).ingredients = {
    {"basic-structure-components", 2},
    {"brass-gear-wheel", 8},
    {"cobalt-plate", 10},
    {"invar-alloy", 25}
}
newRecipe("advanced", 60).ingredients = {
    {"intermediate-structure-components", 2},
    {"tungsten-plate", 27},
    {"aluminium-plate", 32},
    {"titanium-plate", 52},
    {"cobalt-steel-alloy", 20},
    {"plastic-bar", 40}
}
newRecipe("anotherworld", 120).ingredients = {
    {"advanced-structure-components", 10},
    {"plastic-bar", 800},
    {"tungsten-carbide", 800},
    {"titanium-bearing", 500},
    {"ceramic-bearing", 600},
    {"electrum-alloy", 300},
    {"nitinol-gear-wheel", 100},
    {"alien-science-pack", 300}
}
