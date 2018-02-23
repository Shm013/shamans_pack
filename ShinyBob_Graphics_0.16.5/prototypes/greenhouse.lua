--- THIS IS NOT YET READY TO BE "USER FRIENDLY", WAITING FOR BOB TO FIX HIS GREENHOUSE, THIS IS A SIMPLE AND "BAD" PATCH TO MAKE IT WORK, NOT MEANT TO BE PERMANENTE

if data.raw["assembling-machine"]["bob-greenhouse"] then	


	
	data.raw["assembling-machine"]["bob-greenhouse"]["animation"] =
		{
			filename = ShinyBob_path.."/graphics/entity/greenhouses/greenhouse.png",
			width = 113,
			height =101,
			frame_count = 1,
			shift = {0.2, 0},
		}
	data.raw["assembling-machine"]["bob-greenhouse"]["working_visualisations"] =
		{
			{
			light = {intensity = 1, size = 6},
			animation =
			{
				filename = ShinyBob_path.."/graphics/entity/greenhouses/greenhouse-light.png",
				width = 113,
				height = 101,
				frame_count = 1,
				shift = {0.2, 0}
			}
			}
		}

	data.raw["assembling-machine"]["bob-greenhouse"]["fluid_boxes"] = 
		{ 
			{
				production_type = "input",
				pipe_picture = pipespictures_greenhouse_fix1(),
				pipe_covers = pipescovers_greenhouse_fix2(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			}
		}
end
