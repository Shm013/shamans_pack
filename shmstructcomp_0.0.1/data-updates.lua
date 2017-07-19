--    data-updates.lua
--    Copyright (C) 2017 Nikolay Shamanovich
--
--    This program is free software you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.


if not shmmods then shmmods = {} end
if not shmmods.tweaks then shmmods.tweaks = {} end


bobmods.lib.recipe.remove_ingredient("brass-alloy", "copper-plate")
bobmods.lib.recipe.remove_ingredient("brass-alloy", "zinc-plate")
table.insert( data.raw["recipe"]["brass-alloy"].ingredients, {"bronze-alloy", 2})
table.insert( data.raw["recipe"]["brass-alloy"].ingredients, {"zinc-plate", 8})

bobmods.lib.recipe.remove_ingredient("invar-alloy", "iron-plate")
table.insert( data.raw["recipe"]["invar-alloy"].ingredients, {"lead-plate", 3})
bobmods.lib.recipe.remove_ingredient("cobalt-steel-alloy", "iron-plate")
bobmods.lib.recipe.remove_ingredient("cobalt-steel-alloy", "cobalt-plate")
table.insert( data.raw["recipe"]["cobalt-steel-alloy"].ingredients, {"iron-plate", 6})
table.insert( data.raw["recipe"]["cobalt-steel-alloy"].ingredients, {"cobalt-plate", 4})

bobmods.lib.tech.add_recipe_unlock("automation-2", "basic-structure-components")
bobmods.lib.tech.add_recipe_unlock("automation-3", "intermediate-structure-components")
bobmods.lib.tech.add_recipe_unlock("automation-4", "advanced-structure-components")
bobmods.lib.tech.add_recipe_unlock("automation-6", "anotherworld-structure-components")

--table.insert( data.raw["recipe"]["anotherworld-structure-components"].ingredients, 
--                                                {"silver-zinc-battery", 600})
--table.insert( data.raw["recipe"]["rocket-control-unit"].ingredients, 
--                                                {"silver-zinc-battery", 120})


local function replaceMachine()
    bobmods.lib.recipe.add_new_ingredient("assembling-machine-2", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("assembling-machine-3", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("assembling-machine-4", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("assembling-machine-5", {"advanced-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("assembling-machine-6", {"anotherworld-structure-components", 3})
    bobmods.lib.recipe.add_new_ingredient("rocket-silo", {"assembling-machine-6", 100})

    bobmods.lib.recipe.add_new_ingredient("electronics-machine-1", {"basic-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("electronics-machine-2", {"intermediate-structure-components", 3})
    bobmods.lib.recipe.add_new_ingredient("electronics-machine-3", {"advanced-structure-components", 3})

    bobmods.lib.recipe.add_new_ingredient("oil-refinery", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("oil-refinery-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("oil-refinery-3", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("oil-refinery-4", {"advanced-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("chemical-plant",   {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("chemical-plant-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("chemical-plant-3", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("chemical-plant-4", {"advanced-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("electric-furnace", {"steel-furnace", 2})
    bobmods.lib.recipe.add_new_ingredient("electric-furnace", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("electric-furnace-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("electric-furnace-3", {"advanced-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("electrolyser", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("electrolyser-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("electrolyser-3", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("electrolyser-4", {"advanced-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("electric-chemical-mixing-furnace", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("electric-chemical-mixing-furnace-2", {"advanced-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("electric-mixing-furnace", {"mixing-furnace", 2})
    bobmods.lib.recipe.add_new_ingredient("electric-mixing-furnace", {"basic-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("chemical-furnace", {"chemical-boiler", 2})
    bobmods.lib.recipe.add_new_ingredient("chemical-furnace", {"basic-structure-components", 2})
end

local function replaceMining()
    bobmods.lib.recipe.add_new_ingredient("bob-mining-drill-1", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("bob-mining-drill-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-mining-drill-3", {"advanced-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-mining-drill-4", {"anotherworld-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("bob-area-mining-drill-1", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("bob-area-mining-drill-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-area-mining-drill-3", {"advanced-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-area-mining-drill-4", {"anotherworld-structure-components", 2})

    bobmods.lib.recipe.add_new_ingredient("bob-pumpjack-1", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("bob-pumpjack-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-pumpjack-3", {"advanced-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("bob-pumpjack-4", {"anotherworld-structure-components", 2})
end

local function replacePower()
    bobmods.lib.recipe.add_new_ingredient("steam-engine-2", {"basic-structure-components", 1})
    bobmods.lib.recipe.add_new_ingredient("steam-engine-3", {"intermediate-structure-components", 1})

    if data.raw["item"]["petroleum-generator"] then
        bobmods.lib.recipe.add_new_ingredient("petroleum-generator", {"steam-engine-3", 1})
        bobmods.lib.recipe.add_new_ingredient("petroleum-generator", {"advanced-structure-components", 1})
    end

    if data.raw["item"]["steam-turbine"] then
        bobmods.lib.recipe.add_new_ingredient("steam-turbine", {"advanced-structure-components", 3})
        bobmods.lib.recipe.add_new_ingredient("nuclear-reactor", {"boiler-4", 1})
        bobmods.lib.recipe.add_new_ingredient("nuclear-reactor", {"advanced-structure-components", 1})
    end

    bobmods.lib.recipe.add_new_ingredient("solar-panel-small", {"basic-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("solar-panel", {"basic-structure-components", 3})
    bobmods.lib.recipe.add_new_ingredient("solar-panel-large", {"basic-structure-components", 4})

    bobmods.lib.recipe.add_new_ingredient("solar-panel-small-2", {"intermediate-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("solar-panel-2", {"intermediate-structure-components", 3})
    bobmods.lib.recipe.add_new_ingredient("solar-panel-large-2", {"intermediate-structure-components", 4})

    bobmods.lib.recipe.add_new_ingredient("solar-panel-small-3", {"advanced-structure-components", 2})
    bobmods.lib.recipe.add_new_ingredient("solar-panel-3", {"advanced-structure-components", 3})
    bobmods.lib.recipe.add_new_ingredient("solar-panel-large-3", {"advanced-structure-components", 4})
    
    if data.raw["recipe"]["bi_bio_Solar_Farm"] then
        data.raw["recipe"]["bi_bio_Solar_Farm"].ingredients = 
        { 
            {"solar-panel-large-3", 20},
            {"medium-electric-pole-4", 100},
            {"anotherworld-structure-components", 2}
        }
    end
end

local function replaceAngelRefi()
    if data.raw["item"]["ore-crusher-2"]then
        bobmods.lib.recipe.add_new_ingredient("thermal-extractor", {"basic-structure-components", 1})
        
        bobmods.lib.recipe.add_new_ingredient("ore-crusher-2", {"intermediate-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("ore-crusher-3", {"advanced-structure-components", 1})
        
        bobmods.lib.recipe.add_new_ingredient("ore-sorting-facility-2", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("ore-sorting-facility-3", {"intermediate-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("ore-sorting-facility-4", {"advanced-structure-components", 1})
        
        bobmods.lib.recipe.add_new_ingredient("ore-floatation-cell", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("ore-floatation-cell-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("ore-floatation-cell-3", {"advanced-structure-components", 2})
        
        bobmods.lib.recipe.add_new_ingredient("ore-leaching-plant", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("ore-leaching-plant-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("ore-leaching-plant-3", {"advanced-structure-components", 2})
        
        bobmods.lib.recipe.add_new_ingredient("ore-refinery", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("ore-refinery-2", {"advanced-structure-components", 4})
        
        bobmods.lib.recipe.add_new_ingredient("filtration-unit", {"basic-structure-components", 4})
        bobmods.lib.recipe.add_new_ingredient("filtration-unit-2", {"intermediate-structure-components", 4})
        
        bobmods.lib.recipe.add_new_ingredient("crystallizer", {"basic-structure-components", 4})
        bobmods.lib.recipe.add_new_ingredient("crystallizer-2", {"intermediate-structure-components", 4})
        
        bobmods.lib.recipe.add_new_ingredient("hydro-plant", {"basic-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("hydro-plant-2", {"intermediate-structure-components", 2})
    end
end

local function replaceAngelPetro()
    if data.raw["item"]["angels-electrolyser"]then
        bobmods.lib.recipe.add_new_ingredient("angels-electrolyser", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("angels-electrolyser-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("angels-electrolyser-3", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("angels-electrolyser-4", {"advanced-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("advanced-chemical-plant", {"intermediate-structure-components", 3})
        bobmods.lib.recipe.add_new_ingredient("advanced-chemical-plant-2", {"advanced-structure-components", 3})
        bobmods.lib.recipe.add_new_ingredient("gas-refinery", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("gas-refinery-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("gas-refinery-3", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("gas-refinery-4", {"advanced-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("separator", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("separator-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("separator-3", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("separator-4", {"advanced-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("steam-cracker", {"basic-structure-components", 1})
        bobmods.lib.recipe.add_new_ingredient("steam-cracker-2", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("steam-cracker-3", {"intermediate-structure-components", 2})
        bobmods.lib.recipe.add_new_ingredient("steam-cracker-4", {"advanced-structure-components", 2})
    end
end

local function replaceAngelMe()
    if data.raw["item"]["blast-furnace"]then
        bobmods.lib.recipe.add_new_ingredient("blast-furnace", {"basic-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("blast-furnace-2", {"intermediate-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("blast-furnace-3", {"advanced-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("blast-furnace-4", {"advanced-structure-components", 10})
        bobmods.lib.recipe.add_new_ingredient("induction-furnace", {"basic-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("induction-furnace-2", {"intermediate-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("induction-furnace-3", {"advanced-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("induction-furnace-4", {"advanced-structure-components", 10})
        bobmods.lib.recipe.add_new_ingredient("casting-machine", {"basic-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("casting-machine-2", {"intermediate-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("casting-machine-3", {"advanced-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("casting-machine-4", {"advanced-structure-components", 10})
        bobmods.lib.recipe.add_new_ingredient("ore-processing-machine", {"basic-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("ore-processing-machine-2", {"intermediate-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("ore-processing-machine-3", {"advanced-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("ore-processing-machine-4", {"advanced-structure-components", 10})
        bobmods.lib.recipe.add_new_ingredient("pellet-press", {"basic-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("pellet-press-2", {"intermediate-structure-components", 5})
        bobmods.lib.recipe.add_new_ingredient("pellet-press-3", {"advanced-structure-components", 5})
    end
end

local function replaceRobot()
      bobmods.lib.recipe.add_new_ingredient("roboport", {"basic-structure-components", 1})
      bobmods.lib.recipe.add_new_ingredient("bob-roboport-2", {"intermediate-structure-components", 1})
      bobmods.lib.recipe.add_new_ingredient("bob-roboport-3", {"advanced-structure-components", 1})
      bobmods.lib.recipe.add_new_ingredient("bob-roboport-4", {"anotherworld-structure-components", 1})
end
replaceMachine()
replaceMining()
replacePower()
replaceAngelRefi()
replaceAngelPetro()
replaceAngelMe()
replaceRobot()
