--    settings.lua
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
if not shmmods.storage then shmmods.storage = {} end


-- Storage size:
shmmods.storage.wooden_chest_size = 10
shmmods.storage.iron_chest_size = 20
shmmods.storage.steel_chest_size = 30
shmmods.storage.wooden_crate_size = 30
shmmods.storage.iron_crate_size = 40
shmmods.storage.basic_repository_size = 50
shmmods.storage.logistic_chest_size = 20

shmmods.storage.tank_size = 10
shmmods.storage.bob_tank_2_size = 15
shmmods.storage.bob_tank_3_size = 20
shmmods.storage.car_size= 10
--{{ Trains:
shmmods.storage.cargo_wagon_size = 20 -- 40 in vanila
shmmods.storage.cargo_wagon_size_MK2 = 40 -- 60 in bob
shmmods.storage.cargo_wagon_size_MK3 = 100 -- 80 in bob

shmmods.storage.crawler_size = 70 -- 768 in angel
shmmods.storage.crawler_wagon_size = 46 -- 64 in angel
shmmods.storage.crawler_bot_wagon_size = 70 -- 128 in angel
--}}
