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

require("config")
require("prototypes.recipes-updates")
require("prototypes.technology-updates")

-- Recipes tweaks:
bobmods.lib.recipe.add_new_ingredient("inserter", {"burner-inserter", 1} )

-- Disable Flow control pipes & bob valve:
--data.raw.recipe["pipe-elbow"].enabled = false
--data.raw.recipe["pipe-junction"].enabled = false
--data.raw.recipe["pipe-straight"].enabled = false
--data.raw.recipe["bob-valve"].enabled = false

-- Disable Bio solar farm:
bobmods.lib.tech.remove_recipe_unlock("bob-solar-energy-4", "bi_bio_Solar_Farm")
bobmods.lib.tech.remove_recipe_unlock("electric-pole-4", "bi_bio_Solar_Farm")

-- Disable Musk flor:
bobmods.lib.tech.remove_recipe_unlock("bob-solar-energy-2", "bi_solar_mat")

-- Stack size:
--data.raw["item"]["fluorite"].stack_size    = 200
data.raw["item"]["uranium-ore"].stack_size = 200
data.raw["item"]["sulfur"].stack_size      = 200
data.raw["item"]["plastic-bar"].stack_size = 200

bobmods.lib.tech.remove_recipe_unlock("advanced-material-processing", "bi_steel_furnace_disassemble")
bobmods.lib.tech.remove_recipe_unlock("automation-2", "bi_burner_mining_drill_disassemble")
bobmods.lib.tech.remove_recipe_unlock("automation-2", "bi_stone_furnace_disassemble")
bobmods.lib.tech.remove_recipe_unlock("automation-2", "bi_burner_inserter_disassemble")
bobmods.lib.tech.remove_recipe_unlock("automation-2", "bi_long_handed_inserter_disassemble")

-- Energy capacity:
if data.raw["item"]["fuel-cell"] then data.raw["item"]["fuel-cell"].fuel_value = fuel_cell_energy_value end
if data.raw["item"]["seedling"] then data.raw["item"]["seedling"].fuel_value = seedling_energy_value end
if data.raw["item"]["bi-woodpulp"] then data.raw["item"]["bi-woodpulp"].fuel_value = woodpulp_energy_value end
if data.raw["item"]["bi-charcoal"] then data.raw["item"]["bi-charcoal"].fuel_value = charcoal_energy_value end
if data.raw["item"]["pellet-coke"] then data.raw["item"]["pellet-coke"].fuel_value = pellet_coke_energy_value end
if data.raw["item"]["cellulose-fiber"] then data.raw["item"]["cellulose-fiber"].fuel_value = cellulose_fiber_energy_value end
if data.raw["item"]["wood-pellets"] then data.raw["item"]["wood-pellets"].fuel_value = wood_pellets_energy_value end
if data.raw["item"]["wood-bricks"] then data.raw["item"]["wood-bricks"].fuel_value = wood_bricks_energy_value end
if data.raw["item"]["solid-fuel"] then data.raw["item"]["solid-fuel"].fuel_value = solid_fuel_energy_value end

-- Trains:
data.raw["locomotive"]["locomotive"].max_health = 1500
data.raw["locomotive"]["bob-locomotive-2"].max_health = 2500
data.raw["locomotive"]["bob-locomotive-3"].max_health = 5000

-- disable armored trains:
if data.raw["technology"]["bob-armoured-railway"] then
   data.raw["technology"]["bob-armoured-railway"].enabled = false
end


if data.raw["technology"]["bob-armoured-railway-2"] then
	data.raw["technology"]["bob-armoured-railway-2"].enabled = false
end

-- Remove pellet-coke
data.raw["technology"]["angels-coal-processing-2"].effects = {
	  {
        type = "unlock-recipe",
        recipe = "carbon-separation-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-coke-sulfur"
      },
}

-- Reduce asphalt cost
data.raw["technology"]["Arci-asphalt"].unit.count = 200

-- Bob power armor
data.raw["technology"]["bob-power-armor-3"].icon = "__shmtweaks__/graphics/technology/power-armor-mk3.png"
data.raw["technology"]["bob-power-armor-4"].icon = "__shmtweaks__/graphics/technology/power-armor-mk4.png"
data.raw["technology"]["bob-power-armor-5"].icon = "__shmtweaks__/graphics/technology/power-armor-mk5.png"

-- Inserter capacity bonus from 
bobmods.lib.tech.add_new_science_pack("inserter-capacity-bonus-3", "science-pack-3", 1)
bobmods.lib.tech.add_new_science_pack("inserter-capacity-bonus-4", "high-tech-science-pack", 1)
