--    technology-updates.lua
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

bobmods.lib.tech.add_recipe_unlock("military-2", "sci-military-component")
--bobmods.lib.tech.add_recipe_unlock("logistics-3", "sci-log-component")
--bobmods.lib.tech.add_recipe_unlock("logistics-3", "sci-log-component")

bobmods.lib.tech.replace_science_pack("night-vision-equipment-3",
    "production-science-pack", "military-science-pack")

bobmods.lib.tech.add_science_pack("concrete", "science-pack-3", 250)
