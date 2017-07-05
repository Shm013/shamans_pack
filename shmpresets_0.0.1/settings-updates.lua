--    settings-updates.lua
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

local infiniteore_settings = {
    "angels-enableinfiniteiron",
    "angels-enableinfinitecopper",
    "angels-enableinfinitestone",
    "angels-enableinfinitecoal",
    "angels-enableinfiniteuranium",
    "angels-enableinfiniteangelsore1",
    "angels-enableinfiniteangelsore2",
    "angels-enableinfiniteangelsore3",
    "angels-enableinfiniteangelsore4",
    "angels-enableinfiniteangelsore5",
    "angels-enableinfiniteangelsore6",
    "angels-enableinfinitebobbauxite",
    "angels-enableinfinitebobcobalt",
    "angels-enableinfinitebobgems",
    "angels-enableinfinitebobgold",
    "angels-enableinfiniteboblead",
    "angels-enableinfinitebobnickel",
    "angels-enableinfinitebobquartz",
    "angels-enableinfinitebobrutile",
    "angels-enableinfinitebobsilver",
    "angels-enableinfinitebobsulfur",
    "angels-enableinfinitebobtin",
    "angels-enableinfinitebobtungsten",
    "angels-enableinfinitebobzinc",
    "angels-enableinfiniteyuoki",
    "angels-enableinfiniteuraniumpower",
    "angels-enableinfinitedarkmatter"
}

for _, name in ipairs(infiniteore_settings) do
  local s = data.raw['bool-setting'][name] or {}
  s.default_value = false
end
