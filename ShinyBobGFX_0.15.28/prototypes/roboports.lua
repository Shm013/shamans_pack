if data.raw["roboport"]["bob-construction-robot-2"] then
bobicon("name","roboport",1,1,0)
end




local chest = {"bob-robochest","bob-robochest-2","bob-robochest-3","bob-robochest-4"}
local expander = {"bob-logistic-zone-expander","bob-logistic-zone-expander-2","bob-logistic-zone-expander-3","bob-logistic-zone-expander-4"}
local charger = {"bob-robo-charge-port","bob-robo-charge-port-2","bob-robo-charge-port-3","bob-robo-charge-port-4"}
local chargerL = {"bob-robo-charge-port-large","bob-robo-charge-port-large-2","bob-robo-charge-port-large-3","bob-robo-charge-port-large-4"}
local port = {"roboport","bob-roboport-2","bob-roboport-3","bob-roboport-4"}

if data.raw["roboport"]["bob-robochest-4"] then
bobicon("bob-robochest","roboport",1,4,0)
end

if data.raw["roboport"]["bob-logistic-zone-expander-4"] then
bobicon("bob-logistic-zone-expander","roboport",1,4,0)
end

if data.raw["roboport"]["bob-robo-charge-port-4"] then
bobicon("bob-robo-charge-port","roboport",1,4,0)
end

if data.raw["roboport"]["bob-robo-charge-port-large-4"] then
bobicon("bob-robo-charge-port-large","roboport",1,4,0)
end

if data.raw["roboport"]["bob-roboport-4"] then
bobicon("bob-roboport","roboport",2,4,0)
bobicon("roboport","roboport",1,1,0)
end


for mk = 1,4 do
	entity = data.raw["roboport"][port[mk]]
	
	if not entity then goto skip1 end
	log (entity.name.."  zz99")
	entity.base =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-base-"..mk..".png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25}
    }
    entity.base_patch =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-base-patch-"..mk..".png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125}
    }
    entity.base_animation =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-base-animation-"..mk..".png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375}
    }
    entity.door_animation_up =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-door-up-"..mk..".png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625}
    }
    entity.door_animation_down =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-door-down-"..mk..".png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375}
    }
    	
	::skip1::
	
	entity = data.raw["roboport"][chest[mk]]
	if not entity then goto skip2 end
	log (entity.name.."  zz99")
	entity.base =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/robochest-"..mk..".png",
      width = 96,
      height = 96,
      shift = {0, 0}
    }
    entity.door_animation_up =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-door-up-"..mk..".png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.03125, -0.625}
    }
    entity.door_animation_down =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-door-down-"..mk..".png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.03125, 0.03125}
    }
    ::skip2::
	
	entity = data.raw["roboport"][expander[mk]]

	if not entity then goto skip3 end
	log (entity.name.."  zz99")
	entity.base =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/logistic-zone-expander-"..mk..".png",
      width = 136,
      height = 132,
      shift = {1, -0.75}
    }
    entity.base_animation =
    {
      filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
      priority = "medium",
      width = 32,
      height = 32,
      frame_count = 6,
      shift = {0, -2.28125},
      animation_speed = 0.1,
    }
::skip3::	
	
	
	entity = data.raw["roboport"][charger[mk]]

	if not entity then goto skip4 end
	log (entity.name.."  zz99")
	entity.base_animation =
    {
      layers =
      {
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.5, -0.5},
          animation_speed = 0.1,
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.5, -0.5},
          animation_speed = 0.1,
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.5, 0.5},
          animation_speed = 0.1,
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.5, 0.5},
          animation_speed = 0.1,
        },
      }
    }
	::skip4::
	
	
	entity = data.raw["roboport"][chargerL[mk]]
	
	if not entity then goto skip5 end
	log (entity.name.."  zz99")
	entity.base_animation =
    {
      layers =
      {
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {-1, 1},
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {0, 1},  
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {1, 1}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {-1, 0}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {0, 0}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {1, 0}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {-1, -1}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {0, -1}, 
        },
        {
          filename = "__ShinyBobGFX__/graphics/entity/roboport/roboport-chargepad-"..mk..".png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          animation_speed = 0.1,
          shift = {1, -1}, 
        },
      }
    }
	::skip5::
end
		