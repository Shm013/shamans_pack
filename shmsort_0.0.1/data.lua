--    data.lua
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

data:extend(
{
    {
        type = "item-group",
        name = "shm-floors",
        order = "x",
        inventory_order = "c-a",
        icon = "__More_Floors__/graphics/icons/more-floors-tab.png",
        icon_size = 64,
    },
	{
        type = "item-subgroup",
        name = "sf-biome",
        group = "shm-floors",
        order = "a",
    },
    {
        type = "item-subgroup",
        name = "sf-terrain",
        group = "shm-floors",
        order = "b",
    },
	{
        type = "item-subgroup",
        name = "sf-stone",
        group = "shm-floors",
        order = "c",
    },
	{
        type = "item-subgroup",
        name = "sf-metal",
        group = "shm-floors",
        order = "d",
    },
	{
        type = "item-subgroup",
        name = "sf-colors",
        group = "shm-floors",
        order = "e",
    },
	{
        type = "item-subgroup",
        name = "sf-blueprint",
        group = "shm-floors",
        order = "f",
    },
	{
        type = "item-subgroup",
        name = "sf-hazard",
        group = "shm-floors",
        order = "g",
    },
	{
        type = "item-subgroup",
        name = "sf-landscaping",
        group = "shm-floors",
        order = "h",
    },
	{
        type = "item-subgroup",
        name = "sf-text",
        group = "shm-floors",
        order = "i",
    },
	{
        type = "item-subgroup",
        name = "sf-asphalt",
        group = "shm-floors",
        order = "g",
    },
})
