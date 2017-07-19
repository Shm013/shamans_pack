--    recipe.lua
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


-- slag processing
local order = 65
local function oreToSlag(ore, amount)
	if amount == nil then amount = 1 end
	data:extend({
		{ type = "recipe",
		name = ore.."-to-slag",
		icon = "__shmslag__/graphics/slag-" .. ore .. ".png",
		category = "mixing-furnace",
		enabled = false,
		subgroup = "slag-processing",
		order = "z-".. string.char(order),
		ingredients ={{ore, amount}},
		result = "slag",
		}
	})
	order = order + 1
end

local function addRecipes()
    oreToSlag("stone", 5)
    oreToSlag("coal", 5)
    oreToSlag("iron-ore")
    oreToSlag("copper-ore")

    oreToSlag("lead-ore")
    oreToSlag("tin-ore")
    oreToSlag("zinc-ore")
    oreToSlag("quartz")
    oreToSlag("nickel-ore")

    oreToSlag("silver-ore")
    oreToSlag("gold-ore")
    oreToSlag("cobalt-ore")
    oreToSlag("bauxite-ore")

    oreToSlag("rutile-ore")
    oreToSlag("tungsten-ore")
      
    oreToSlag("empty-barrel")
    oreToSlag("gas-canister")
    oreToSlag("empty-canister")

--    oreToSlag("catalyst-metal-carrier")
--    oreToSlag("filter-ceramic-used")
--    oreToSlag("filter-frame")
  
    --stone-crushed-dissolution
    bobmods.lib.recipe.remove_ingredient("stone-crushed-dissolution", "stone-crushed")
    table.insert( data.raw["recipe"]["stone-crushed-dissolution"].ingredients, {"stone-crushed", 14})
end

addRecipes()
