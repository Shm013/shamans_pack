

function picORES(name,picture,map_color)
		
	if data.raw["resource"][name] then

		data.raw["resource"][name]["stages"] = {
			 sheet =
			 {
			   filename = ShinyBob_path.."/graphics/entity/ores/" .. picture,
			   priority = "extra-high",
			   width = 64,
			   height = 64,
			   frame_count = 8,
			   variation_count = 8,
			 }
		}
		
		if map_color ~= nil then
			data.raw["resource"][name]["map_color"] = map_color
		end
	end
	
end





function setall_icons(all_icons)	

	if settings.startup["switch_green_purple_belts"] then
		if not settings.startup["switch_green_purple_belts"].value then
			all_icons.transportbelts = {}
			all_icons.beltsorter = {}
			all_icons.hackedsplitter = {}
			all_icons.loaders = {}
			all_icons.miniloaders = {}
		end
	end


	if not settings.startup["change_ores"].value then
		all_icons.ores = {}
	end
			
			
			
	for folder,objects in pairs (all_icons) do
		for bottle,things in pairs (all_icons[folder]) do
		
			local name = things[1]
			local picture_org = things[2]
			
			local picture = ""
			local picture_recipe = ""
			
			if things[3] then
				picture_recipe = things[3]
			else
				picture_recipe = picture_org
			end
			
			local item = data.raw["item"][name]
			local recipe = data.raw["recipe"][name]
			
			local folderpath = ShinyBob_path .. "/graphics/icons/"..folder.."/"
			
			
			if picture_org == nil or picture_org == "" then goto skip end

			
			picture		= folderpath..picture_org
			picture_recipe = folderpath..picture_recipe
			
			
			if data.raw["item"][name] then
				overwrite(name,data.raw["item"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["item-with-entity-data"][name] then
				overwrite(name,data.raw["item-with-entity-data"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["mining-tool"][name] then
				overwrite(name,data.raw["mining-tool"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["gun"][name] then
				overwrite(name,data.raw["gun"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["repair-tool"][name] then
				overwrite(name,data.raw["repair-tool"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["tool"][name] then
				overwrite(name,data.raw["tool"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["ammo"][name] then
				overwrite(name,data.raw["ammo"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["armor"][name] then
				overwrite(name,data.raw["armor"][name],recipe,picture,picture_recipe)
							
			elseif data.raw["rail-planner"][name] then
				overwrite(name,data.raw["rail-planner"][name],recipe,picture,picture_recipe)
				
			elseif data.raw["straight-rail"][name] then
				overwrite(name,data.raw["straight-rail"][name],recipe,picture,picture_recipe)

			elseif data.raw["capsule"][name] then
				overwrite(name,data.raw["capsule"][name],recipe,picture,picture_recipe)

			elseif data.raw["module"][name] then
				overwrite(name,data.raw["module"][name],recipe,picture,picture_recipe)

			elseif data.raw["recipe"][name] then
				overwrite(name,data.raw["recipe"][name],recipe,picture,picture_recipe)
			end

			if string.match(folder,"equipment") ~= nil then	
			
				picture = ShinyBob_path .. "/graphics/"..folder.."/" ..picture_org
				
				if data.raw["battery-equipment"][name] then
					overwrite_equip(name,data.raw["battery-equipment"][name],picture)

				elseif data.raw["generator-equipment"][name] then
					overwrite_equip(name,data.raw["generator-equipment"][name],picture)

				elseif data.raw["active-defense-equipment"][name] then
					overwrite_equip(name,data.raw["active-defense-equipment"][name],picture)

				elseif data.raw["roboport-equipment"][name] then
					overwrite_equip(name,data.raw["roboport-equipment"][name],picture)

				elseif data.raw["energy-shield-equipment"][name] then
					overwrite_equip(name,data.raw["energy-shield-equipment"][name],picture)

				elseif data.raw["solar-panel-equipment"][name] then
					overwrite_equip(name,data.raw["solar-panel-equipment"][name],picture)

				elseif data.raw["movement-bonus-equipment"][name] then
					overwrite_equip(name,data.raw["movement-bonus-equipment"][name],picture)

				elseif data.raw["night-vision-equipment"][name] then
					overwrite_equip(name,data.raw["night-vision-equipment"][name],picture)
					
				end
			
			end

			::skip::
		end
	end	
end		


function overwrite(name,item,recipe,picture,picture_recipe)

	
	if item.icon then
		item.icon = picture
	else
		if item.icons then
			item.icons[1].icon = picture
			item.icons[1].tint = nil
		end
	end
	if recipe then
		if recipe.icon then
			recipe.icon = picture_recipe
			recipe.icon_size = 32
		elseif recipe.icons then
			recipe.icons[1].icon = picture_recipe
			recipe.icons[1].tint = nil
		elseif not item.icon then
			table.insert(data.raw.recipe[name],{icon = {},icon_size = {}})
			data.raw.recipe[name].icon = picture_recipe
			data.raw.recipe[name].icon_size = 32
		end
	end
end


function overwrite_equip(name,item,picture)

	item.sprite.filename = picture

end

