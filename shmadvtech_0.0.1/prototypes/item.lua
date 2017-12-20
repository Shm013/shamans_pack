--    item.lua - part of shmadvtech.
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
        type = "item",
        name = "sci-component-1",
        icon = "__shmadvtech__/graphics/comp1.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "a",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-component-2",
        icon = "__shmadvtech__/graphics/comp2.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "b",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-component-3",
        icon = "__shmadvtech__/graphics/comp3.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "c",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-military-component",
        icon = "__shmadvtech__/graphics/comp-military.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "d",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-log-component",
        icon = "__shmadvtech__/graphics/comp-log.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "e",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-prod-component",
        icon = "__shmadvtech__/graphics/comp-prod.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "f",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-alien-component",
        icon = "__shmadvtech__/graphics/comp-alien.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "f",
        stack_size = 100
    },
	{
        type = "item",
        name = "sci-ht-component",
        icon = "__shmadvtech__/graphics/comp-ht.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "sci-com",
        order = "g",
        stack_size = 100
    },
	{
        type = "item",
        name = "advcomp3",
        icon = "__shmadvtech__/graphics/advcomp3.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "advsci-com",
        order = "c1[tech]",
        stack_size = 100
    },
	{
        type = "item",
        name = "advcomp-military",
        icon = "__shmadvtech__/graphics/advcomp-military.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "advsci-com",
        order = "e[tech]",
        stack_size = 100
    },
	{
        type = "item",
        name = "advcomp-log",
        icon = "__shmadvtech__/graphics/advcomp-log.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "advsci-com",
        order = "e[tech]",
        stack_size = 100
    },
	{
        type = "item",
        name = "advcomp-prod",
        icon = "__shmadvtech__/graphics/advcomp-prod.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "advsci-com",
        order = "e[tech]",
        stack_size = 100
    },
	{
        type = "item",
        name = "advcomp-alien",
        icon = "__shmadvtech__/graphics/advcomp-alien.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "advsci-com",
        order = "e[tech]",
        stack_size = 100
    },
})
