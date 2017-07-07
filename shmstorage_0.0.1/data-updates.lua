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


require("config")

table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "basic-repository"})


data.raw["container"]["iron-crate"].inventory_size = shmmods.storage.iron_crate_size
data.raw["container"]["wooden-chest"].inventory_size = shmmods.storage.wooden_chest_size
data.raw["container"]["iron-chest"].inventory_size = shmmods.storage.iron_chest_size
data.raw["container"]["steel-chest"].inventory_size = shmmods.storage.steel_chest_size
data.raw["container"]["wooden-crate"].inventory_size = shmmods.storage.wooden_crate_size
data.raw["container"]["basic-repository"].inventory_size = shmmods.storage.basic_repository_size
data.raw["logistic-container"]["logistic-chest-passive-provider"].inventory_size = shmmods.storage.logistic_chest_size
data.raw["logistic-container"]["logistic-chest-storage"].inventory_size = shmmods.storage.logistic_chest_size
data.raw["logistic-container"]["logistic-chest-requester"].inventory_size = shmmods.storage.logistic_chest_size
