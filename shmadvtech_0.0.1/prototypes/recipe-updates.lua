--    recipe-updates.lua
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


data.raw["recipe"]["science-pack-1"].ingredients = {
    {"iron-gear-wheel",5},
    {"copper-plate", 15},
    {"sci-component-1", 3},
}

data.raw["recipe"]["science-pack-2"].ingredients = {
    {"inserter", 2},
    {"transport-belt", 7},
    {"sci-component-2", 3},
    {"bronze-alloy", 7},
}

data.raw["recipe"]["science-pack-3"].ingredients = {
    {"battery", 5},
    {"advanced-circuit", 3},
    {"filter-inserter", 2},
    {"steel-plate", 7},
    {"sci-component-3", 3},
}

data.raw["recipe"]["production-science-pack"].ingredients = {
    {"processing-unit", 10},
    {"steel-bearing", 10},
    {"lithium-ion-battery", 10},
    {"silicon-nitride", 7},
    {"sci-prod-component", 2},
}

--data.raw["recipe"]["production-science-pack"].ingredients = {
--    {"processing-unit", 10},
----    {"express-transport-belt", 10},
--    {"lithium-ion-battery", 10},
--    {"silicon-nitride", 7},
--    {"sci-component-4", 3},
--    {"advcomp-prod", 3},
--}
--data.raw["recipe"]["science-pack-4"].energy_required = 45
--data.raw["recipe"]["alien-science-pack"].ingredients = {
--		{"alien-artifact", 3},
--		{"sci-component-5", 3},
--}
--
data.raw["recipe"]["military-science-pack"].ingredients = {
    {"light-armor", 1},
    {"pistol", 1},
    {"grenade", 1},
    {"sci-military-component", 2}
}

bobmods.lib.recipe.add_new_ingredient("logistic-science-pack", {"sci-log-component", 2})
bobmods.lib.recipe.add_new_ingredient("high-tech-science-pack",{"advcomp-alien", 2})

data.raw["recipe"]["alien-science-pack"].result_count = 1
data.raw["recipe"]["alien-science-pack-blue"].result_count = 1
data.raw["recipe"]["alien-science-pack-orange"].result_count = 1
data.raw["recipe"]["alien-science-pack-purple"].result_count = 1
data.raw["recipe"]["alien-science-pack-yellow"].result_count = 1
data.raw["recipe"]["alien-science-pack-green"].result_count = 1
data.raw["recipe"]["alien-science-pack-red"].result_count = 1

data.raw["recipe"]["alien-science-pack-blue"].ingredients = {{"alien-artifact-blue", 1},{"advcomp-alien",3}}
data.raw["recipe"]["alien-science-pack-orange"].ingredients = {{"alien-artifact-orange", 1},{"advcomp-alien",3}}
data.raw["recipe"]["alien-science-pack-purple"].ingredients = {{"alien-artifact-purple", 1},{"advcomp-alien",3}}
data.raw["recipe"]["alien-science-pack-yellow"].ingredients = {{"alien-artifact-yellow", 1},{"advcomp-alien",3}}
data.raw["recipe"]["alien-science-pack-green"].ingredients = {{"alien-artifact-green", 1},{"advcomp-alien",3}}
data.raw["recipe"]["alien-science-pack-red"].ingredients = {{"alien-artifact-red", 1},{"advcomp-alien",3}}
