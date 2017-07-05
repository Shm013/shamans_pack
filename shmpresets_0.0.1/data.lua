--    shmpresets
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

data.raw["map-gen-presets"]["default"]["shm-normal"] = {
    order = "h",
    basic_settings =
    {
        autoplace_controls =
        {
            ["coal"] = { richness  = "good", frequency = "low" },
            ["angels-ore1"] = { richness = "good", frequency = "low"},
            ["angels-ore2"] = { richness = "good", frequency = "low"},
            ["angels-ore3"] = { richness = "good", frequency = "low"},
            ["angels-ore4"] = { richness = "good", frequency = "low"},
            ["angels-ore5"] = { richness = "good", frequency = "low"},
            ["angels-ore6"] = { richness = "good", frequency = "low"},
            ["crude-oil"] = { richness = "good", size = "big", frequency = "low"},
            ["angels-natural-gas"] = { richness = "good", size = "big", frequency = "low"},
            ["angels-fissure"] = { richness = "good", size = "big", frequency = "low"},
        }
    }
}

data.raw["map-gen-presets"]["default"]["shm-marathon"] = {
    order = "i",
    basic_settings =
    {
        autoplace_controls =
        {
            ["coal"] = { richness  = "good", frequency = "low" },
            ["angels-ore1"] = { richness = "good", frequency = "low"},
            ["angels-ore2"] = { richness = "good", frequency = "low"},
            ["angels-ore3"] = { richness = "good", frequency = "low"},
            ["angels-ore4"] = { richness = "good", frequency = "low"},
            ["angels-ore5"] = { richness = "good", frequency = "low"},
            ["angels-ore6"] = { richness = "good", frequency = "low"},
            ["crude-oil"] = { richness = "good", size = "big", frequency = "low"},
            ["angels-natural-gas"] = { richness = "good", size = "big", frequency = "low"},
            ["angels-fissure"] = { richness = "good", size = "big", frequency = "low"},
        }
    },
    advanced_settings =
    {
        difficulty_settings =
        {
            recipe_difficulty = defines.difficulty_settings.recipe_difficulty.expensive,
            technology_difficulty = defines.difficulty_settings.technology_difficulty.expensive,
            technology_price_multiplier = 6
        }
    },
}

data.raw["map-gen-presets"]["default"]["shm-marathon-railway"] = {
    order = "k",
    basic_settings =
    {
        autoplace_controls =
        {
            ["coal"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore1"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore2"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore3"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore4"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore5"] = { richness = "good", size = "big", frequency = "very-low"},
            ["angels-ore6"] = { richness = "good", size = "big", frequency = "very-low"},
            ["crude-oil"] = { richness = "very-good", size = "big", frequency = "very-low"},
            ["angels-natural-gas"] = { richness = "very-good", size = "big", frequency = "very-low"},
            ["angels-fissure"] = { richness = "very-good", size = "big", frequency = "very-low"},
            ["water"] = { size = "big", frequency = "very-low"},
        }
    },
    advanced_settings =
    {
        difficulty_settings =
        {
            recipe_difficulty = defines.difficulty_settings.recipe_difficulty.expensive,
            technology_difficulty = defines.difficulty_settings.technology_difficulty.expensive,
            technology_price_multiplier = 6
        }
    },
    terrain_segmentation = "very-low",
    water = "high",
}

data.raw["map-gen-presets"]["default"]["shm-hardcore"] = {
    order = "l",
    basic_settings =
    {
        autoplace_controls =
        {
            ["coal"] = { size = "big", frequency = "very-low" },
            ["angels-ore1"] = { size = "big", frequency = "very-low" },
            ["angels-ore2"] = { size = "big", frequency = "very-low" },
            ["angels-ore3"] = { size = "big", frequency = "very-low" },
            ["angels-ore4"] = { size = "big", frequency = "very-low" },
            ["angels-ore5"] = { size = "big", frequency = "very-low" },
            ["angels-ore6"] = { size = "big", frequency = "very-low" },
            ["crude-oil"] = { size = "big", frequency = "very-low" },
            ["angels-natural-gas"] = { size = "big", frequency = "very-low" },
            ["angels-fissure"] = { size = "big", frequency = "very-low" },
            ["enemy-base"] = { richness = "very-good", size = "big", frequency = "very-high"},
        }
    },
    advanced_settings =
    {
        difficulty_settings =
        {
            recipe_difficulty = defines.difficulty_settings.recipe_difficulty.expensive,
            technology_difficulty = defines.difficulty_settings.technology_difficulty.expensive,
            technology_price_multiplier = 6
        }
    },
    terrain_segmentation = "very-low",
    water = "high",
}
