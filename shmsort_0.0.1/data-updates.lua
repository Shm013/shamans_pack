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


if not shmmods then shmmods = {} end
if not shmmods.tweaks then shmmods.tweaks = {} end


data.raw.item["smooth-concrete"].subgroup = "sf-stone"
data.raw.item["smooth-concrete"].order = "a"
data.raw.item["checkerboard"].subgroup = "sf-stone"
data.raw.item["checkerboard"].order = "b"
data.raw.item["reinforced-concrete"].subgroup = "sf-stone"
data.raw.item["reinforced-concrete"].order = "c"
data.raw.item["asphalt"].subgroup = "sf-stone"
data.raw.item["asphalt"].order = "d"
data.raw.item["road-line"].subgroup = "sf-stone"
data.raw.item["road-line"].order = "e"
data.raw.item["cobblestone"].subgroup = "sf-stone"
data.raw.item["cobblestone"].order = "f"
data.raw.item["redbrick"].subgroup = "sf-stone"
data.raw.item["redbrick"].order = "g"
data.raw.item["yellowbrick"].subgroup = "sf-stone"
data.raw.item["yellowbrick"].order = "h"
data.raw.item["gravel"].subgroup = "sf-stone"
data.raw.item["gravel"].order = "i"

data.raw.item["experiment"].subgroup = "sf-terrain"
data.raw.item["experiment"].order = "a"
data.raw.item["wood-floor"].subgroup = "sf-terrain"
data.raw.item["wood-floor"].order = "b"
data.raw.item["herringbone"].subgroup = "sf-terrain"
data.raw.item["herringbone"].order = "c"
data.raw.item["darkwood"].subgroup = "sf-terrain"
data.raw.item["darkwood"].order = "d"
data.raw.item["decal1"].subgroup = "sf-terrain"
data.raw.item["decal1"].order = "e"
data.raw.item["dect-wood-floor"].subgroup = "sf-terrain"
data.raw.item["dect-wood-floor"].order = "f"

data.raw.item["mf-concrete-red"].subgroup = "sf-colors"
data.raw.item["mf-concrete-red"].order = "a"
data.raw.item["mf-concrete-blue"].subgroup = "sf-colors"
data.raw.item["mf-concrete-blue"].order = "b"
data.raw.item["mf-concrete-gold"].subgroup = "sf-colors"
data.raw.item["mf-concrete-gold"].order = "c"
data.raw.item["mf-concrete-green"].subgroup = "sf-colors"
data.raw.item["mf-concrete-green"].order = "d"
data.raw.item["mf-concrete-limegreen"].subgroup = "sf-colors"
data.raw.item["mf-concrete-limegreen"].order = "e"
data.raw.item["mf-concrete-orange"].subgroup = "sf-colors"
data.raw.item["mf-concrete-orange"].order = "f"
data.raw.item["mf-concrete-pink"].subgroup = "sf-colors"
data.raw.item["mf-concrete-pink"].order = "g"
data.raw.item["mf-concrete-magenta"].subgroup = "sf-colors"
data.raw.item["mf-concrete-magenta"].order = "h"
data.raw.item["mf-concrete-purple"].subgroup = "sf-colors"
data.raw.item["mf-concrete-purple"].order = "i"
data.raw.item["mf-concrete-skyblue"].subgroup = "sf-colors"
data.raw.item["mf-concrete-skyblue"].order = "j"
data.raw.item["mf-concrete-white"].subgroup = "sf-colors"
data.raw.item["mf-concrete-white"].order = "k"
data.raw.item["mf-concrete-yellow"].subgroup = "sf-colors"
data.raw.item["mf-concrete-yellow"].order = "l"
data.raw.item["mf-concrete-orange"].subgroup = "sf-colors"
data.raw.item["mf-concrete-orange"].order = "m"
data.raw.item["mf-concrete-black"].subgroup = "sf-colors"
data.raw.item["mf-concrete-black"].order = "n"
data.raw.item["mf-concrete-darkgrey"].subgroup = "sf-colors"
data.raw.item["mf-concrete-darkgrey"].order = "o"

data.raw.item["diamond-plate"].subgroup = "sf-metal"
data.raw.item["diamond-plate"].order = "a"
data.raw.item["rusty-metal"].subgroup = "sf-metal"
data.raw.item["rusty-metal"].order = "b"
data.raw.item["rusty-grate"].subgroup = "sf-metal"
data.raw.item["rusty-grate"].order = "c"
data.raw.item["arrow-grate"].subgroup = "sf-metal"
data.raw.item["arrow-grate"].order = "d"
data.raw.item["fast-arrow-grate"].subgroup = "sf-metal"
data.raw.item["fast-arrow-grate"].order = "e"
data.raw.item["express-arrow-grate"].subgroup = "sf-metal"
data.raw.item["express-arrow-grate"].order = "f"
data.raw.item["titanium-arrow-grate"].subgroup = "sf-metal"
data.raw.item["titanium-arrow-grate"].order = "g"
data.raw.item["nitinol-arrow-grate"].subgroup = "sf-metal"
data.raw.item["nitinol-arrow-grate"].order = "h"
data.raw.item["circuit-floor"].subgroup = "sf-metal"
data.raw.item["circuit-floor"].order = "i"
data.raw.item["alien-metal"].subgroup = "sf-metal"
data.raw.item["alien-metal"].order = "j"
data.raw.item["metal-scraps"].subgroup = "sf-metal"
data.raw.item["metal-scraps"].order = "k"
data.raw.item["hexagonb"].subgroup = "sf-metal"
data.raw.item["hexagonb"].order = "l"

data.raw.item["mf_green_grass"].subgroup = "sf-biome"
data.raw.item["mf_green_grass"].order = "a"
data.raw.item["mf_grass_dry"].subgroup = "sf-biome"
data.raw.item["mf_grass_dry"].order = "b"
data.raw.item["mf_dirt_dark"].subgroup = "sf-biome"
data.raw.item["mf_dirt_dark"].order = "c"
data.raw.item["lava"].subgroup = "sf-biome"
data.raw.item["lava"].order = "d"
data.raw.item["snow"].subgroup = "sf-biome"
data.raw.item["snow"].order = "e"
data.raw.item["tar"].subgroup = "sf-biome"
data.raw.item["tar"].order = "f"
data.raw.item["toxic"].subgroup = "sf-biome"
data.raw.item["toxic"].order = "g"
data.raw.item["mf_sand_light"].subgroup = "sf-biome"
data.raw.item["mf_sand_light"].order = "h"
data.raw.item["mf_sand_dark"].subgroup = "sf-biome"
data.raw.item["mf_sand_dark"].order = "i"
data.raw.item["mf_dirt"].subgroup = "sf-biome"
data.raw.item["mf_dirt"].order = "j"

data.raw.item["mf_green_grass_blueprint"].subgroup = "sf-blueprint"
data.raw.item["mf_green_grass_blueprint"].order = "a"
data.raw.item["mf_grass_dry_blueprint"].subgroup = "sf-blueprint"
data.raw.item["mf_grass_dry_blueprint"].order = "b"
data.raw.item["sand_light_blueprint"].subgroup = "sf-blueprint"
data.raw.item["sand_light_blueprint"].order = "c"
data.raw.item["sand_dark_blueprint"].subgroup = "sf-blueprint"
data.raw.item["sand_dark_blueprint"].order = "d"
data.raw.item["dirt_blueprint"].subgroup = "sf-blueprint"
data.raw.item["dirt_blueprint"].order = "e"
data.raw.item["dirt_dark_blueprint"].subgroup = "sf-blueprint"
data.raw.item["dirt_dark_blueprint"].order = "f"

for _, variant in pairs(DECT.CONFIG.PAINT_VARIANTS) do
    data.raw.item["dect-paint-"..variant].subgroup = "sf-hazard"
end

data.raw.item["Arci-asphalt"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt"].order = "a"
data.raw.item["Arci-asphalt-marking-white-straight"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-white-straight"].order = "b"
data.raw.item["Arci-asphalt-marking-white-diagonal"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-white-diagonal"].order = "c"
data.raw.item["Arci-asphalt-marking-white-corner-left"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-white-corner-left"].order = "d"
data.raw.item["Arci-asphalt-marking-white-corner-right"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-white-corner-right"].order = "e"
data.raw.item["Arci-asphalt-marking-yellow-straight"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-yellow-straight"].order = "f"
data.raw.item["Arci-asphalt-marking-yellow-diagonal"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-yellow-diagonal"].order = "g"
data.raw.item["Arci-asphalt-marking-yellow-corner-left"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-yellow-corner-left"].order = "h"
data.raw.item["Arci-asphalt-marking-yellow-corner-right"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-marking-yellow-corner-right"].order = "i"
data.raw.item["Arci-asphalt-zebra-crossing"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-zebra-crossing"].order = "j"
data.raw.item["Arci-asphalt-hazard-white"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-hazard-white"].order = "k"
data.raw.item["Arci-asphalt-hazard-yellow"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-hazard-yellow"].order = "l"
data.raw.item["Arci-asphalt-hazard-red"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-hazard-red"].order = "m"
data.raw.item["Arci-asphalt-hazard-blue"].subgroup = "sf-asphalt"
data.raw.item["Arci-asphalt-hazard-blue"].order = "n"


local base_tiles = {"dirt", "sand", "sand-dark", "grass", "grass-dry", "red-desert", "red-desert-dark", "water", "water-green"}
for _, tile in pairs(base_tiles) do
    data.raw.item["dect-base-"..tile].subgroup = "sf-landscaping"
end

for _, material in ipairs(textplates.materials) do
    for _, size in ipairs(textplates.sizes) do
        data.raw.item[size.."-"..material.."-blank"].subgroup = "sf-text"
    end
end
