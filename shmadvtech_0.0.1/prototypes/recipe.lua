--    recipe.lua - part of shmadvtech.
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

data:extend({
	{ 
        type = "recipe",
        name = "sci-component-1",
        category = "crafting",
	    enabled = true,
	    energy_required = 5,
        ingredients =
        {
		    {"stone", 2},
		    {"coal", 2},
        },
        result = "sci-component-1",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "sci-component-2",
        category = "crafting",
	    enabled = false,
	    energy_required = 7.5,
        ingredients =
        {
		    {"sci-component-1" ,2},
		    {"lead-plate", 22},
		    {"tin-plate", 14},
		    {"electronic-circuit", 2}
        },
        result = "sci-component-2",
	    result_count = 2
    },
    {
        type = "recipe",
        name = "sci-component-3",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"sci-component-2" ,2},
		    {"aluminium-plate", 5},
		    {"silver-plate", 14},
		    {"nickel-plate", 7},
		    {"advcomp3", 2},
        },
        result = "sci-component-3",
	    result_count = 2
    },
    { 
        type = "recipe",
        name = "sci-log-component",
        category = "crafting",
	    enabled = false,
	    energy_required = 22,
        ingredients =
        {
		    {"sci-component-3" ,2},
            {"advcomp-log", 1},
		    {"cobalt-plate", 9},
		    {"gold-plate", 10},
		    {"invar-alloy", 6},
        },
        result = "sci-log-component",
	    result_count = 2
    },
    { 
        type = "recipe",
        name = "sci-prod-component",
        category = "crafting",
	    enabled = false,
	    energy_required = 12,
        ingredients =
        {
		    {"sci-component-3" ,2},
            {"advcomp-prod", 1},
		    {"titanium-plate", 12},
		    {"tungsten-plate", 8},
        },
        result = "sci-prod-component",
	    result_count = 2
    },
    { 
        type = "recipe",
        name = "sci-military-component",
	    energy_required = 22,
        category = "crafting",
	    enabled = false,
        ingredients =
        {
		    {"sci-component-1" ,2},
            {"piercing-rounds-magazine", 1},
            {"shotgun-shell", 2},
        },
        result = "sci-military-component",
	    result_count = 2
    },
    { 
        type = "recipe",
        name = "sci-ht-component",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"bronze-alloy", 5},
		    {"brass-alloy", 1},
		    {"glass", 5}
        },
        result = "sci-ht-component",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "advcomp3",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"bronze-alloy", 1},
		    {"brass-alloy", 5},
		    {"glass", 5}
        },
        result = "advcomp3",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "advcomp-military",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"bronze-alloy", 1},
		    {"brass-alloy", 1},
		    {"glass", 2}
        },
        result = "advcomp-military",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "advcomp-log",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"lithium", 3},
		    {"zinc-plate", 7},
		    {"glass", 10}
        },
        result = "advcomp-log",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "advcomp-prod",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"lithium", 7},
		    {"zinc-plate", 3},
		    {"glass", 10}
        },
        result = "advcomp-prod",
	    result_count = 1
    },
    { 
        type = "recipe",
        name = "advcomp-alien",
        category = "crafting",
	    enabled = false,
	    energy_required = 15,
        ingredients =
        {
		    {"lithium", 7},
		    {"zinc-plate", 7},
		    {"glass", 2}
        },
        result = "advcomp-alien",
	    result_count = 1
    },
})
