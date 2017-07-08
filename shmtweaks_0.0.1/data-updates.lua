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

-- Recepies tweaks:
bobmods.lib.recipe.add_new_ingredient("inserter", {"burner-inserter", 1} )

-- Disable Flow control pipes & bob valve:
data.raw.recipe["pipe-elbow"].enabled = false
data.raw.recipe["pipe-junction"].enabled = false
data.raw.recipe["pipe-straight"].enabled = false
data.raw.recipe["bob-valve"].enabled = false

-- Disable Bio solar farm:
bobmods.lib.tech.remove_recipe_unlock("bob-solar-energy-4", "bi_bio_Solar_Farm")

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
