function shinybobmenus_change_icon(type,name,icon)

	if type ~= nil and name ~= nil and icon ~= nil then
		if type == "energy-shield-equipment" then
			if data.raw[type][name] then 
				data.raw[type][name].sprite.filename = icon 
			end
		else
			if data.raw[type][name] then 
				data.raw[type][name].icon = icon 
				data.raw[type][name].icon_size = 64 
			
			end
		end
	end
end


				
function sortall(sortorder)
	
	if  data.raw["item-subgroup"]["vehicle-equipment"] and sortorder.locomotive then
		for werewolf,candy in pairs (sortorder.locomotive) do
			if candy[1] == "farl-roboport" or candy[1] == "shuttle-lite" then
				sortorder.locomotive[werewolf][2] = "shinybob-trains-equipment"
			end
		end
	end

	for werewolf,candy in pairs (sortorder) do
		for bottle,llama in pairs (sortorder[werewolf]) do
			local name = llama[1]
			local item = data.raw["item"][name]
			local recipe = data.raw["recipe"][name]
			
			if not data.raw["item-subgroup"][llama[2]] then goto skip end
					
			if data.raw["item"][name] then
				overwrite(name,data.raw["item"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["item-with-entity-data"][name] then
				overwrite(name,data.raw["item-with-entity-data"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["mining-tool"][name] then
				overwrite(name,data.raw["mining-tool"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["gun"][name] then
				overwrite(name,data.raw["gun"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["repair-tool"][name] then
				overwrite(name,data.raw["repair-tool"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["tool"][name] then
				overwrite(name,data.raw["tool"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["ammo"][name] then
				overwrite(name,data.raw["ammo"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["armor"][name] then
				overwrite(name,data.raw["armor"][name],recipe,llama[2],llama[3])
							
			elseif data.raw["rail-planner"][name] then
				overwrite(name,data.raw["rail-planner"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["straight-rail"][name] then
				overwrite(name,data.raw["straight-rail"][name],recipe,llama[2],llama[3])

			elseif data.raw["capsule"][name] then
				overwrite(name,data.raw["capsule"][name],recipe,llama[2],llama[3])

			elseif data.raw["recipe"][name] then
				overwrite(name,data.raw["recipe"][name],recipe,llama[2],llama[3])
			end
			::skip::
		end
	end	
end		


function overwrite(name,item,recipe,subgroup,order)

	item.subgroup = subgroup
	item.order = order
	if recipe ~= nil then
		if recipe.subgroup or recipe.order then
			recipe.subgroup = subgroup
			recipe.order = order

		end
	end
end




