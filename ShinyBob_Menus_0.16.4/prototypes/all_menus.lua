

if data.raw["item-group"]["logistics"] then

	if data.raw["item-group"]["bob-logistics"] or data.raw["item-group"]["bob-fluid-products"] or data.raw["item-group"]["bob-resource-products"] then
		shinybobmenus_change_icon("item-group","logistics",ShinyBob_path .."/graphics/icons/menu/logistics.png")
	end
	data:extend({
	---- LOGISTICS

	  { type = "item-subgroup", name = "shinybob-chests1", 			group = "logistics", order = "a-1", },        
	  { type = "item-subgroup", name = "shinybob-chests2", 			group = "logistics", order = "a-2", },        
	
	  { type = "item-subgroup", name = "shinybob-belts", 				group = "logistics", order = "b-1", },        
	  { type = "item-subgroup", name = "shinybob-underground-belts", 	group = "logistics", order = "b-2", },        
	  { type = "item-subgroup", name = "shinybob-splitters", 			group = "logistics", order = "b-3", },        
	  { type = "item-subgroup", name = "shinybob-hacked-splitters", 		group = "logistics", order = "b-4", },        
	  { type = "item-subgroup", name = "shinybob-miniloader",	 		group = "logistics", order = "b-5", },  
	  { type = "item-subgroup", name = "shinybob-loader",		 		group = "logistics", order = "b-6", },  
	  { type = "item-subgroup", name = "shinybob-beltsorter",	 		group = "logistics", order = "b-7", },  
	  
	  { type = "item-subgroup", name = "shinybob-inserter", 			group = "logistics", order = "c-1", },
	  { type = "item-subgroup", name = "shinybob-fast-inserter", 		group = "logistics", order = "c-2", },
	  { type = "item-subgroup", name = "shinybob-stack-inserter", 		group = "logistics", order = "c-3", },
	  
	  { type = "item-subgroup", name = "shinybob-energy-poles", 		group = "logistics", order = "d-1", }, 
	  { type = "item-subgroup", name = "shinybob-energy-substation", 	group = "logistics", order = "d-2", },
	  
	  { type = "item-subgroup", name = "shinybob-rails", 				group = "logistics", order = "e-1", },
	  { type = "item-subgroup", name = "shinybob-trains", 				group = "logistics", order = "e-2", },
	  { type = "item-subgroup", name = "shinybob-wagons1",				group = "logistics", order = "e-2", },
	  { type = "item-subgroup", name = "shinybob-wagons2",				group = "logistics", order = "e-3", },
	  { type = "item-subgroup", name = "shinybob-cars-tanks", 			group = "logistics", order = "e-4", },

	  { type = "item-subgroup", name = "shinybob-network-storage1",   	group = "logistics", order = "f-1",},
	  { type = "item-subgroup", name = "shinybob-network-storage2", 		group = "logistics", order = "f-2",},
	  { type = "item-subgroup", name = "shinybob-network-storage3",   	group = "logistics", order = "f-3",},
	  { type = "item-subgroup", name = "shinybob-network-storage4", 		group = "logistics", order = "f-4",},
	  { type = "item-subgroup", name = "shinybob-network-storage5", 		group = "logistics", order = "f-5",},

	  { type = "item-subgroup", name = "shinybob-circuit-network", 		group = "logistics", order = "i-1",},

	 })
end

if data.raw["item-group"]["bob-logistics"] then

	shinybobmenus_change_icon("item-group","bob-logistics",ShinyBob_path .."/graphics/icons/menu/bobslogistics.png")
	data:extend({
	---- BOB-LOGISTICS
	
	  { type = "item-subgroup", name = "shinybob-storage-tank",			group = "bob-logistics", order = "a-1" },
	  { type = "item-subgroup", name = "shinybob-pump1",				group = "bob-logistics", order = "a-2" },
	  { type = "item-subgroup", name = "shinybob-pump2",				group = "bob-logistics", order = "a-3" },
	  { type = "item-subgroup", name = "shinybob-pipes",				group = "bob-logistics", order = "a-4" },
	  { type = "item-subgroup", name = "shinybob-under-pipes",			group = "bob-logistics", order = "a-5" },

	  { type = "item-subgroup", name = "shinybob-robots-frame",			group = "bob-logistics", order = "f-0" },
	  { type = "item-subgroup", name = "shinybob-robots-brains",		group = "bob-logistics", order = "f-1" },
	  { type = "item-subgroup", name = "shinybob-robots-tools",			group = "bob-logistics", order = "f-2" },
	  { type = "item-subgroup", name = "shinybob-logistic-robots",		group = "bob-logistics", order = "f-3" },    
	  { type = "item-subgroup", name = "shinybob-robots-combat-parts1",	group = "bob-logistics", order = "f-4" },
	  { type = "item-subgroup", name = "shinybob-robots-combat-parts2",	group = "bob-logistics", order = "f-5" },
	  
	  { type = "item-subgroup", name = "shinybob-roboport-parts1",		group = "bob-logistics", order = "h-1" },  
	  { type = "item-subgroup", name = "shinybob-roboport-parts2",		group = "bob-logistics", order = "h-2" },  
	  { type = "item-subgroup", name = "shinybob-roboports",			group = "bob-logistics", order = "h-3" },  
	  { type = "item-subgroup", name = "shinybob-expander",			group = "bob-logistics", order = "h-4" },  
	  { type = "item-subgroup", name = "shinybob-robochests",			group = "bob-logistics", order = "h-5" },  
	  { type = "item-subgroup", name = "shinybob-roboport-extras",		group = "bob-logistics", order = "h-6" },  

	 })
end
	  

if data.raw["item-group"]["production"] then

	if data.raw["item-group"]["bob-logistics"] or data.raw["item-group"]["bob-fluid-products"] or data.raw["item-group"]["bob-resource-products"] then
		shinybobmenus_change_icon("item-group","production",ShinyBob_path .."/graphics/icons/menu/production.png")
	end
	data:extend({
	---- PRODUCTION
	
	  { type = "item-subgroup", name = "shinybob-tool1"						,group = "production", order = "a-1"},      
	  { type = "item-subgroup", name = "shinybob-tool2"						,group = "production", order = "a-2"},      
	  { type = "item-subgroup", name = "shinybob-steam"						,group = "production", order = "c-1"},      
	  { type = "item-subgroup", name = "shinybob-nuke"						,group = "production", order = "c-2"},  
	  { type = "item-subgroup", name = "shinybob-solar"						,group = "production", order = "d-1"},  
	  { type = "item-subgroup", name = "shinybob-accum"						,group = "production", order = "d-2"},      
	  { type = "item-subgroup", name = "shinybob-miner"						,group = "production", order = "e-1"},  
	  { type = "item-subgroup", name = "shinybob-pump-jacks"					,group = "production", order = "e-2"},  
	  { type = "item-subgroup", name = "shinybob-furnace1"						,group = "production", order = "g"},      
	  { type = "item-subgroup", name = "shinybob-furnace2"						,group = "production", order = "h"},  
	  { type = "item-subgroup", name = "shinybob-furnace3"						,group = "production", order = "i"},  	   
	  { type = "item-subgroup", name = "shinybob-others"						,group = "production", order = "j"},        
	  { type = "item-subgroup", name = "shinybob-lab"							,group = "production", order = "k"},        
	  { type = "item-subgroup", name = "shinybob-assembling"					,group = "production", order = "l"},  	   
	  { type = "item-subgroup", name = "shinybob-electro"						,group = "production", order = "m"},  
	  { type = "item-subgroup", name = "shinybob-chem"						,group = "production", order = "n"}, 
	  { type = "item-subgroup", name = "shinybob-oilrefinery"					,group = "production", order = "o"},      
	 
	 })																						    
end																							    


if data.raw["item-group"]["bobmodules"] then

	shinybobmenus_change_icon("item-group","bobmodules",ShinyBob_path .."/graphics/icons/menu/modules.png")
	data:extend({
	---- BOB-MODULES
	
	  { type = "item-subgroup", name = "shinybob-modules0",		 group = "bobmodules", order = "f-0a", }, 
	  { type = "item-subgroup", name = "shinybob-modules1",		 group = "bobmodules", order = "f-0b", }, 
	  { type = "item-subgroup", name = "shinybob-modules2",		 group = "bobmodules", order = "f-0c", }, 
	 
	 })
end


if data.raw["item-group"]["intermediate-products"] then

	if data.raw["item-group"]["bob-logistics"] or data.raw["item-group"]["bob-fluid-products"] or data.raw["item-group"]["bob-resource-products"] then
		shinybobmenus_change_icon("item-group","intermediate-products",ShinyBob_path .."/graphics/icons/menu/intermediate-products.png")
	end
	data:extend({
	---- INTERMEDIATES
	
	  { type = "item-subgroup", name = "shinybob-containers",		 	group = "intermediate-products", order = "a0", }, 
	  { type = "item-subgroup", name = "shinybob-engines",				group = "intermediate-products", order = "a1", },  
	  { type = "item-subgroup", name = "shinybob-rocket-parts",		 	group = "intermediate-products", order = "a2", }, 
	  { type = "item-subgroup", name = "shinybob-nuclear",			 	group = "intermediate-products", order = "a3", }, 
	  { type = "item-subgroup", name = "shinybob-science-pack",			group = "intermediate-products", order = "a4", }, 	
	  { type = "item-subgroup", name = "shinybob-science-pack-alien",	group = "intermediate-products", order = "a5", }, 	
	  { type = "item-subgroup", name = "shinybob-seedlings",			group = "intermediate-products", order = "a6", },  	
	  { type = "item-subgroup", name = "shinybob-treefarm",			group = "intermediate-products", order = "a7", },  	
	  { type = "item-subgroup", name = "shinybob-small-allien-artifacts",	group = "intermediate-products", order = "a8", }, 	
	  { type = "item-subgroup", name = "shinybob-allien-artifacts",		group = "intermediate-products", order = "a9", }, 	
	 																						  		
	 })																						  		
end



if data.raw["item-group"]["bob-fluid-products"] then

	data:extend({
	---- BOBS FLUIDS
	
	  { type = "item-subgroup", name = "shinybob-petrol-fluids",		group = "bob-fluid-products", order = "a-1" },
	  { type = "item-subgroup", name = "shinybob-petrol-sulfur-fluids",	group = "bob-fluid-products", order = "a-2" },
	  { type = "item-subgroup", name = "shinybob-fuels-fluids",		 	group = "bob-fluid-products", order = "a-3" },
	  { type = "item-subgroup", name = "shinybob-sulfur-fluids",		group = "bob-fluid-products", order = "a-4" },
	  { type = "item-subgroup", name = "shinybob-nitrogen-fluids",		group = "bob-fluid-products", order = "a-5" },
	  { type = "item-subgroup", name = "shinybob-pure-water-fluids",		group = "bob-fluid-products", order = "a-6" },
	  { type = "item-subgroup", name = "shinybob-hydrogen-fluids",		group = "bob-fluid-products", order = "a-7" },
	  { type = "item-subgroup", name = "shinybob-chloride-fluids",		group = "bob-fluid-products", order = "a-8" },
	  
	  { type = "item-subgroup", name = "shinybob-loading-bottles",		group = "bob-fluid-products", order = "b-1" },
	  { type = "item-subgroup", name = "shinybob-empty-bottles",		group = "bob-fluid-products", order = "b-2" },

	  { type = "item-subgroup", name = "shinybob-loading-barrels",		group = "bob-fluid-products", order = "b-3" },
	  { type = "item-subgroup", name = "shinybob-empty-barrels",		group = "bob-fluid-products", order = "b-4" },

	  { type = "item-subgroup", name = "shinybob-loading-bob-barrels",	group = "bob-fluid-products", order = "b-5" },
	  { type = "item-subgroup", name = "shinybob-empty-bob-barrels",		group = "bob-fluid-products", order = "b-6" },

	  { type = "item-subgroup", name = "shinybob-loading-alien-barrels",	group = "bob-fluid-products", order = "b-7" },
	  { type = "item-subgroup", name = "shinybob-empty-alien-barrels",	group = "bob-fluid-products", order = "b-8" },
	 

	  { type = "item-subgroup", name = "shinybob-bottles",				group = "bob-fluid-products", order = "c-1" },
	  { type = "item-subgroup", name = "shinybob-barrels",				group = "bob-fluid-products", order = "c-2" },
	  { type = "item-subgroup", name = "shinybob-bob-barrels",			group = "bob-fluid-products", order = "c-3" },
	  { type = "item-subgroup", name = "shinybob-alien-barrels",		group = "bob-fluid-products", order = "c-4" },

	 })
end


if data.raw["item-group"]["bob-resource-products"] then

--	shinybobmenus_change_icon("item-group","bob-resource-products",ShinyBob_path .."/graphics/icons/menu/bobresource.png")
	data:extend({
	---- BOBS MATERIALES
	
	  { type = "item-subgroup", name = "shinybob-ores",		group = "bob-resource-products", order = "a0" },
	  { type = "item-subgroup", name = "shinybob-resource1",	group = "bob-resource-products", order = "a1" },
	  { type = "item-subgroup", name = "shinybob-resource2",	group = "bob-resource-products", order = "a2" },
	  { type = "item-subgroup", name = "shinybob-plates0",		group = "bob-resource-products", order = "a3" },
	  { type = "item-subgroup", name = "shinybob-plates1",		group = "bob-resource-products", order = "a4" },
	  { type = "item-subgroup", name = "shinybob-plates2",		group = "bob-resource-products", order = "a5" },
	  { type = "item-subgroup", name = "shinybob-material1",	group = "bob-resource-products", order = "a6" },
	  { type = "item-subgroup", name = "shinybob-material2",	group = "bob-resource-products", order = "a7" },
	  { type = "item-subgroup", name = "shinybob-material3",	group = "bob-resource-products", order = "a8" },
	 
	 })
end



if data.raw["item-group"]["bob-intermediate-products"] then

	shinybobmenus_change_icon("item-group","bob-intermediate-products",ShinyBob_path .."/graphics/icons/menu/bobintermediates.png")
	data:extend({
	---- BOBS INTERMEDIATES
	
	  { type = "item-subgroup", name = "shinybob-base-ammo",		group = "bob-intermediate-products", order = "a0" },
	  { type = "item-subgroup", name = "shinybob-projectile",		group = "bob-intermediate-products", order = "a1" },
	  { type = "item-subgroup", name = "shinybob-bullets",			group = "bob-intermediate-products", order = "a2" },
	  { type = "item-subgroup", name = "shinybob-warhead",			group = "bob-intermediate-products", order = "a3" },
	  { type = "item-subgroup", name = "shinybob-batteries",		group = "bob-intermediate-products", order = "a4" },
	  { type = "item-subgroup", name = "shinybob-wires",			group = "bob-intermediate-products", order = "a5" },
	  { type = "item-subgroup", name = "shinybob-electronics",		group = "bob-intermediate-products", order = "a6" },
	  { type = "item-subgroup", name = "shinybob-boards",			group = "bob-intermediate-products", order = "a7" },
	  { type = "item-subgroup", name = "shinybob-circuits",		group = "bob-intermediate-products", order = "a8" },
	  { type = "item-subgroup", name = "shinybob-elect-circuits",	group = "bob-intermediate-products", order = "a9" },
	  { type = "item-subgroup", name = "shinybob-gear-wheels",		group = "bob-intermediate-products", order = "aa" },
	  { type = "item-subgroup", name = "shinybob-bearing-balls",	group = "bob-intermediate-products", order = "ab" },
	  { type = "item-subgroup", name = "shinybob-bearings",		group = "bob-intermediate-products", order = "ac" },
	 
	 })
end



if data.raw["item-group"]["combat"] then

	if data.raw["item-group"]["bob-logistics"] or data.raw["item-group"]["bob-fluid-products"] or data.raw["item-group"]["bob-resource-products"] then
		shinybobmenus_change_icon("item-group","combat",ShinyBob_path .."/graphics/icons/menu/combat.png")
	end
	data:extend(	{
	---- BOBS COMBAT

	  { type = "item-subgroup", name = "shinybob-guns",				group = "combat", order = "a0" },
	  { type = "item-subgroup", name = "shinybob-base-magazine",		group = "combat", order = "a1" },
	  { type = "item-subgroup", name = "shinybob-canon-shell",			group = "combat", order = "a2" },
	  { type = "item-subgroup", name = "shinybob-artillery-shell",		group = "combat", order = "a3" },
	  { type = "item-subgroup", name = "shinybob-magazine",			group = "combat", order = "a4" },
	  { type = "item-subgroup", name = "shinybob-shotgun",				group = "combat", order = "a5" },
	  { type = "item-subgroup", name = "shinybob-rocket",				group = "combat", order = "a6" },
	  { type = "item-subgroup", name = "shinybob-laser-rifle",			group = "combat", order = "a7" },
	  { type = "item-subgroup", name = "shinybob-robots-combat-parts3",	group = "combat", order = "a8" },
	  { type = "item-subgroup", name = "shinybob-robots1",				group = "combat", order = "a9" },
	  { type = "item-subgroup", name = "shinybob-mines1",				group = "combat", order = "aa" },
	  { type = "item-subgroup", name = "shinybob-equipment1",			group = "combat", order = "f-a" },
	  { type = "item-subgroup", name = "shinybob-equipment2",			group = "combat", order = "f-b" },
	  { type = "item-subgroup", name = "shinybob-equipment3",			group = "combat", order = "f-c" },
	  { type = "item-subgroup", name = "shinybob-equipment4",			group = "combat", order = "f-d" },
	  { type = "item-subgroup", name = "shinybob-turrets1",			group = "combat", order = "g-a" },
	  { type = "item-subgroup", name = "shinybob-turrets2",			group = "combat", order = "g-b" },
	  { type = "item-subgroup", name = "shinybob-walls",				group = "combat", order = "h-a" },
	  { type = "item-subgroup", name = "shinybob-radars",				group = "combat", order = "i-a" },
	  
	 })
end


				 
if data.raw["item-subgroup"]["vehicle-equipment"] then

	data:extend({
	------ EXTRA BOBS EQUIPMENT

	  { type = "item-group",		name = "shinybob-vehicleequipment",  order = "d-a",  icon = ShinyBob_path .."/graphics/icons/menu/equipment.png",  icon_size = 64},
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-1",  		group = "shinybob-vehicleequipment", order = "a" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-2",  		group = "shinybob-vehicleequipment", order = "b" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-3",  		group = "shinybob-vehicleequipment", order = "c" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-4",  		group = "shinybob-vehicleequipment", order = "d" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-5",  		group = "shinybob-vehicleequipment", order = "e" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-6",  		group = "shinybob-vehicleequipment", order = "d" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-7",  		group = "shinybob-vehicleequipment", order = "e" },
	  { type = "item-subgroup", 	name = "shinybob-bob-vehicleequipment-8",  		group = "shinybob-vehicleequipment", order = "e" },
	  { type = "item-subgroup", 	name = "shinybob-robots1-equipment", 			group = "shinybob-vehicleequipment", order = "f" },
	  { type = "item-subgroup", 	name = "shinybob-robots2-equipment", 			group = "shinybob-vehicleequipment", order = "g" },
	  { type = "item-subgroup", 	name = "shinybob-robots3-equipment", 			group = "shinybob-vehicleequipment", order = "h" },
	  { type = "item-subgroup", 	name = "shinybob-trains-equipment", 			group = "shinybob-vehicleequipment", order = "j" },
	 })
end

				 
if data.raw["item-group"]["bob-gems"] then

	shinybobmenus_change_icon("item-group","bob-gems",ShinyBob_path .."/graphics/icons/menu/bobsgemstones.png")
	data:extend({
	------ BOBS GEMS

	  { type = "item-subgroup", 	name = "shinybob-oregems",  		group = "bob-gems", order = "a" },
	  { type = "item-subgroup", 	name = "shinybob-rawgems",  		group = "bob-gems", order = "b" },
	  { type = "item-subgroup", 	name = "shinybob-cutgems",  		group = "bob-gems", order = "c" },
	  { type = "item-subgroup", 	name = "shinybob-gems",  		group = "bob-gems", order = "d" },
	 })
end


