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

-- Vehicle & Trains:
data.raw["car"]["car"].inventory_size = shmmods.storage.car_size
data.raw["car"]["tank"].inventory_size = shmmods.storage.tank_size
data.raw["car"]["bob-tank-2"].inventory_size = shmmods.storage.bob_tank_2_size
data.raw["car"]["bob-tank-3"].inventory_size = shmmods.storage.bob_tank_3_size

data.raw["cargo-wagon"]["cargo-wagon"].inventory_size = shmmods.storage.cargo_wagon_size
data.raw["cargo-wagon"]["bob-cargo-wagon-2"].inventory_size = shmmods.storage.cargo_wagon_size_MK2
data.raw["cargo-wagon"]["bob-cargo-wagon-3"].inventory_size = shmmods.storage.cargo_wagon_size_MK3

--data.raw["car"]["angels-crawler"].inventory_size = shmmods.storage.crawler_size
--data.raw["cargo-wagon"]["crawler-wagon"].inventory_size = shmmods.storage.crawler_wagon_size
--data.raw["cargo-wagon"]["crawler-bot-wagon"].inventory_size = shmmods.storage.crawler_bot_wagon_size
