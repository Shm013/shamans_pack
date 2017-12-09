--luacheck: ignore make_4way_animation_from_spritesheet


if data.raw["assembling-machine"]["chemical-plant-2"] then
	bobicon("chemical-plant","assembling-machine",1,4,0)
    data.raw["assembling-machine"]["chemical-plant"].animation = make_4way_animation_from_spritesheet({
            filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/chemical-plant-1.png",
            width = 122,
            height = 134,
            frame_count = 1,
            shift = util.by_pixel(-5, -4.5),
            hr_version = {
                filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/hr-chemical-plant-1.png",
                width = 244,
                height = 268,
                frame_count = 1,
                shift = util.by_pixel(-5, -4.5),
                scale = 0.5
            }
        }
    )
end

if data.raw["assembling-machine"]["chemical-plant-2"] then
    data.raw["assembling-machine"]["chemical-plant-2"].animation = make_4way_animation_from_spritesheet({
            filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/chemical-plant-2.png",
            width = 122,
            height = 134,
            frame_count = 1,
            shift = util.by_pixel(-5, -4.5),
            hr_version = {
                filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/hr-chemical-plant-2.png",
                width = 244,
                height = 268,
                frame_count = 1,
                shift = util.by_pixel(-5, -4.5),
                scale = 0.5
            }
        }
    )
end

if data.raw["assembling-machine"]["chemical-plant-3"] then
    data.raw["assembling-machine"]["chemical-plant-3"].animation = make_4way_animation_from_spritesheet({
            filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/chemical-plant-3.png",
            width = 122,
            height = 134,
            frame_count = 1,
            shift = util.by_pixel(-5, -4.5),
            hr_version = {
                filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/hr-chemical-plant-3.png",
                width = 244,
                height = 268,
                frame_count = 1,
                shift = util.by_pixel(-5, -4.5),
                scale = 0.5
            }
        }
    )
end

if data.raw["assembling-machine"]["chemical-plant-4"] then
    data.raw["assembling-machine"]["chemical-plant-4"].animation = make_4way_animation_from_spritesheet({
            filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/chemical-plant-4.png",
            width = 122,
            height = 134,
            frame_count = 1,
            shift = util.by_pixel(-5, -4.5),
            hr_version = {
                filename = "__ShinyBobGFX__/graphics/entity/chemical-plant/hr-chemical-plant-4.png",
                width = 244,
                height = 268,
                frame_count = 1,
                shift = util.by_pixel(-5, -4.5),
                scale = 0.5
            }
        }
    )
end
