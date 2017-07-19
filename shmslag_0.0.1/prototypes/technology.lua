--    technology.lua
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
        type = "technology",
        name = "to-slag-1",
        icon = "__shmslag__/graphics/technology/reverse-slag.png",
        icon_size = 64,
        prerequisites = { "ore-crushing" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "stone-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "coal-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "iron-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "copper-ore-to-slag",
            },
        },
        unit =
        {
            count = 40,
            ingredients = 
            {
                {"science-pack-1", 1},
            },
            time = 15
        },
        upgrade = true
    }, 
    {
        type = "technology",
        name = "to-slag-2",
        icon = "__shmslag__/graphics/technology/reverse-slag.png",
        icon_size = 64,
        prerequisites = { "to-slag-1" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "lead-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "tin-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "zinc-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "nickel-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "quartz-to-slag",
            },
        },
        unit =
        {
            count = 40,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 20
        },
        upgrade = true,
    },
    {
        type = "technology",
        name = "to-slag-3",
        icon = "__shmslag__/graphics/technology/reverse-slag.png",
        icon_size = 64,
        prerequisites = { "to-slag-2" },
        effects =
        {
	        {
                type = "unlock-recipe",
                recipe = "cobalt-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "bauxite-ore-to-slag",
            },
            {
                type = "unlock-recipe",
                recipe = "silver-ore-to-slag",
            },
	        {
                type = "unlock-recipe",
                recipe = "gold-ore-to-slag",
            },
        },
        unit =
        {
            count = 40,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
            },
            time = 20
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "to-slag-4",
        icon = "__shmslag__/graphics/technology/reverse-slag.png",
        icon_size = 64,
        prerequisites = { "to-slag-3" },
        effects =
        {
        },
        unit =
        {
            count = 40,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
            },
            time = 40
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "in-to-slag",
        icon = "__shmslag__/graphics/technology/reverse-slag.png",
        icon_size = 64,
        prerequisites = { "to-slag-1" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "empty-barrel-to-slag"
            },
	        {
                type = "unlock-recipe",
                recipe = "gas-canister-to-slag"
            },
	        {
                type = "unlock-recipe",
                recipe = "empty-canister-to-slag"
            },
	        --{
            --    type = "unlock-recipe",
            --    recipe = "catalyst-metal-carrier-to-slag"
            --},
	        --{
            --    type = "unlock-recipe",
            --    recipe = "filter-frame-to-slag"
            --},
	        --{
            --    type = "unlock-recipe",
            --    recipe = "filter-ceramic-used-to-slag"
            --},
        },
        unit =
        {
            count = 40,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 20
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "crystal-processing",
        icon = "__shmslag__/graphics/technology/crystal.png",
        icon_size = 128,
        prerequisites = { 
            "electrolysis-1",
            "chemical-processing-1"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "NickelCrystal"
            },
	        {
                type = "unlock-recipe",
                recipe = "QuartzCrystal"
            },
	        {
                type = "unlock-recipe",
                recipe = "lead-ore-crystalprocessing"
            },
	        {
                type = "unlock-recipe",
                recipe = "tin-ore-crystalprocessing"
            },
        },
        unit =
        {
            count = 50,
            ingredients = 
            {
                {"science-pack-1", 1},
            },
            time = 15
        },
        upgrade = true
    }
})
