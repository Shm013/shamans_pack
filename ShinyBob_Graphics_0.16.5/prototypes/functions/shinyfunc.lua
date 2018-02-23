
function picACCUMULATORS(name,picture)

	if data.raw["accumulator"][name] then
	
		data.raw["accumulator"][name]["picture"]["filename"] = ShinyBob_path.."/graphics/entity/accumulators/" ..picture
		data.raw["accumulator"][name]["charge_animation"]["filename"] = ShinyBob_path.."/graphics/entity/accumulators/" ..string.sub(picture,0,-5).. "-charge-animation.png"
		data.raw["accumulator"][name]["discharge_animation"]["filename"] = ShinyBob_path.."/graphics/entity/accumulators/" .. string.sub(picture,0,-5).. "-discharge-animation.png"

	end	
	
end


function picASSEMBLINGMACHINES(name,picture,type)

	if data.raw["assembling-machine"][name] then

		if type == 1 then 		
			assembly_machine_1(name,picture,1)
		elseif type == 2 then 	
			assembly_machine_2(name,picture,1)
		elseif type == 3 then	
			assembly_machine_3(name,picture,1)	
		end
		assemblerfluids(name)
	end
	
end


function picBELTS(name,picture)

	if data.raw["transport-belt"][name] then

		data.raw["transport-belt"][name]["animations"]["filename"] 		= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture

		picUNIONBELTS("transport-belt",name,picture)
	end
	
end


function picUNDERGROUNDBELTS(name,picture,beltpic)

	if data.raw["underground-belt"][name] then

		picUNIONBELTS("underground-belt",name,beltpic)
							  
		data.raw["underground-belt"][name]["structure"]["direction_in"]["sheet"]["filename"]  = ShinyBob_path.."/graphics/entity/underground-belts/" ..picture
		data.raw["underground-belt"][name]["structure"]["direction_out"]["sheet"]["filename"] = ShinyBob_path.."/graphics/entity/underground-belts/" ..picture

		data.raw["underground-belt"][name]["structure"]["direction_in"]["sheet"].shift = {0.25, 0}
		data.raw["underground-belt"][name]["structure"]["direction_out"]["sheet"].shift = {0.25, 0}

		data.raw["underground-belt"][name].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
		data.raw["underground-belt"][name].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
		data.raw["underground-belt"][name].ending_patch = ending_patch_prototype

	end
	
end


function picLOADERS(name,picture,beltpic)


	if data.raw["loader"][name] then

		picUNIONBELTS("loader",name,beltpic)
							  
		data.raw["loader"][name]["structure"]["direction_in"]["sheet"]["filename"]  = ShinyBob_path.."/graphics/entity/loaders/" ..picture
		data.raw["loader"][name]["structure"]["direction_out"]["sheet"]["filename"] = ShinyBob_path.."/graphics/entity/loaders/" ..picture

	end
	
end


function picMINILOADERS(name,picture,beltpic)


	if data.raw["loader"][name.. "-loader"] or data.raw["inserter"][name .. "-inserter"] then

		--picUNIONBELTS("loader",name,beltpic)
		data.raw["loader"][name.. "-loader"]["structure"]["direction_in"]["sheet"]["filename"]  = ShinyBob_path.."/graphics/entity/miniloaders/"..string.sub(picture,0,-5).."-cutout.png"
		data.raw["loader"][name.. "-loader"]["structure"]["direction_out"]["sheet"]["filename"] = ShinyBob_path.."/graphics/entity/miniloaders/"..string.sub(picture,0,-5).."-cutout.png"
	end
	
	if  data.raw["inserter"][name .. "-inserter"] then
		data.raw["inserter"][name .. "-inserter"]["platform_picture"]["sheet"]["filename"] = ShinyBob_path.."/graphics/entity/miniloaders/"..picture
	end
	
end


function picSPLITTERS(name,picture,beltpic)

	if data.raw["splitter"][name] then

		picUNIONBELTS("splitter",name,beltpic)
		picSPLITTERSstructure(name,string.sub(picture,0,-5))					  			
				
	end
	
end


function picBOILERS(name,picture)

	if data.raw["boiler"][name] then
	
		picBOILERSstructure(name,picture,"north","-N")	
		picBOILERSstructure(name,picture,"south","-S")	
		picBOILERSstructure(name,picture,"east","-E")	
		picBOILERSstructure(name,picture,"west","-W")	

	end

end


function picBEACONS(name,picture)

	if data.raw["beacon"][name] then

	    data.raw["beacon"][name].fast_replaceable_group = "bacon"
	    data.raw["beacon"][name]["base_picture"] = {
		   filename = ShinyBob_path.."/graphics/entity/beacons/"..string.sub(picture,0,-7).."-base"..string.sub(picture,-6,-1),
		   width = 116,
		   height = 93,
		   shift = { 0.34375, 0.046875}
	    }
	    data.raw["beacon"][name]["animation"] = {
		 filename = ShinyBob_path.."/graphics/entity/beacons/"..string.sub(picture,0,-7).."-antenna"..string.sub(picture,-6,-1),
		 width = 54,
		 height = 50,
		 line_length = 8,
		 frame_count = 32,
		 shift = { -0.03125, -1.71875},
		 animation_speed = 0.5
	    }
	    data.raw["beacon"][name]["animation_shadow"] = {
		 filename = ShinyBob_path.."/graphics/entity/beacons/beacon-antenna-shadow.png",
		 width = 63,
		 height = 49,
		 line_length = 8,
		 frame_count = 32,
		 shift = { 3.140625, 0.484375},
		 animation_speed = 0.5
	    }
	end

end


function picCHEMICALPLANTS(name,picture)

	if data.raw["assembling-machine"][name] then
		data.raw["assembling-machine"][name].animation = make_4way_animation_from_spritesheet({ layers =
		{
		 {
		   filename = ShinyBob_path.."/graphics/entity/chemical-plants/"..picture,
		   width = 122,
		   height = 134,
		   frame_count = 1,
		   shift = util.by_pixel(-5, -4.5),
		 },
		 {
		   filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
		   width = 175,
		   height = 110,
		   frame_count = 1,
		   shift = util.by_pixel(31.5, 11),
		   draw_as_shadow = true,
		 },
		}})

	end
end


function picCHESTS(name,picture)

	if data.raw["logistic-container"][name] then
		data.raw["logistic-container"][name].picture = util.table.deepcopy(data.raw["container"]["steel-chest"].picture)
		data.raw["logistic-container"][name].picture["filename"] = ShinyBob_path.."/graphics/entity/chests/"..picture

	elseif data.raw["container"][name] then
		data.raw["container"][name].picture = util.table.deepcopy(data.raw["container"]["steel-chest"].picture)
		data.raw["container"][name].picture["filename"] = ShinyBob_path.."/graphics/entity/chests/"..picture
		
	end
end



function picELECTRICPOLES(name,picture,groupereplace)

	if data.raw["electric-pole"][name] then
		data.raw["electric-pole"][name].fast_replaceable_group = groupereplace
		data.raw["electric-pole"][name].pictures["filename"] = ShinyBob_path.."/graphics/entity/poles/"..picture
	end


end


function picELECTRONICMACHINES(name,picture,type)

	if data.raw["assembling-machine"][name] then

		if type == 1 then 		
			assembly_machine_1(name,picture,0.67)
		elseif type == 2 then 	
			assembly_machine_2(name,picture,0.67)
		elseif type == 3 then	
			assembly_machine_3(name,picture,0.67)			
		end
		electronicsfluids(name)

	end
	
end


function picELECTROLYSERS(name,picture)

	if data.raw["assembling-machine"][name] then

		data.raw["assembling-machine"][name].animation.north.filename = ShinyBob_path.."/graphics/entity/electrolysers/"..string.sub(picture,0,-7).."-v-t"..string.sub(picture,-5,-5).."u.png"
		data.raw["assembling-machine"][name].animation.south.filename = ShinyBob_path.."/graphics/entity/electrolysers/"..string.sub(picture,0,-7).."-v-t"..string.sub(picture,-5,-5).."d.png"
		data.raw["assembling-machine"][name].animation.east.filename =  ShinyBob_path.."/graphics/entity/electrolysers/"..string.sub(picture,0,-7).."-h-t"..string.sub(picture,-5,-5).."r.png"
		data.raw["assembling-machine"][name].animation.west.filename =  ShinyBob_path.."/graphics/entity/electrolysers/"..string.sub(picture,0,-7).."-h-t"..string.sub(picture,-5,-5).."l.png"

	end


end


function picELECTRICMININGDRILLS(name,picture,speed)

	if data.raw["mining-drill"][name] then

	    data.raw["mining-drill"][name].animations =
	    {
		 north = {
		   priority = "high",
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-N"..string.sub(picture,-6,-1),
		   line_length = 8,
		   width = 98,
		   height = 113,
		   frame_count = 64,
		   animation_speed = speed,
		   direction_count = 1,
		   shift = util.by_pixel(0, -8.5),
		   run_mode = "forward-then-backward",
		 },
		 east = {
		   priority = "high",
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-E"..string.sub(picture,-6,-1),
		   line_length = 8,
		   width = 105,
		   height = 98,
		   frame_count = 64,
		   animation_speed = speed,
		   direction_count = 1,
		   shift = util.by_pixel(3.5, -1),
		   run_mode = "forward-then-backward",
		 },
		 south = {
		   priority = "high",
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-S"..string.sub(picture,-6,-1),
		   line_length = 8,
		   width = 98,
		   height = 109,
		   frame_count = 64,
		   animation_speed = speed,
		   direction_count = 1,
		   shift = util.by_pixel(0, -1.5),
		   run_mode = "forward-then-backward",
		 },
		 west = {
		   priority = "high",
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-W"..string.sub(picture,-6,-1),
		   line_length = 8,
		   width = 105,
		   height = 98,
		   frame_count = 64,
		   animation_speed = speed,
		   direction_count = 1,
		   shift = util.by_pixel(-3.5, -1),
		   run_mode = "forward-then-backward",
		 }
	    }


	end


end


function picLARGEMININGDRILLS(name,picture,speed)

	if data.raw["mining-drill"][name] then

	    data.raw["mining-drill"][name].animations =
	    {
		 north = {
		   priority = "extra-high",
		   width = 110,
		   height = 114,
		   line_length = 4 ,
		   shift = {0.2, -0.2},
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-N"..string.sub(picture,-6,-1),
		   frame_count = 8,
		   animation_speed = speed,
		   run_mode = "forward",
		 },
		 east = {
		   priority = "extra-high",
		   width = 129,
		   height = 100,
		   line_length = 4 ,
		   shift = {0.45, 0},
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-E"..string.sub(picture,-6,-1),
		   frame_count = 8,
		   animation_speed = speed,
		   run_mode = "forward",
		 },
		 south = {
		   priority = "extra-high",
		   width = 109,
		   height = 111,
		   line_length = 4 ,
		   shift = {0.15, 0},
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-S"..string.sub(picture,-6,-1),
		   frame_count = 8,
		   animation_speed = speed,
		   run_mode = "forward",
		 },
		 west = {
		   priority = "extra-high",
		   width = 128,
		   height = 100,
		   line_length = 4 ,
		   shift = {0.25, 0},
		   filename = ShinyBob_path.."/graphics/entity/electric-mining-drills/"..string.sub(picture,0,-7).."-W"..string.sub(picture,-6,-1),
		   frame_count = 8,
		   animation_speed = speed,
		   run_mode = "forward",
	      }
	    }

	end


end


function picINSERTERS(name,color)

	if data.raw["inserter"][name] then

		data.raw["inserter"][name].hand_base_picture =
		{
		   filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-inserter-hand-base.png",
		   priority = "extra-high",
		   width = 8,
		   height = 34,
		}
		data.raw["inserter"][name].platform_picture =
		{
		   sheet =
		   {
			filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-inserter-platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0},
		   }
		}	
		data.raw["inserter"][name].hand_base_shadow =
		{
			filename = ShinyBob_path.."/graphics/entity/inserters/inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		}


		if string.match(name,"stack") ~= nil then

			data.raw["inserter"][name].hand_closed_picture =
			{
			 filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-stack-inserter-hand-closed.png",
			 priority = "extra-high",
			 width = 24,
			 height = 41,
			}
			data.raw["inserter"][name].hand_open_picture =
			{
			 filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-stack-inserter-hand-open.png",
			 priority = "extra-high",
			 width = 32,
			 height = 41,
			}		
			data.raw["inserter"][name].hand_closed_shadow =
			{
			 filename = ShinyBob_path.."/graphics/entity/inserters/stack-inserter-hand-closed-shadow.png",
			 priority = "extra-high",
			 width = 24,
			 height = 41,
			}
			data.raw["inserter"][name].hand_open_shadow =
			{
			 filename = ShinyBob_path.."/graphics/entity/inserters/stack-inserter-hand-open-shadow.png",
			 priority = "extra-high",
			 width = 32,
			 height = 41,
			}
		else
			data.raw["inserter"][name].hand_closed_picture =
			{
			   filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-inserter-hand-closed.png",
			   priority = "extra-high",
			   width = 18,
			   height = 41,
			}
			data.raw["inserter"][name].hand_open_picture =
			{
			   filename = ShinyBob_path.."/graphics/entity/inserters/"..color.."-inserter-hand-open.png",
			   priority = "extra-high",
			   width = 18,
			   height = 41,
			}
			data.raw["inserter"][name].hand_closed_shadow =
			{
				filename = ShinyBob_path.."/graphics/entity/inserters/inserter-hand-closed-shadow.png",
				priority = "extra-high",
				width = 18,
				height = 41
			}
			data.raw["inserter"][name].hand_open_shadow =
			{
				filename = ShinyBob_path.."/graphics/entity/inserters/inserter-hand-open-shadow.png",
				priority = "extra-high",
				width = 18,
				height = 41
			}
		end	

		
	end

end


function picFURNACES(name,picture)

	if data.raw["furnace"][name] then
		data.raw["furnace"][name]["animation"].layers[1]["filename"] = ShinyBob_path.."/graphics/entity/furnaces/" ..picture  
	elseif data.raw["assembling-machine"][name] then
		if data.raw["assembling-machine"][name]["animation"]["layers"] then
			data.raw["assembling-machine"][name]["animation"].layers[1]["filename"] = ShinyBob_path.."/graphics/entity/furnaces/" ..picture  
		else		
			data.raw["assembling-machine"][name]["animation"]["filename"] = ShinyBob_path.."/graphics/entity/furnaces/" ..picture  
		end
	end
end

	
function picFURNACES_4way(name,picture)

	if data.raw["assembling-machine"][name] then
		data.raw["assembling-machine"][name].animation = make_4way_animation_from_spritesheet({ layers =
		{
		 {
			filename = ShinyBob_path.."/graphics/entity/furnaces/"..picture,
			width = 85,
			height = 87,
			frame_count = 1,
			shift = util.by_pixel(-1.5, 1.5),
		 },
		 {
			filename = ShinyBob_path.."/graphics/entity/furnaces/"..string.sub(picture,0,-5).."-shadow.png",
			width = 139,
			height = 43,
			frame_count = 1,
			shift = util.by_pixel(39.5, 11.5),
			draw_as_shadow = true,
		 },
		}})

	end

end


function picGATESWALLS(name,picture)

	if data.raw["gate"][name] then

		    data.raw["gate"][name].vertical_animation.layers[1].filename = 			ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-vertical.png"
		    data.raw["gate"][name].horizontal_animation.layers[1].filename = 			ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-horizontal.png"


		    data.raw["gate"][name].horizontal_rail_animation_left.layers[1].filename = 	ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-horizontal-left.png"
		    data.raw["gate"][name].horizontal_rail_animation_right.layers[1].filename = ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-horizontal-right.png"

		    data.raw["gate"][name].vertical_rail_animation_left.layers[1].filename = 	ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-vertical-left.png"
		    data.raw["gate"][name].vertical_rail_animation_right.layers[1].filename = 	ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-vertical-right.png"

		    data.raw["gate"][name].vertical_rail_base.filename = 					ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-base-vertical.png"
		    data.raw["gate"][name].horizontal_rail_base.filename = 					ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-base-horizontal.png"

		--    data.raw["gate"][name].vertical_rail_base_mask.filename = 				ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-base-mask-vertical.png"    
		--    data.raw["gate"][name].horizontal_rail_base_mask.filename = 			ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-rail-base-mask-horizontal.png"    

		    data.raw["gate"][name].vertical_base.layers[1].filename = 				ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-base-vertical.png"
		    data.raw["gate"][name].horizontal_base.layers[1].filename = 				ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-gate-base-horizontal.png"

		    data.raw["gate"][name].wall_patch.north.layers[1].filename = 			ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-wall-patch-north.png"
		    data.raw["gate"][name].wall_patch.east.layers[1].filename = 				ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-wall-patch-east.png"
		    data.raw["gate"][name].wall_patch.south.layers[1].filename = 			ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-wall-patch-south.png"
		    data.raw["gate"][name].wall_patch.west.layers[1].filename = 				ShinyBob_path.."/graphics/entity/gate-walls/" .. string.sub(picture,0,-5) .. "-wall-patch-west.png"
	end
	
end


function picLABS(name,picture)

	if data.raw["lab"][name] then
	
		resetLABS(name)

		data.raw["lab"][name]["on_animation"].layers[1].filename = ShinyBob_path.."/graphics/entity/labs/" ..picture
		data.raw["lab"][name]["off_animation"].layers[1].filename = ShinyBob_path.."/graphics/entity/labs/" ..picture
	
	end
end


function picOILREFINERYS(name,picture)

	if data.raw["assembling-machine"][name] then

	    data.raw["assembling-machine"][name].animation = make_4way_animation_from_spritesheet({
			  filename = ShinyBob_path.."/graphics/entity/oil-refinerys/"..picture,
			  width = 337,
			  height = 255,
			  frame_count = 1,
			  shift = {2.515625, 0.484375},
		   }
	    )
	end

end


function picORES(name,picture,map_color,frames)
	
	if frames == nil then
		frames = 8
	end
	
	if data.raw["resource"][name] then

		data.raw["resource"][name]["stages"] = {
			 sheet =
			 {
			   filename = ShinyBob_path.."/graphics/entity/ores/" .. picture,
			   priority = "extra-high",
			   width = 64,
			   height = 64,
			   frame_count = frames,
			   variation_count = frames,
			 }
		}
		
		if map_color ~= nil then
			data.raw["resource"][name]["map_color"] = map_color
		end
	end
	
end


function picPIPES(name,folder)
	
	if data.raw["pipe"][name] then

	    data.raw["pipe"][name].pictures = shinypipepictures(folder)
	    data.raw["pipe-to-ground"][name.."-to-ground"]["fluid_box"].pipe_covers = shinycoverpictures(folder)
	    data.raw["pipe-to-ground"][name.."-to-ground"].pictures = shinypipetogroudpictures(folder)

	end

end


function picPUMPS(name,picture,color)
	local type_pumps = {air="air",wat="water"}

	if data.raw["pump"][name] then
	
		resetPUMPS(name)
		data.raw["pump"][name]["animations"]["north"].filename = ShinyBob_path.."/graphics/entity/pumps/" ..string.sub(picture,0,-7).."-north"..string.sub(picture,-6,-1)		
		data.raw["pump"][name]["animations"]["south"].filename = ShinyBob_path.."/graphics/entity/pumps/" ..string.sub(picture,0,-7).."-south"..string.sub(picture,-6,-1)		
		data.raw["pump"][name]["animations"]["west"].filename = ShinyBob_path.."/graphics/entity/pumps/" ..string.sub(picture,0,-7).."-west"..string.sub(picture,-6,-1)		
		data.raw["pump"][name]["animations"]["east"].filename = ShinyBob_path.."/graphics/entity/pumps/" ..string.sub(picture,0,-7).."-east"..string.sub(picture,-6,-1)		

	elseif data.raw["assembling-machine"][name] then
	
		setmaskPUMPS(name,ShinyBob_path.."/graphics/entity/pumps/"..picture,color)
		data.raw["assembling-machine"][name]["fluid_boxes"][1]["pipe_covers"]["north"].filename = ShinyBob_path.."/graphics/entity/pipe-covers/"..type_pumps[string.sub(picture,1,3)].. "-pipe-cover-north.png"
		data.raw["assembling-machine"][name]["fluid_boxes"][2]["pipe_covers"]["north"].filename = ShinyBob_path.."/graphics/entity/pipe-covers/"..type_pumps[string.sub(picture,1,3)].. "-pipe-cover-north.png"
			
	end
	
end


function picPUMPJACKS(name,picture,speed)


	if data.raw["mining-drill"][name] then

		data.raw["mining-drill"][name].base_picture = {
			sheets =
			{
				{
					filename = ShinyBob_path.."/graphics/entity/pumpjacks/"..string.sub(picture,0,-7).."-base.png",
					priority = "extra-high",
					width = 131,
					height = 137,
					shift = util.by_pixel(-2.5, -4.5),
				},
				{
					filename = ShinyBob_path.."/graphics/entity/pumpjacks/pumpjack-base-shadow.png",
					priority = "extra-high",
					width = 110,
					height = 111,
					draw_as_shadow = true,
					shift = util.by_pixel(6, 0.5),
				}
			}
		}
		data.raw["mining-drill"][name].animations = {
			north = {
				layers = {
					{
						priority = "high",
						filename = ShinyBob_path.."/graphics/entity/pumpjacks/"..string.sub(picture,0,-7).."-animation"..string.sub(picture,-6,-1),
						line_length = 8,
						width = 104,
						height = 102,
						frame_count = 40,
						shift = util.by_pixel(-4, -24),
						animation_speed = speed,
					},
					{
						priority = "high",
						filename = ShinyBob_path.."/graphics/entity/pumpjacks/pumpjack-shadow.png",
						animation_speed = speed,
						draw_as_shadow = true,
						line_length = 8,
						width = 155,
						height = 41,
						frame_count = 40,
						shift = util.by_pixel(17.5, 14.5),
					}
				}
			}
		}
		
	end
		
end


function picRADARS(name,picture)

	if data.raw["radar"][name] then
	
		data.raw["radar"][name]["pictures"]["layers"][1]["filename"] = ShinyBob_path.."/graphics/entity/radars/" ..picture
	
	end


end


function picROBOPORTS(name,picture)

	if data.raw["roboport"][name] then

		data.raw["roboport"][name].base = 	{
			 layers =
			 {
			   {
				filename = ShinyBob_path.."/graphics/entity/roboports/" .. string.sub(picture,0,-7).. "-base"..string.sub(picture,-6,-1),
				width = 143,
				height = 135,
				shift = {0.5, 0.25},
			   },
			   {
				filename = ShinyBob_path.."/graphics/entity/roboports/roboport-shadow.png",
				width = 147,
				height = 102,
				draw_as_shadow = true,
				shift = util.by_pixel(28.5, 19.25),
			   }
			 }
		}
				
		data.raw["roboport"][name].base_patch =   {
			filename = ShinyBob_path.."/graphics/entity/roboports/" .. string.sub(picture,0,-7).. "-base-patch"..string.sub(picture,-6,-1),
			priority = "medium",
			width = 69,
			height = 50,
			frame_count = 1,
			shift = {0.03125, 0.203125},
		}

		data.raw["roboport"][name].base_animation = {
			filename = ShinyBob_path.."/graphics/entity/roboports/" .. string.sub(picture,0,-7).. "-base-animation"..string.sub(picture,-6,-1),
			priority = "medium",
			width = 42,
			height = 31,
			frame_count = 8,
			animation_speed = 0.5,
			shift = {-0.5315, -1.9375},
		}

		data.raw["roboport"][name].door_animation_up = {
			filename = ShinyBob_path.."/graphics/entity/roboports/roboport-door-up"..string.sub(picture,-6,-1),
			priority = "medium",
			width = 52,
			height = 20,
			frame_count = 16,
			shift = {0.015625, -0.890625},
		}
		data.raw["roboport"][name].door_animation_down = {
			filename = ShinyBob_path.."/graphics/entity/roboports/roboport-door-down"..string.sub(picture,-6,-1),
			priority = "medium",
			width = 52,
			height = 22,
			frame_count = 16,
			shift = {0.015625, -0.234375},
		}
	end

end


function picROBOPORTSZONEEXPANDERS(name,picture)

	if data.raw["roboport"][name] then

		data.raw["roboport"][name]["base"].filename = 		 ShinyBob_path.."/graphics/entity/roboports/" .. picture
		data.raw["roboport"][name]["base_animation"].filename = ShinyBob_path.."/graphics/entity/roboports/roboport-chargepad"..string.sub(picture,-6,-1)

	end

end


function picROBOPORTSCHARGES(name,picture)

	if data.raw["roboport"][name] then

		for i, layer in ipairs(data.raw["roboport"][name]["base_animation"].layers) do
			layer.filename =  ShinyBob_path.."/graphics/entity/roboports/"..picture
		end
			
	end

end


function picROBOPORTSCHESTS(name,picture)

	if data.raw["roboport"][name] then

		data.raw["roboport"][name]["base"].filename = ShinyBob_path.."/graphics/entity/roboports/" .. picture
				
		data.raw["roboport"][name]["door_animation_up"].filename   = ShinyBob_path.."/graphics/entity/roboports/roboport-door-up"..string.sub(picture,-6,-1)
		data.raw["roboport"][name]["door_animation_down"].filename = ShinyBob_path.."/graphics/entity/roboports/roboport-door-down"..string.sub(picture,-6,-1)

	end

end


function picCONROBOTS(name,picture)

	if data.raw["construction-robot"][name] then
	
		data.raw["construction-robot"][name]["idle"] 			= 	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["idle"])
		data.raw["construction-robot"][name]["in_motion"] 		= 	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["in_motion"])
		data.raw["construction-robot"][name]["working"] 			=	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["working"])
		data.raw["construction-robot"][name]["shadow"] 			= 	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["shadow"])
		data.raw["construction-robot"][name]["shadow_idle"] 		=  	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["shadow_idle"])
		data.raw["construction-robot"][name]["shadow_in_motion"] 	= 	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["shadow_in_motion"])
		data.raw["construction-robot"][name]["shadow_working"] 	= 	util.table.deepcopy(data.raw["construction-robot"]["construction-robot"]["shadow_working"])
								 
		data.raw["construction-robot"][name]["idle"].filename		=	ShinyBob_path.."/graphics/entity/robots/" ..picture 
		data.raw["construction-robot"][name]["in_motion"].filename	=	ShinyBob_path.."/graphics/entity/robots/" ..picture 
		data.raw["construction-robot"][name]["working"].filename	=	ShinyBob_path.."/graphics/entity/robots/" ..string.sub(picture,0,-7).."-working"..string.sub(picture,-6,-1)
								 
	end

end


function picLOGROBOTS(name,picture)

	if data.raw["logistic-robot"][name] then
		data.raw["logistic-robot"][name]["idle"] 						= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["idle"])
		data.raw["logistic-robot"][name]["idle_with_cargo"] 				= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["idle_with_cargo"])
		data.raw["logistic-robot"][name]["in_motion"] 					= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["in_motion"])
		data.raw["logistic-robot"][name]["in_motion_with_cargo"] 			=	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["in_motion_with_cargo"])
		data.raw["logistic-robot"][name]["shadow"] 						= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["shadow"])
		data.raw["logistic-robot"][name]["shadow_idle_with_cargo"] 			=  	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["shadow_idle_with_cargo"])
		data.raw["logistic-robot"][name]["shadow_in_motion"] 				= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["shadow_in_motion"])
		data.raw["logistic-robot"][name]["shadow_in_motion_with_cargo"] 		= 	util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]["shadow_in_motion_with_cargo"])
							 
		data.raw["logistic-robot"][name]["idle"].filename					=	ShinyBob_path.."/graphics/entity/robots/" ..picture
		data.raw["logistic-robot"][name]["idle_with_cargo"].filename		=	ShinyBob_path.."/graphics/entity/robots/" ..picture
		data.raw["logistic-robot"][name]["in_motion"].filename				=	ShinyBob_path.."/graphics/entity/robots/" ..picture
		data.raw["logistic-robot"][name]["in_motion_with_cargo"].filename	=	ShinyBob_path.."/graphics/entity/robots/" ..picture
	end
end


function picSTONEFURNACES_4way(name,picture)

	if data.raw["assembling-machine"][name] then
	
		data.raw["assembling-machine"][name].animation = make_4way_animation_from_spritesheet({ layers =
		{
		 {
		   filename = ShinyBob_path.."/graphics/entity/furnaces/"..picture,
		   priority = "extra-high",
		   width = 94,
		   height = 80,
		   frame_count = 1,
		   shift = {0.25, 0 }
		 },
		}})

	end

end


function picSTORAGETANKS(name,picture)

	if data.raw["storage-tank"][name] then
	
		data.raw["storage-tank"][name]["pictures"]["picture"].sheets[1].filename = ShinyBob_path.."/graphics/entity/storage-tanks/" ..picture
	
	end


end


function picSOLARPANELS(name,picture)

	if data.raw["solar-panel"][name] then

		if data.raw["solar-panel"][name]["picture"]["layers"] then
			data.raw["solar-panel"][name]["picture"]["layers"][1].filename = ShinyBob_path.."/graphics/entity/solar-panels/" ..picture
		else			
			data.raw["solar-panel"][name]["picture"]["filename"] = ShinyBob_path.."/graphics/entity/solar-panels/" ..picture
		end

	end

end


function picSTEAMENGINS(name,picture)

	if data.raw["generator"][name] then
	
		data.raw["generator"][name]["horizontal_animation"].layers[1].filename =  ShinyBob_path.."/graphics/entity/steam-engines/" ..string.sub(picture,0,-7).."-H"..string.sub(picture,-6,-1)
		data.raw["generator"][name]["vertical_animation"].layers[1].filename =  ShinyBob_path.."/graphics/entity/steam-engines/" ..string.sub(picture,0,-7).."-V"..string.sub(picture,-6,-1)

	end
	
end


function picTURBINES(name,picture)

	if data.raw["generator"][name] then
	
		data.raw["generator"][name]["horizontal_animation"].layers[1].filename =  ShinyBob_path.."/graphics/entity/steam-turbines/" ..string.sub(picture,0,-7).."-H"..string.sub(picture,-6,-1)
		data.raw["generator"][name]["vertical_animation"].layers[1].filename =  ShinyBob_path.."/graphics/entity/steam-turbines/" ..string.sub(picture,0,-7).."-V"..string.sub(picture,-6,-1)

	end
	
end




function tintAMMOTURRETS(name,base_tint,gun_tint)
	
	if data.raw["ammo-turret"][name] then
		
		if string.match(name,"sniper") ~= nil then

			data.raw["ammo-turret"][name]["folded_animation"]	= {
				layers =
				{
					laser_turret_extension{frame_count=1, line_length = 1},
					laser_turret_extension_shadow{frame_count=1, line_length=1},
					SBG_laser_turret_extension_mask{frame_count=1, line_length=1,tint = gun_tint}
				}
			}
			
			data.raw["ammo-turret"][name]["preparing_animation"] = {
				layers =
				{
					laser_turret_extension{},
					laser_turret_extension_shadow{},
					SBG_laser_turret_extension_mask{tint = gun_tint}
				}
			}

			
			data.raw["ammo-turret"][name]["folding_animation"] = {
				layers =
				{
					laser_turret_extension{run_mode = "backward"},
					laser_turret_extension_shadow{run_mode = "backward"},
					SBG_laser_turret_extension_mask{run_mode = "backward",tint = gun_tint}
				}
			}

			data.raw["ammo-turret"][name]["prepared_animation"]  = SBG_laser_turret_attack{tint = gun_tint}
			data.raw["ammo-turret"][name]["attacking_animation"] = SBG_laser_turret_attack{tint = gun_tint}

		else
		
			data.raw["ammo-turret"][name]["folded_animation"]	= {
				layers =
				{
					gun_turret_extension{frame_count=1, line_length = 1},
					SBG_gun_turret_extension_mask{frame_count=1, line_length = 1,tint = gun_tint},
					gun_turret_extension_shadow{frame_count=1, line_length = 1}
				}
			}
			data.raw["ammo-turret"][name]["preparing_animation"] = {
				layers =
				{
					gun_turret_extension{},
					SBG_gun_turret_extension_mask{tint = gun_tint},
					gun_turret_extension_shadow{}
				}
			}
			data.raw["ammo-turret"][name]["folding_animation"] = { 
				layers =
				{
					gun_turret_extension{run_mode = "backward"},
					SBG_gun_turret_extension_mask{run_mode = "backward",tint = gun_tint},
					gun_turret_extension_shadow{run_mode = "backward"}
				}
			}

				
			data.raw["ammo-turret"][name]["prepared_animation"]  = SBG_gun_turret_attack{frame_count=1,tint = gun_tint}
			data.raw["ammo-turret"][name]["attacking_animation"] = SBG_gun_turret_attack{tint = gun_tint}

		end
		
		
		data.raw["ammo-turret"][name]["base_picture"] =  SBG_gun_turret_base{tint = base_tint}
		
	end

end

function tintELECTRICTURRETS(name,base_tint,gun_tint,laser)

	if data.raw["electric-turret"][name] then
	
			data.raw["electric-turret"][name]["folded_animation"]	= {
				layers =
				{
					laser_turret_extension{frame_count=1, line_length = 1},
					laser_turret_extension_shadow{frame_count=1, line_length=1},
					SBG_laser_turret_extension_mask{frame_count=1, line_length=1,tint = gun_tint}
				}
			}
			
			data.raw["electric-turret"][name]["preparing_animation"] = {
				layers =
				{
					laser_turret_extension{},
					laser_turret_extension_shadow{},
					SBG_laser_turret_extension_mask{tint = gun_tint}
				}
			}

			
			data.raw["electric-turret"][name]["folding_animation"] = {
				layers =
				{
					laser_turret_extension{run_mode = "backward"},
					laser_turret_extension_shadow{run_mode = "backward"},
					SBG_laser_turret_extension_mask{run_mode = "backward",tint = gun_tint}
				}
			}

			data.raw["electric-turret"][name]["prepared_animation"]  = SBG_laser_turret_attack{tint = gun_tint}
			data.raw["electric-turret"][name]["attacking_animation"] = SBG_laser_turret_attack{tint = gun_tint}
	
			data.raw["electric-turret"][name]["base_picture"] =  SBG_laser_turret_base{tint = base_tint}

           if not data.raw["beam"][laser.lbt_mod] and laser.lbt_mod == "laser-beam-purple" and data.raw["beam"]["laser-beam-yellow"] then
           	data:extend({make_beam_colored(laser.lbt_mod,turret_tint.purple)})
           end

           if data.raw["beam"][laser.lbt_mod] and data.raw["beam"]["laser-beam-yellow"] then
                
           	data.raw["electric-turret"][name]["attack_parameters"]["ammo_type"]["action"]["action_delivery"].beam = laser.lbt_mod            
            
           elseif data.raw["projectile"][laser.bob_mod] then 
            				
			data.raw["electric-turret"][name]["attack_parameters"]["ammo_type"]["action"][1]["action_delivery"][1].projectile = laser.bob_mod
               
            end

	end
end


function tintARTILLERYTURRETS(name,tint)

	local type = "artillery-turret"

	if data.raw[type][name] then
	
		if not data.raw[type][name]["cannon_base_pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["cannon_base_pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["cannon_base_pictures"]["layers"][1].tint=tint
		
		if not data.raw[type][name]["cannon_barrel_pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["cannon_barrel_pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["cannon_barrel_pictures"]["layers"][1].tint=tint
	end


end


function tintCOMBATROBOTS(name,tint,copied_robot)

	if data.raw["combat-robot"][name] then
	
		if not data.raw["combat-robot"][name]["idle"]["layers"] then
			if not copied_robot then goto skip end
			if data.raw["combat-robot"][copied_robot] then
				data.raw["combat-robot"][name]["idle"] = util.table.deepcopy(data.raw["combat-robot"][copied_robot]["idle"])
			end
		end
		if not data.raw["combat-robot"][name]["idle"]["layers"][2].tint then
			table.insert(data.raw["combat-robot"][name]["idle"]["layers"][2],{tint = nil})
		end
		data.raw["combat-robot"][name]["idle"]["layers"][2].tint=tint		
		if data.raw["combat-robot"][name]["idle"]["layers"][2].apply_runtime_tint then
			data.raw["combat-robot"][name]["idle"]["layers"][2].apply_runtime_tint = false
		end



		if not data.raw["combat-robot"][name]["in_motion"]["layers"] then
			if not copied_robot then goto skip end
			if data.raw["combat-robot"][copied_robot] then
				data.raw["combat-robot"][name]["in_motion"] = util.table.deepcopy(data.raw["combat-robot"][copied_robot]["in_motion"])
			end
		end
		if not data.raw["combat-robot"][name]["in_motion"]["layers"][2].tint then
			table.insert(data.raw["combat-robot"][name]["in_motion"]["layers"][2],{tint = nil})
		end
		data.raw["combat-robot"][name]["in_motion"]["layers"][2].tint=tint		
		if data.raw["combat-robot"][name]["in_motion"]["layers"][2].apply_runtime_tint then
			data.raw["combat-robot"][name]["in_motion"]["layers"][2].apply_runtime_tint = false
		end
	
	end
	
	::skip::
	
end


function tintTANKS(name,tint)


	if data.raw["car"][name] then
	
		if data.raw["car"][name]["animation"]["layers"][1].tint then
			data.raw["car"][name]["animation"]["layers"][1] = nil
			data.raw["car"][name]["animation"]["layers"][1] = util.table.deepcopy(data.raw["car"]["tank"]["animation"]["layers"][1])
		end

		if not data.raw["car"][name]["animation"]["layers"][2].tint then
			table.insert(data.raw["car"][name]["animation"]["layers"][2],{tint = nil})
		end
		data.raw["car"][name]["animation"]["layers"][2].tint=tint		
		if data.raw["car"][name]["animation"]["layers"][2].apply_runtime_tint then
			data.raw["car"][name]["animation"]["layers"][2].apply_runtime_tint = false
		end
		
		if data.raw["car"][name]["turret_animation"]["layers"][1].tint then
			data.raw["car"][name]["turret_animation"]["layers"][1] = nil
			data.raw["car"][name]["turret_animation"]["layers"][1] = util.table.deepcopy(data.raw["car"]["tank"]["turret_animation"]["layers"][1])
		end

	end

end



function tintTRAINS(name,tint,tint_mask)

	local type = "locomotive"

	if data.raw[type][name] then
		if not data.raw[type][name]["pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["pictures"]["layers"][1].tint=tint

		if data.raw[type][name].color and tint_mask then
			data.raw[type][name].color = tint_mask
		else
			data.raw[type][name].color =  {r=1,g=1,b=1,a=1}
		end
	end
end


function tintCARGOWAGONS(name,tint)
	
	local type = "cargo-wagon"

	if data.raw[type][name] then
	
		if not data.raw[type][name]["pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["pictures"]["layers"][1].tint=tint

		if data.raw[type][name]["horizontal_doors"]["layers"] then		
			local h_layers = data.raw[type][name]["horizontal_doors"]["layers"]

			for werewolf,candy in pairs (h_layers) do 
				local layer = h_layers[werewolf]
				if not layer.tint then
					table.insert(layer,{tint = {}})
				end
				layer.tint = tint
			end
		end
		
		if data.raw[type][name]["vertical_doors"]["layers"] then
			local v_layers = data.raw[type][name]["vertical_doors"]["layers"]
			for werewolf,candy in pairs (v_layers) do 
				local layer = v_layers[werewolf]
				if not layer.tint then
					table.insert(layer,{tint = {}})
				end
				layer.tint = tint
			end
		end	
		
	end

end


function tintFLUIDWAGONS(name,tint)

	local type = "fluid-wagon"

	if data.raw[type][name] then
		if not data.raw[type][name]["pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["pictures"]["layers"][1].tint=tint
	end

end


function tintARTILLERYWAGONS(name,tint)

	local type = "artillery-wagon"

	if data.raw[type][name] then
	
		if not data.raw[type][name]["cannon_base_pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["cannon_base_pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["cannon_base_pictures"]["layers"][1].tint=tint
		
		if not data.raw[type][name]["cannon_barrel_pictures"]["layers"][1].tint then
			table.insert(data.raw[type][name]["cannon_barrel_pictures"]["layers"][1],{tint = nil})
		end
		data.raw[type][name]["cannon_barrel_pictures"]["layers"][1].tint=tint
	end

end

--------------- EXTRA FUNCTIONS ---------------------


function SBG_gun_turret_extension_mask(inputs)
	return
	{
		filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-mask.png",
--		flags = { "mask" },
		tint = inputs.tint,
		frame_count = inputs.frame_count and inputs.frame_count or 5,
		line_length = inputs.line_length and inputs.line_length or 0,
		width = 24,
		height = 31,
		direction_count = 4,
		axially_symmetrical = false,
		shift = {0, -0.890625},
		run_mode = inputs.run_mode and inputs.run_mode or "forward",
	}
end


function SBG_laser_turret_extension_mask(inputs)
	return
	{
		filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-start-mask.png",
--		flags = { "mask" },
		width = 51,
		height = 47,
		frame_count = inputs.frame_count and inputs.frame_count or 15,
		line_length = inputs.line_length and inputs.line_length or 0,
		run_mode = inputs.run_mode and inputs.run_mode or "forward",
		axially_symmetrical = false,
		direction_count = 4,
		shift = {-0.015625, -1.26563},
		tint = inputs.tint,
	}
end


function SBG_gun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 66,
      height = 64,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0, -0.875},
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-mask.png",
--      flags = { "mask" },
      line_length = inputs.frame_count and inputs.frame_count or 2,
      width = 29,
      height = 27,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.015625, -1.01563},
	 tint = inputs.tint,
    },
    {
      width = 91,
      height = 50,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {1.23438, 0},
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    }
  }
}
end


function SBG_laser_turret_attack(inputs)
return
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
          line_length = 8,
          width = 68,
          height = 68,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {-0.03125, -1}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
          flags = { "mask" },
          line_length = 8,
          width = 54,
          height = 44,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {-0.03125, -1.3125},
          tint = inputs.tint,
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
          line_length = 8,
          width = 88,
          height = 52,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          draw_as_shadow = true,
          shift = {1.5, 0}
        }
      }
    }


end


function SBG_gun_turret_base(inputs)
return
	{
		 layers =
		 {
		   {
			filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
			priority = "high",
			width = 90,
			height = 75,
			axially_symmetrical = false,
			direction_count = 1,
			frame_count = 1,
			shift = {0, -0.046875},
		   },
		   {
			filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
			flags = { "mask" },
			line_length = 1,
			width = 52,
			height = 47,
			axially_symmetrical = false,
			direction_count = 1,
			frame_count = 1,
			shift = {0, -0.234375},
		     tint = inputs.tint,
		   }
		 }
	}

end


function SBG_laser_turret_base(inputs)
return
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          priority = "high",
          width = 98,
          height = 82,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0.015625, 0.03125}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 54,
          height = 46,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {-0.046875, -0.109375},
	     tint = inputs.tint,
        },
      }
    }

end


function picBOILERSstructure(name,picture,orientation,letter)

	if string.sub(name,1,6) == "boiler" then
		data.raw["boiler"][name]["structure"][orientation].layers[1].filename = ShinyBob_path.."/graphics/entity/boilers/" ..string.sub(picture,0,-7)..letter.."-idle"..string.sub(picture,-6,-1)
		data.raw["boiler"][name]["fire"][orientation].filename = ShinyBob_path.."/graphics/entity/boilers/" ..string.sub(picture,0,-7)..letter.."-fire"..string.sub(picture,-6,-1) 		
	else
		data.raw["boiler"][name]["structure"][orientation].layers[1].filename = ShinyBob_path.."/graphics/entity/heat-exchangers/" ..string.sub(picture,0,-7)..letter.."-idle"..string.sub(picture,-6,-1)
	end
	
end


function picUNIONBELTS(type,name,picture)

	if data.raw[type][name] then										

		data.raw[type][name]["belt_horizontal"]["filename"] 	= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["belt_vertical"]["filename"] 	= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["ending_top"]["filename"] 		= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["ending_bottom"]["filename"] 	= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["ending_side"]["filename"] 		= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["starting_top"]["filename"] 		= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["starting_bottom"]["filename"] 	= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		data.raw[type][name]["starting_side"]["filename"] 	= ShinyBob_path.."/graphics/entity/transport-belts/" ..picture
		
	end
	
end


function picSPLITTERSstructure(name,picture)

	if data.raw["splitter"][name]["structure"] then
	
	    data.raw["splitter"][name].structure =
		{
			north =
				{
					filename = ShinyBob_path.."/graphics/entity/splitters/" ..picture.."-north.png",
					frame_count = 32,
					line_length = 16,
					priority = "extra-high",
					width = 83,
					height = 36,
					shift = {0.265625, 0},
				},
			east =
				{
					filename = ShinyBob_path.."/graphics/entity/splitters/" ..picture.."-east.png",
					frame_count = 32,
					line_length = 16,
					priority = "extra-high",
					width = 51,
					height = 80,
					shift = {0.109375, -0.03125},
				},
			south =
				{
					filename = ShinyBob_path.."/graphics/entity/splitters/" ..picture.."-south.png",
					frame_count = 32,
					line_length = 16,
					priority = "extra-high",
					width = 85,
					height = 35,
					shift = {0.140625, -0.015625},
				},
			west =
				{
					filename = ShinyBob_path.."/graphics/entity/splitters/" ..picture.."-west.png",
					frame_count = 32,
					line_length = 16,
					priority = "extra-high",
					width = 51,
					height = 78,
					shift = {0.296875, -0.03125},
				},
		}
		
	end

end


function pipespictures_greenhouse_fix1()
  return
  {
    north =
    {
      filename = ShinyBob_path.."/graphics/entity/greenhouses/pipe-north.png",
      priority = "extra-high",
      width = 64,
      height = 64,
--      shift = util.by_pixel(2.5, 14),
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
    }
  }
end



function pipescovers_greenhouse_fix2()
  return {
    north =
    {
      layers = {
        {
          filename = ShinyBob_path.."/graphics/entity/greenhouses/pipe-north.png",
          priority = "extra-high",
          width = 64,
          height = 64,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
        },
      },
    },
    east =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
        },
      },
    },
    south =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
        },
      },
    },
    west =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
        },
      },
    }
  }
end


function assembly_machine_1(name,picture,scale)
   
    data.raw["assembling-machine"][name].animation =
    {
      layers =
      {
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/".. picture,
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          scale = scale
        },
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/" ..string.sub(picture,0,-5).."-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5-7.5757*(1-scale), 5.5),
          scale = scale
        },
      },
    }

end


function assembly_machine_2(name,picture,scale)

    data.raw["assembling-machine"][name].animation =
    {
      layers =
      {
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/".. picture,
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          scale = scale
        },
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/" ..string.sub(picture,0,-5).."-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12-9.0909*(1-scale), 5),
          scale = scale
        },
      },
    }

end


function assembly_machine_3(name,picture,scale)

    data.raw["assembling-machine"][name].animation =
    {
      layers =
      {
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/".. picture,
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          scale = scale
        },
        {
          filename = ShinyBob_path.."/graphics/entity/assembling-machines/" ..string.sub(picture,0,-5).."-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28-12.1212*(1-scale), 4),
          scale = scale
        },
      },
    }
    
end


function assemblerfluids(name)

    data.raw["assembling-machine"][name].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assemblerpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assemblerpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    }   

end


function electronicsfluids(name)

	if not data.raw["assembling-machine"][name].fluid_boxes then
		table.insert(data.raw["assembling-machine"][name],{fluid_boxes = {}})
	end

    data.raw["assembling-machine"][name].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = electronicpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, -1.5} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = electronicpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, 1.5} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    }   

end


function assemblerpipepictures()
  return
  {
    north =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/assembling-machine-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
    },
    east =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/assembling-machine-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
    },
    south =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/assembling-machine-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
    },
    west =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/assembling-machine-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
    }
  }
end


function electronicpipepictures()
  return
  {
    north =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/electronic-machine-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 23,
      shift = util.by_pixel(2.5, 16),
    },
    east =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/assembling-machine-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
    },
    south =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/electronic-machine-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
    },
    west =
    {
      filename = ShinyBob_path.."/graphics/entity/assembling-machines/electronic-machine-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
    }
  }
end



function resetLABS(name)

	if data.raw["lab"][name] then
	    data.raw["lab"][name]["on_animation"] =
	    {
		 layers =
		 {
		   {
			filename = "__base__/graphics/entity/lab/lab.png",
			width = 98,
			height = 87,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = util.by_pixel(0, 1.5),
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab.png",
			  width = 194,
			  height = 174,
			  frame_count = 33,
			  line_length = 11,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(0, 1.5),
			  scale = 0.5
			}
		   },
		   {
			filename = "__base__/graphics/entity/lab/lab-integration.png",
			width = 122,
			height = 81,
			frame_count = 1,
			line_length = 1,
			repeat_count = 33,
			animation_speed = 1 / 3,
			shift = util.by_pixel(0, 15.5),
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
			  width = 242,
			  height = 162,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 33,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(0, 15.5),
			  scale = 0.5
			}
		   },
		   {
			filename = "__base__/graphics/entity/lab/lab-shadow.png",
			width = 122,
			height = 68,
			frame_count = 1,
			line_length = 1,
			repeat_count = 33,
			animation_speed = 1 / 3,
			shift = util.by_pixel(13, 11),
			draw_as_shadow = true,
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
			  width = 242,
			  height = 136,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 33,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(13, 11),
			  scale = 0.5,
			  draw_as_shadow = true
			}
		   }
		 }
	    }
	    data.raw["lab"][name]["off_animation"] =
	    {
		 layers =
		 {
		   {
			filename = "__base__/graphics/entity/lab/lab.png",
			width = 98,
			height = 87,
			frame_count = 1,
			shift = util.by_pixel(0, 1.5),
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab.png",
			  width = 194,
			  height = 174,
			  frame_count = 1,
			  shift = util.by_pixel(0, 1.5),
			  scale = 0.5
			}
		   },
		   {
			filename = "__base__/graphics/entity/lab/lab-integration.png",
			width = 122,
			height = 81,
			frame_count = 1,
			shift = util.by_pixel(0, 15.5),
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
			  width = 242,
			  height = 162,
			  frame_count = 1,
			  shift = util.by_pixel(0, 15.5),
			  scale = 0.5
			}
		   },
		   {
			filename = "__base__/graphics/entity/lab/lab-shadow.png",
			width = 122,
			height = 68,
			frame_count = 1,
			shift = util.by_pixel(13, 11),
			draw_as_shadow = true,
			hr_version = {
			  filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
			  width = 242,
			  height = 136,
			  frame_count = 1,
			  shift = util.by_pixel(13, 11),
			  draw_as_shadow = true,
			  scale = 0.5
			}
		   }
		 }
	    }
	end
	
end

function resetPUMPS(name)

	if data.raw["pump"][name] then

	    data.raw["pump"][name].animations =
	    {
		 north =
		 {
		   filename = "__base__/graphics/entity/pump/pump-north.png",
		   width = 53,
		   height = 79,
		   line_length =8,
		   frame_count =32,
		   animation_speed = 0.5,
		   shift = util.by_pixel(8.000, 7.500),
		   hr_version = {
			filename = "__base__/graphics/entity/pump/hr-pump-north.png",
			width = 103,
			height = 164,
			scale = 0.5,
			line_length =8,
			frame_count =32,
			animation_speed = 0.5,
			shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
		   },
		 },
		 east =
		 {
		   filename = "__base__/graphics/entity/pump/pump-east.png",
		   width = 66,
		   height = 60,
		   line_length =8,
		   frame_count =32,
		   animation_speed = 0.5,
		   shift = util.by_pixel(0, 4),
		   hr_version = {
			filename = "__base__/graphics/entity/pump/hr-pump-east.png",
			width = 130,
			height = 109,
			scale = 0.5,
			line_length =8,
			frame_count =32,
			animation_speed = 0.5,
			shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
		   },
		 },

		 south =
		 {
		   filename = "__base__/graphics/entity/pump/pump-south.png",
		   width = 62,
		   height = 87,
		   line_length =8,
		   frame_count =32,
		   animation_speed = 0.5,
		   shift = util.by_pixel(13.5, 0.5),
		   hr_version = {
			filename = "__base__/graphics/entity/pump/hr-pump-south.png",
			width = 114,
			height = 160,
			scale = 0.5,
			line_length =8,
			frame_count =32,
			animation_speed = 0.5,
			shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
		   },
		 },
		 west =
		 {
		   filename = "__base__/graphics/entity/pump/pump-west.png",
		   width = 69,
		   height = 51,
		   line_length =8,
		   frame_count =32,
		   animation_speed = 0.5,
		   shift = util.by_pixel(0.5, -0.5),
		   hr_version = {
			filename = "__base__/graphics/entity/pump/hr-pump-west.png",
			width = 131,
			height = 111,
			scale = 0.5,
			line_length =8,
			frame_count =32,
			animation_speed = 0.5,
			shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
		   },
		 },
	    }
	end
	
end


function setmaskPUMPS(name,picture,color)

	if color == nil then
	
		color = tint[tintorder[tonumber(string.sub(picture,-5,-4))]]

	end

		
	if data.raw["assembling-machine"][name] then
		data.raw["assembling-machine"][name].animation = 
			{
				north = 
				{
					layers =
					{
						{
							filename = picture,
							width = 80,
							height = 80,
							frame_count = 8,
							animation_speed = 0.5
						},
						{
							filename = ShinyBob_path.."/graphics/entity/pumps/pump-mask.png",
							width = 80,
							height = 80,
							frame_count = 8,
							tint = tint[color],
							animation_speed = 0.5
						},
					}
				},
				east = 
				{
					layers =
					{
						{
							filename = picture,
							y = 80,
							width = 80,
							height = 80,
							frame_count = 8,
							animation_speed = 0.5
						},
						{
							filename = ShinyBob_path.."/graphics/entity/pumps/pump-mask.png",
							y = 80,
							width = 80,
							height = 80,
							frame_count = 8,
							tint = tint[color],
							animation_speed = 0.5
						},
					}
				},
				south = 
				{
					layers =
					{
						{
							filename = picture,
							y = 160,
							width = 80,
							height = 80,
							frame_count = 8,
							animation_speed = 0.5
						},
						{
							filename = ShinyBob_path.."/graphics/entity/pumps/pump-mask.png",
							y = 160,
							width = 80,
							height = 80,
							frame_count = 8,
							tint = tint[color],
							animation_speed = 0.5
						},
					}
				},
				west = 
				{
					layers =
					{
						{
							filename = picture,
							y = 240,
							width = 80,
							height = 80,
							frame_count = 8,
							animation_speed = 0.5
						},
						{
							filename = ShinyBob_path.."/graphics/entity/pumps/pump-mask.png",
							y = 240,
							width = 80,
							height = 80,
							frame_count = 8,
							tint = tint[color],
							animation_speed = 0.5
						}
					}
				}
			}
	end
	
end


function make_beam_colored(name, color)
  return 
  {
	    type = "beam",
	    name = name,
	    flags = {"not-on-map"},
	    width = 0.5,
	    damage_interval = 20,
	    light = {intensity = 0.5, size = 10},
	    working_sound = {
		 {
		   filename = "__Laser_Beam_Turrets__/laser-beam-01.ogg",
		   volume = 0.9
		 },
		 {
		   filename = "__Laser_Beam_Turrets__/laser-beam-02.ogg",
		   volume = 0.9
		 },
		 {
		   filename = "__Laser_Beam_Turrets__/laser-beam-03.ogg",
		   volume = 0.9
		 }
	    },
	    action = {
		 type = "direct",
		 action_delivery = {
		   type = "instant",
		   target_effects = {
			{
			  type = "damage",
			  damage = {amount = 20, type = "laser"}
			}
		   }
		 }
	    },
	    head = {
		 filename = "__Laser_Beam_Turrets__/laser-beam-head-2.png",
		 line_length = 16,
		 tint = color,
		 frame_count = 12,
		 x = 45 * 4,
		 width = 45,
		 height = 1,
		 priority = "high",
		 animation_speed = 0.5,
		 blend_mode = "additive-soft"
	    },
	    start = {
		 filename = "__Laser_Beam_Turrets__/laser-beam-head-2.png",
		 line_length = 16,
		 tint = color,
		 frame_count = 12,
		 x = 45 * 4,
		 width = 45,
		 height = 1,
		 priority = "high",
		 animation_speed = 0.5,
		 blend_mode = "additive-soft"
	    },
		ending = {
		 filename = "__Laser_Beam_Turrets__/laser-beam-head-2.png",
		 line_length = 16,
		 tint = color,
		 frame_count = 12,
		 x = 45 * 4,
		 width = 45,
		 height = 1,
		 priority = "high",
		 animation_speed = 0.5,
		 blend_mode = "additive-soft"
	    },
	    tail = {
		 filename = "__Laser_Beam_Turrets__/laser-beam-tail-3.png",
		 line_length = 16,
		 tint = color,
		 frame_count = 12,
		 x = 48 * 4,
		 width = 48,
		 height = 24,
		 priority = "high",
		 animation_speed = 0.5,
		 blend_mode = "additive-soft"
	    },
	    body = {
		 {
		   filename = "__Laser_Beam_Turrets__/laser-beam-body-2.png",
		   line_length = 16,
		   tint = color,
		   frame_count = 12,
		   x = 48 * 4,
		   width = 48,
		   height = 24,
		   priority = "high",
		   animation_speed = 0.5,
		   blend_mode = "additive-soft"
		 }
	    }
  }
  
end