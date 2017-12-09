if data.raw["assembling-machine"]["chemical-steel-furnace"] then
    data.raw["item"]["chemical-steel-furnace"].icon = "__ShinyBobGFX__/graphics/entity/chemical-steel-furnace/icon/steel-furnace-chem.png"
    data.raw["assembling-machine"]["chemical-steel-furnace"].icon = "__ShinyBobGFX__/graphics/entity/chemical-steel-furnace/icon/steel-furnace-chem.png"
    data.raw["assembling-machine"]["chemical-steel-furnace"]["animation"] = {
        layers = {
            {
                filename = "__ShinyBobGFX__/graphics/entity/chemical-steel-furnace/steel-furnace-chem.png",
                priority = "high",
                width = 85,
                height = 87,
                frame_count = 1,
                shift = util.by_pixel(-1.5, 1.5),
                hr_version = {
                    filename = "__ShinyBobGFX__/graphics/entity/chemical-steel-furnace/hr-steel-furnace-chem.png",
                    priority = "high",
                    width = 171,
                    height = 174,
                    frame_count = 1,
                    shift = util.by_pixel(-1.25, 2),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
                priority = "high",
                width = 139,
                height = 43,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(39.5, 11.5),
                hr_version = {
                    filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
                    priority = "high",
                    width = 277,
                    height = 85,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(39.25, 11.25),
                    scale = 0.5
                }
            },
        },
    }
end

if data.raw["assembling-machine"]["mixing-steel-furnace"] then
    data.raw["item"]["mixing-steel-furnace"].icon = "__ShinyBobGFX__/graphics/entity/mixing-steel-furnace/icon/steel-furnace-mixer.png"
    data.raw["assembling-machine"]["mixing-steel-furnace"].icon = "__ShinyBobGFX__/graphics/entity/mixing-steel-furnace/icon/steel-furnace-mixer.png"
    data.raw["assembling-machine"]["mixing-steel-furnace"]["animation"] = {
        layers = {
            {
                filename = "__ShinyBobGFX__/graphics/entity/mixing-steel-furnace/steel-furnace-mixer.png",
                priority = "high",
                width = 85,
                height = 87,
                frame_count = 1,
                shift = util.by_pixel(-1.5, 1.5),
                hr_version = {
                    filename = "__ShinyBobGFX__/graphics/entity/mixing-steel-furnace/hr-steel-furnace-mixer.png",
                    priority = "high",
                    width = 171,
                    height = 174,
                    frame_count = 1,
                    shift = util.by_pixel(-1.25, 2),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
                priority = "high",
                width = 139,
                height = 43,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(39.5, 11.5),
                hr_version = {
                    filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
                    priority = "high",
                    width = 277,
                    height = 85,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(39.25, 11.25),
                    scale = 0.5
                }
            },
        },
    }
end
