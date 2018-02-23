
local all_icons = {

	chests = {
						{"wooden-chest"					,""},
						{"iron-chest"						,""},
						{"steel-chest"						,""},
						{"brass-chest"						,"brass-chest.png"},
						{"titanium-chest"					,"titanium-chest.png"},
						{"tungsten-chest"					,""},
						},


	warehouse = {
						{"storehouse-basic"					,""},
						{"warehouse-basic"					,""},
						{"warehouse-passive-provider"			,""},
						{"warehouse-active-provider"			,""},
						{"warehouse-storage"				,""},
						{"warehouse-requester"				,""},
						{"warehouse-buffer"					,""},
						},

	transportbelts = {
						{"transport-belt"					,""},
						{"fast-transport-belt"				,""},
						{"express-transport-belt"			,""},
						{"green-transport-belt"				,"purple-transport-belt.png"},
						{"purple-transport-belt"				,"green-transport-belt.png"},

						{"underground-belt"					,""},
						{"fast-underground-belt"				,""},
						{"express-underground-belt"			,""},
						{"green-underground-belt"			,"purple-underground-belt.png"},
						{"purple-underground-belt"			,"green-underground-belt.png"},

						{"splitter"						,""},
						{"fast-splitter"					,""},
						{"express-splitter"					,""},
						{"green-splitter"					,"purple-splitter.png"},
						{"purple-splitter"					,"green-splitter.png"},
						
						{"single-splitter"					,""},
						},

	beltsorter = {
						{"belt-sorter1"					,""},
						{"belt-sorter2"					,""},
						{"belt-sorter3"					,""},
						{"belt-sorter4"					,""},
						{"belt-sorter5"					,""},
						},

	hackedsplitter = {
						{"hacked-splitter"					,""},
						{"hacked-fast-splitter"				,""},
						{"hacked-express-splitter"			,""},
						{"hacked-green-splitter"				,"hacked-purple-splitter.png"},
						{"hacked-purple-splitter"			,"hacked-green-splitter.png"},
						},

	loaders = {
						{"loader"							,""},
						{"fast-loader"						,""},
						{"express-loader"					,""},
						{"green-loader"					,"purple-loader.png"},
						{"purple-loader"					,"green-loader.png"},
						},

	miniloaders = {
						{"miniloader"						,""},
						{"fast-miniloader"					,""},
						{"express-miniloader"				,"miniloader-3.png"},
						{"green-miniloader"					,"miniloader-4.png"},
						{"purple-miniloader"				,"miniloader-5.png"},

						{"filter-miniloader"				,""},
						{"fast-filter-miniloader"			,""},
						{"express-filter-miniloader"			,"filter-miniloader-3.png"},
						{"green-filter-miniloader"			,"filter-miniloader-4.png"},
						{"purple-filter-miniloader"			,"filter-miniloader-5.png"},
						},

	inserters = {
						{"burner-inserter"					,""},
						{"inserter"						,""},
						{"long-handed-inserter"				,""},

						{"fast-inserter"					,"blue-inserter.png"},
						{"express-inserter"					,"dark-blue-inserter.png"},
						{"filter-inserter"					,"purple.png"},
						{"express-filter-inserter"			,"dark-purple-inserter.png"},

						{"stack-inserter"					,"green-inserter.png"},
						{"express-stack-inserter"			,"dark-green-inserter.png"},
						{"stack-filter-inserter"				,"white-inserter.png"},
						{"express-stack-filter-inserter"		,"darker-inserter.png"},
						},


	poles = {
						{"medium-electric-pole"				,"medium-electric-pole-1.png"},
						{"medium-electric-pole-2"			,"medium-electric-pole-2.png"},
						{"medium-electric-pole-3"			,"medium-electric-pole-3.png"},
						{"medium-electric-pole-4"			,"medium-electric-pole-4.png"},

						{"big-electric-pole"				,"big-electric-pole-1.png"},
						{"big-electric-pole-2"				,"big-electric-pole-2.png"},
						{"big-electric-pole-3"				,"big-electric-pole-3.png"},
						{"big-electric-pole-4"				,"big-electric-pole-4.png"},

						{"small-electric-pole"				,""},

						{"substation"						,"substation-1.png"},
						{"substation-2"					,"substation-2.png"},
						{"substation-3"					,"substation-3.png"},
						{"substation-4"					,"substation-4.png"},
						},							

	railsignaltrainstop = {
						{"rail"							,""},
						{"straight-rail"					,""},
						{"train-stop"						,""},
						{"smart-train-stop"					,""},
						{"logistic-train-stop"				,""},
						{"rail-signal"						,""},
						{"rail-chain-signal"				,""},
						{"train-limit"						,""},
						{"train-unlimit"					,""},
						},

	trains = {
						{"locomotive"						,"locomotive-1.png"},				  
						{"bob-locomotive-2"					,"locomotive-2.png"},				  
						{"bob-locomotive-3"					,"locomotive-3.png"},
						
						{"bob-armoured-locomotive"			,"armoured-locomotive-1.png"},				  
						{"bob-armoured-locomotive-2"			,"armoured-locomotive-2.png"},
						
						{"artillery-wagon"					,"artillery-wagon-1.png"},				  
						{"bob-artillery-wagon-2"				,"artillery-wagon-2.png"},				  
						{"bob-artillery-wagon-3"				,"artillery-wagon-3.png"},				  
						{"shuttleTrain"					,""},				  
						{"farl"							,""},				  
						{"farl-roboport"					,""},				  
						{"shuttle-lite"					,""},				  
						{"crawler-locomotive"				,""},				  
						{"crawler-locomotive-wagon"			,""},				  

						{"cargo-wagon"						,"cargo-wagon-1.png"},
						{"bob-cargo-wagon-2"				,"cargo-wagon-2.png"},
						{"bob-cargo-wagon-3"				,"cargo-wagon-3.png"},
						
						{"bob-armoured-cargo-wagon"			,"armoured-cargo-wagon-1.png"},
						{"bob-armoured-cargo-wagon-2"			,"armoured-cargo-wagon-2.png"},

						{"fluid-wagon"						,"fluid-wagon-1.png"},
						{"bob-fluid-wagon-2"				,"fluid-wagon-2.png"},
						{"bob-fluid-wagon-3"				,"fluid-wagon-3.png"},
						
						{"bob-armoured-fluid-wagon"			,"armoured-fluid-wagon-1.png"},
						{"bob-armoured-fluid-wagon-2"			,"armoured-fluid-wagon-2.png"},
						},		

	tanks = {
						{"car"							,""},
						{"tank"							,"tank-1.png"},
						{"bob-tank-2"						,"tank-2.png"},
						{"bob-tank-3"						,"tank-3.png"},
						{"gunship"						,""},
						{"jet"							,""},
						{"cargo-plane"						,""},
						{"flying-fortress"					,""},
						},
						
	logisticchests = {
						{"logistic-chest-passive-provider"		,""},
						{"logistic-chest-active-provider"		,""},
						{"logistic-chest-storage"			,""},
						{"logistic-chest-requester"			,""},
						{"logistic-chest-buffer"				,""},
						{"logistic-chest-titanium-storage"		,""},
						{"logistic-chest-tungsten-storage"		,""},
						{"logistic-chest-botUpgrader"			,""},

						{"logistic-chest-passive-provider-2"	,"logistic-chest-storage-2.png"},
						{"logistic-chest-active-provider-2"	,"logistic-chest-passive-provider-2.png"},
						{"logistic-chest-storage-2"			,"logistic-chest-requester-2.png"},
						{"logistic-chest-requester-2"			,"logistic-chest-active-provider-2.png"},
						{"logistic-chest-buffer-2"			,"logistic-chest-buffer-2.png"},
																						 
						{"logistic-chest-passive-provider-3"	,"logistic-chest-storage-3.png"},
						{"logistic-chest-active-provider-3"	,"logistic-chest-passive-provider-3.png"},
						{"logistic-chest-storage-3"			,"logistic-chest-requester-3.png"},
						{"logistic-chest-requester-3"			,"logistic-chest-active-provider-3.png"},
						{"logistic-chest-buffer-3"			,"logistic-chest-buffer-3.png"},
						},																 
														
	logisticwarehouse = {
						{"storehouse-passive-provider"		,""},
						{"storehouse-active-provider"			,""},
						{"storehouse-storage"				,""},
						{"storehouse-requester"				,""},
						{"storehouse-buffer"				,""},
												},


	circuitnetwork = {
						{"small-lamp"						,""},
						{"arithmetic-combinator"				,""},
						{"decider-combinator"				,""},
						{"constant-combinator"				,""},
						{"power-switch"					,""},
						{"programmable-speaker"				,""},
						{"roboport-interface"				,""},
						},


--- =======

	storagetanks = {
						{"storage-tank"					,"storage-tank-1.png"},
						{"storage-tank-2"					,"storage-tank-2.png"},
						{"storage-tank-3"					,"storage-tank-3.png"},
						{"storage-tank-4"					,"storage-tank-4.png"},

						{"bob-valve"						,""},
						{"vent-stack"						,""},
						{"flare-stack"						,""},
						{"incinerator"						,""},
						{"electric-incinerator"				,""},
						},

	pumps = {
						{"pump"							,"pump-1.png"},
						{"bob-pump-2"						,"pump-2.png"},
						{"bob-pump-3"						,"pump-3.png"},
						{"bob-pump-4"						,"pump-4.png"},

						{"offshore-pump"					,""},		
						{"air-pump"						,"air-pump-1.png"},		
						{"air-pump-2"						,"air-pump-2.png"},		
						{"air-pump-3"						,"air-pump-3.png"},		
						{"air-pump-4"						,"air-pump-4.png"},		

						{"water-pump"						,"water-pump-1.png"},			   
						{"water-pump-2"					,"water-pump-2.png"},			   
						{"water-pump-3"					,"water-pump-3.png"},			   
						{"water-pump-4"					,"water-pump-4.png"},						
						{"void-pump"						,"void-pump.png"},			   
						},

	pipes = {


						{"brass-pipe"						,""},
						{"bronze-pipe"						,""},
						{"ceramic-pipe"					,""},
						{"copper-pipe"						,""},
						{"plastic-pipe"					,""},
						{"steel-pipe"						,""},
						{"stone-pipe"						,""},
						{"titanium-pipe"					,""},
						{"tungsten-pipe"					,""},
						{"brass-pipe-to-ground"				,""},
						{"bronze-pipe-to-ground"				,""},
						{"ceramic-pipe-to-ground"			,""},
						{"copper-pipe-to-ground"				,""},
						{"plastic-pipe-to-ground"			,""},
						{"steel-pipe-to-ground"				,""},
						{"stone-pipe-to-ground"				,""},
						{"titanium-pipe-to-ground"			,""},
						{"tungsten-pipe-to-ground"			,""},		 

						{"check-valve"						,""},
						{"overflow-valve"					,""},
						{"underflow-valve"					,""},
						{"pipe-elbow"						,""},
						{"pipe-junction"					,""},
						{"pipe-straight"					,""},

						},



	robots = {
						{"flying-robot-frame"				,"flying-robot-frame-1.png"},
						{"flying-robot-frame-2"				,"flying-robot-frame-2.png"},
						{"flying-robot-frame-3"				,"flying-robot-frame-3.png"},
						{"flying-robot-frame-4"				,"flying-robot-frame-4.png"},

						{"robot-brain-construction"			,"robot-brain-construction-1.png"},
						{"robot-brain-construction-2"			,"robot-brain-construction-2.png"},
						{"robot-brain-construction-3"			,"robot-brain-construction-3.png"},
						{"robot-brain-construction-4"			,"robot-brain-construction-4.png"},

						{"robot-brain-logistic"				,"robot-brain-logistic-1.png"},
						{"robot-brain-logistic-2"			,"robot-brain-logistic-2.png"},
						{"robot-brain-logistic-3"			,"robot-brain-logistic-3.png"},
						{"robot-brain-logistic-4"			,"robot-brain-logistic-4.png"},

						{"robot-tool-construction"			,"robot-tool-construction-1.png"},
						{"robot-tool-construction-2"			,"robot-tool-construction-2.png"},
						{"robot-tool-construction-3"			,"robot-tool-construction-3.png"},
						{"robot-tool-construction-4"			,"robot-tool-construction-4.png"},

						{"robot-tool-logistic"				,"robot-tool-logistic-1.png"},
						{"robot-tool-logistic-2"				,"robot-tool-logistic-2.png"},
						{"robot-tool-logistic-3"				,"robot-tool-logistic-3.png"},
						{"robot-tool-logistic-4"				,"robot-tool-logistic-4.png"},						

						{"construction-robot"				,"construction-robot-1.png"},
						{"bob-construction-robot-2"			,"construction-robot-2.png"},
						{"bob-construction-robot-3"			,"construction-robot-3.png"},
						{"bob-construction-robot-4"			,"construction-robot-4.png"},
						{"bob-construction-robot-5"			,"construction-robot-5.png"},

						{"logistic-robot"					,"logistic-robot-1.png"},
						{"bob-logistic-robot-2"				,"logistic-robot-2.png"},
						{"bob-logistic-robot-3"				,"logistic-robot-3.png"},
						{"bob-logistic-robot-4"				,"logistic-robot-4.png"},
						{"bob-logistic-robot-5"				,"logistic-robot-5.png"},

						{"robot-brain-combat"				,"robot-brain-combat-1.png"},
						{"robot-brain-combat-2"				,"robot-brain-combat-2.png"},
						{"robot-brain-combat-3"				,"robot-brain-combat-3.png"},
						{"robot-brain-combat-4"				,"robot-brain-combat-4.png"},												 

						{"robot-tool-combat"				,"robot-tool-combat-1.png"},
						{"robot-tool-combat-2"				,"robot-tool-combat-2.png"},
						{"robot-tool-combat-3"				,"robot-tool-combat-3.png"},
						{"robot-tool-combat-4"				,"robot-tool-combat-4.png"},
						},

	roboports = {
						{"roboport-antenna-1"				,""},
						{"roboport-antenna-2"				,""},
						{"roboport-antenna-3"				,""},
						{"roboport-antenna-4"				,""},
						
						{"roboport-chargepad-1"				,"roboport-chargepad-1.png"},
						{"roboport-chargepad-2"				,"roboport-chargepad-2.png"},
						{"roboport-chargepad-3"				,"roboport-chargepad-3.png"},
						{"roboport-chargepad-4"				,"roboport-chargepad-4.png"},

						{"bob-logistic-zone-expander" 		,"logistic-zone-expander-1.png"},
						{"bob-logistic-zone-expander-2"		,"logistic-zone-expander-2.png"},
						{"bob-logistic-zone-expander-3"		,"logistic-zone-expander-3.png"},
						{"bob-logistic-zone-expander-4"		,"logistic-zone-expander-4.png"},
						
						{"bob-robo-charge-port"  			,"robo-charge-port-1.png"},
						{"bob-robo-charge-port-2"			,"robo-charge-port-2.png"},
						{"bob-robo-charge-port-3"			,"robo-charge-port-3.png"},
						{"bob-robo-charge-port-4"			,"robo-charge-port-4.png"},

						{"roboport-door-1"					,""},
						{"roboport-door-2"					,""},
						{"roboport-door-3"					,""},
						{"roboport-door-4"					,""},

						{"bob-robo-charge-port-large"			,"robo-charge-port-large-1.png"},
						{"bob-robo-charge-port-large-2"		,"robo-charge-port-large-2.png"},
						{"bob-robo-charge-port-large-3"		,"robo-charge-port-large-3.png"},
						{"bob-robo-charge-port-large-4"		,"robo-charge-port-large-4.png"},

						{"bob-robochest"					,"robochest-1.png"},
						{"bob-robochest-2"					,"robochest-2.png"},
						{"bob-robochest-3"					,"robochest-3.png"},
						{"bob-robochest-4"					,"robochest-4.png"},

						{"roboport"						,"roboport-1.png"},
						{"bob-roboport-2"					,"roboport-2.png"},
						{"bob-roboport-3"					,"roboport-3.png"},
						{"bob-roboport-4"					,"roboport-4.png"},

						{"bob-logistic-zone-interface"		,""},
						},
						


---==========================

	tools = {
						{"repair-pack"						,""},
						{"better-repair-pack"				,"better-repair-pack.png"},
						{"iron-axe"						,""},
						{"steel-axe"						,""},
						{"brass-axe"						,""},
						{"cobalt-axe"						,""},
						{"titanium-axe"					,""},
						{"tungsten-axe"					,""},
						{"diamond-axe"						,""},

						{"ping-tool"						,""},
						{"module-inserter"					,""},
						{"resource-monitor"					,""},
						{"gun-nano-emitter"					,""},
						{"ammo-nano-constructors"			,""},
						{"ammo-nano-termites"				,""},
						{"upgrade-builder"					,""},
						{"upgrade-builder2"					,""},
						{"magnet"							,""},
						{"reverse-factory"					,""},
						{"easy-copy-tool"					,""},

						},
						
	steamengines = {
						{"steam-engine"					,"steam-engine-1.png"},
						{"steam-engine-2"					,"steam-engine-2.png"},
						{"steam-engine-3"					,"steam-engine-3.png"},
						},
						
	boilers = {
						{"boiler"							,"boiler-1.png"},
						{"boiler-2"						,"boiler-2.png"},
						{"boiler-3"						,"boiler-3.png"},
						{"boiler-4"						,"boiler-4.png"},														
						},
						
	steamturbines = {
						{"steam-turbine"					,"steam-turbine-1.png"},
						{"steam-turbine-2"					,"steam-turbine-2.png"},
						{"steam-turbine-3"					,"steam-turbine-3.png"},
						},
						
	heatexchangers = {
						{"heat-exchanger"					,"heat-exchanger-1.png"},
						{"heat-exchanger-2"					,"heat-exchanger-2.png"},
						{"heat-exchanger-3"					,"heat-exchanger-3.png"},
						},
						
	nuclear = {
						{"nuclear-fuel"					,""},		    
						{"uranium-fuel-cell"				,""},		    
						{"used-up-uranium-fuel-cell"			,""},		    
						{"nuclear-fuel-reprocessing"			,""},		    
						{"uranium-processing"				,""},		    
						{"kovarex-enrichment-process"			,""},		    
						{"uranium-235"						,""},
						{"uranium-238"						,""},
						{"centrifuge"						,""},
						{"heat-pipe"						,""},
						{"nuclear-reactor"					,""},
						},
						
	solarpanels = {
														
						{"solar-panel"						,"solar-panel-1.png"},
						{"solar-panel-2"					,"solar-panel-2.png"},
						{"solar-panel-3"					,"solar-panel-3.png"},
						{"solar-panel-small"				,"solar-panel-small-1.png"},
						{"solar-panel-small-2"				,"solar-panel-small-2.png"},
						{"solar-panel-small-3"				,"solar-panel-small-3.png"},
						{"solar-panel-large"				,"solar-panel-large-1.png"},
						{"solar-panel-large-2"				,"solar-panel-large-2.png"},
						{"solar-panel-large-3"				,"solar-panel-large-3.png"},
						
						},
						
	accumulators = {
						{"accumulator"						,"accumulator.png"},
						{"fast-accumulator"					,"fast-accumulator-1.png"},
						{"fast-accumulator-2"				,"fast-accumulator-2.png"},
						{"fast-accumulator-3"				,"fast-accumulator-3.png"},
						{"large-accumulator"				,"large-accumulator-1.png"},
						{"large-accumulator-2"				,"large-accumulator-2.png"},
						{"large-accumulator-3"				,"large-accumulator-3.png"},
						{"slow-accumulator"					,"slow-accumulator-1.png"},
						{"slow-accumulator-2"				,"slow-accumulator-2.png"},
						{"slow-accumulator-3"				,"slow-accumulator-3.png"},
						
						},
						
	miningdrills = {
						{"burner-mining-drill"				,""},
						{"electric-mining-drill"				,"electric-mining-drill.png"},
						{"bob-mining-drill-1"				,"mining-drill-1.png"},
						{"bob-mining-drill-2"				,"mining-drill-2.png"},
						{"bob-mining-drill-3"				,"mining-drill-3.png"},
						{"bob-mining-drill-4"				,"mining-drill-4.png"},
						
						{"bob-area-mining-drill-1"			,"area-mining-drill-1.png"},
						{"bob-area-mining-drill-2"			,"area-mining-drill-2.png"},
						{"bob-area-mining-drill-3"			,"area-mining-drill-3.png"},
						{"bob-area-mining-drill-4"			,"area-mining-drill-4.png"},
						
						},
						
	pumpjacks = {
						{"pumpjack"						,"pumpjack-1.png"},
						{"bob-pumpjack-1"					,"pumpjack-2.png"},
						{"bob-pumpjack-2"					,"pumpjack-3.png"},
						{"bob-pumpjack-3"					,"pumpjack-4.png"},
						{"bob-pumpjack-4"					,"pumpjack-5.png"},
						{"water-miner-1"					,"water-miner-1.png"},
						{"water-miner-2"					,"water-miner-2.png"},
						{"water-miner-3"					,"water-miner-3.png"},
						{"water-miner-4"					,"water-miner-4.png"},
						{"water-miner-5"					,"water-miner-5.png"},
						
						},
						
	stonefurnaces = {
						{"stone-furnace"					,"stone-furnace.png"},
						{"chemical-boiler"					,"stone-chemical-furnace.png"},
						{"mixing-furnace"					,"stone-mixing-furnace.png"},
						
						},
						
	furnaces = {
						{"steel-furnace"					,"steel-furnace.png"},
						{"electric-furnace"					,"yellow-electric-furnace.png"},
						{"electric-furnace-2"				,"purple-electric-furnace.png"},
						{"electric-furnace-3"				,"green-electric-furnace.png"},

						{"chemical-steel-furnace"			,"steel-furnace-chem.png"},
						{"chemical-furnace"					,"red-electric-furnace.png"},
						{"electric-chemical-mixing-furnace"	,"purple-multi-electric-furnace.png"},
						{"electric-chemical-mixing-furnace-2"	,"green-multi-electric-furnace.png"},
						
						{"mixing-steel-furnace"				,"steel-furnace-mixer.png"},
						{"electric-mixing-furnace"			,"blue-electric-furnace.png"},
												
						},
						
	labs = {
						{"lab"							,"lab-1.png"},
						{"lab-2"							,"lab-2.png"},
						{"lab-module"						,"lab-module-1.png"},
						{"lab-alien"						,"lab-alien-1.png"},
						},
						
	assemblingmachines = {
						
						{"assembling-machine-1"				,"assembling-machine-1.png"},
						{"assembling-machine-2"				,"assembling-machine-2.png"},
						{"assembling-machine-3"				,"assembling-machine-3.png"},
						{"assembling-machine-4"				,"assembling-machine-4.png"},
						{"assembling-machine-5"				,"assembling-machine-5.png"},
						{"assembling-machine-6"				,"assembling-machine-6.png"},
						{"electronics-machine-1"				,"electronics-machine-1.png"},	
						{"electronics-machine-2"				,"electronics-machine-2.png"},	
						{"electronics-machine-3"				,"electronics-machine-3.png"},	
						
						},
						
	electrolysers = {
						{"electrolyser"					,"electrolyser-1.png"},
						{"electrolyser-2"					,"electrolyser-2.png"},
						{"electrolyser-3"					,"electrolyser-3.png"},
						{"electrolyser-4"					,"electrolyser-4.png"},

						},
						
	chemicalplants = {
						{"chemical-plant"					,"chemical-plant-1.png"},
						{"chemical-plant-2"					,"chemical-plant-2.png"},
						{"chemical-plant-3"					,"chemical-plant-3.png"},
						{"chemical-plant-4"					,"chemical-plant-4.png"},

						},
						
	oilrefinerys = {
						{"oil-refinery"					,"oil-refinery-1.png"},
						{"oil-refinery-2"					,"oil-refinery-2.png"},
						{"oil-refinery-3"					,"oil-refinery-3.png"},
						{"oil-refinery-4"					,"oil-refinery-4.png"},
						},


---=====================


	modules = {
						{"module-case"						,"module-case.png"},
						{"module-contact"					,"module-contact.png"},		    
						{"module-circuit-board"				,"module-circuit-board.png"},
												
						{"module-processor-board" 			,"module-processor-board.png" },
						{"module-processor-board-2"			,"module-processor-board-2.png"},
						{"module-processor-board-3"			,"module-processor-board-3.png"},
						
						{"speed-processor"		 			,"speed-processor.png"},		    
						{"speed-processor-2"				,"speed-processor-2.png"},		    
						{"speed-processor-3"				,"speed-processor-3.png"},
														  
						{"effectivity-processor" 			,"effectivity-processor.png"},		    
						{"effectivity-processor-2"			,"effectivity-processor-2.png"},		    
						{"effectivity-processor-3"			,"effectivity-processor-3.png"},		    

						{"productivity-processor"  			,"productivity-processor.png"},
						{"productivity-processor-2"			,"productivity-processor-2.png"},
						{"productivity-processor-3"			,"productivity-processor-3.png"},
						
						{"pollution-clean-processor"			,"pollution-clean-processor.png"},
						{"pollution-clean-processor-2"		,"pollution-clean-processor-2.png"},
						{"pollution-clean-processor-3"		,"pollution-clean-processor-3.png"},
						
						{"pollution-create-processor" 		,"pollution-create-processor.png"},
						{"pollution-create-processor-2"		,"pollution-create-processor-2.png"},
						{"pollution-create-processor-3"		,"pollution-create-processor-3.png"},

						{"speed-module" 					,"speed-module-1.png"},
						{"speed-module-2"					,"speed-module-2.png"},
						{"speed-module-3"					,"speed-module-3.png"},		    
						{"speed-module-4"					,"speed-module-4.png"},
						{"speed-module-5"					,"speed-module-5.png"},		    
						{"speed-module-6"					,"speed-module-6.png"},
						{"speed-module-7"					,"speed-module-7.png"},		    
						{"speed-module-8"					,"speed-module-8.png"},

						{"effectivity-module" 				,"effectivity-module-1.png"},
						{"effectivity-module-2"				,"effectivity-module-2.png"},
						{"effectivity-module-3"				,"effectivity-module-3.png"},		    
						{"effectivity-module-4"				,"effectivity-module-4.png"},
						{"effectivity-module-5"				,"effectivity-module-5.png"},		    
						{"effectivity-module-6"				,"effectivity-module-6.png"},
						{"effectivity-module-7"				,"effectivity-module-7.png"},		    
						{"effectivity-module-8"				,"effectivity-module-8.png"},

						{"productivity-module" 				,"productivity-module-1.png"},
						{"productivity-module-2"				,"productivity-module-2.png"},
						{"productivity-module-3"				,"productivity-module-3.png"},		    
						{"productivity-module-4"				,"productivity-module-4.png"},
						{"productivity-module-5"				,"productivity-module-5.png"},		    
						{"productivity-module-6"				,"productivity-module-6.png"},
						{"productivity-module-7"				,"productivity-module-7.png"},		    
						{"productivity-module-8"				,"productivity-module-8.png"},
	
						{"pollution-clean-module-1" 			,"pollution-clean-module-1.png"},
						{"pollution-clean-module-2"			,"pollution-clean-module-2.png"},
						{"pollution-clean-module-3"			,"pollution-clean-module-3.png"},		    
						{"pollution-clean-module-4"			,"pollution-clean-module-4.png"},
						{"pollution-clean-module-5"			,"pollution-clean-module-5.png"},		    
						{"pollution-clean-module-6"			,"pollution-clean-module-6.png"},
						{"pollution-clean-module-7"			,"pollution-clean-module-7.png"},		    
						{"pollution-clean-module-8"			,"pollution-clean-module-8.png"},
	
						{"pollution-create-module-1" 			,"pollution-create-module-1.png"},
						{"pollution-create-module-2"			,"pollution-create-module-2.png"},
						{"pollution-create-module-3"			,"pollution-create-module-3.png"},		    
						{"pollution-create-module-4"			,"pollution-create-module-4.png"},
						{"pollution-create-module-5"			,"pollution-create-module-5.png"},		    
						{"pollution-create-module-6"			,"pollution-create-module-6.png"},
						{"pollution-create-module-7"			,"pollution-create-module-7.png"},		    
						{"pollution-create-module-8"			,"pollution-create-module-8.png"},

						{"raw-speed-module-1" 				,"cyan-module-1.png"},
						{"raw-speed-module-2"				,"cyan-module-2.png"},
						{"raw-speed-module-3"				,"cyan-module-3.png"},		    
						{"raw-speed-module-4"				,"cyan-module-4.png"},
						{"raw-speed-module-5"				,"cyan-module-5.png"},		    
						{"raw-speed-module-6"				,"cyan-module-6.png"},
						{"raw-speed-module-7"				,"cyan-module-7.png"},		    
						{"raw-speed-module-8"				,"cyan-module-8.png"},

						{"green-module-1" 					,"yellow-module-1.png"},
						{"green-module-2"					,"yellow-module-2.png"},
						{"green-module-3"					,"yellow-module-3.png"},		    
						{"green-module-4"					,"yellow-module-4.png"},
						{"green-module-5"					,"yellow-module-5.png"},		    
						{"green-module-6"					,"yellow-module-6.png"},
						{"green-module-7"					,"yellow-module-7.png"},		    
						{"green-module-8"					,"yellow-module-8.png"},

						{"raw-productivity-module-1" 			,"red-module-1.png"},
						{"raw-productivity-module-2"			,"red-module-2.png"},
						{"raw-productivity-module-3"			,"red-module-3.png"},		    
						{"raw-productivity-module-4"			,"red-module-4.png"},
						{"raw-productivity-module-5"			,"red-module-5.png"},		    
						{"raw-productivity-module-6"			,"red-module-6.png"},
						{"raw-productivity-module-7"			,"red-module-7.png"},		    
						{"raw-productivity-module-8"			,"red-module-8.png"},

						{"god-module-1" 					,"god-module-1.png"},
						{"god-module-2"					,"god-module-2.png"},
						{"god-module-3"					,"god-module-3.png"},		    
						{"god-module-4"					,"god-module-4.png"},
						{"god-module-5"					,"god-module-5.png"},		    
						},

	beacons = {
		
						{"beacon" 						,"beacon-1.png"},
						{"beacon-2"						,"beacon-2.png"},
						{"beacon-3"						,"beacon-3.png"},		    
						},


---=====================


	intermediates = {
						{"empty-barrel"					,""},
						{"gas-canister"					,""},
						{"empty-canister"					,""},		    

						{"solid-fuel"						,""},
						{"enriched-fuel"					,"enriched-fuel.png"},
						{"iron-stick"						,""},
						{"engine-unit"						,""},
						{"electric-engine-unit"				,""},		    

						{"rocket-fuel"						,""},		    
						{"low-density-structure"				,""},		    
						{"rocket-control-unit"				,""},		    
						{"rocket-part"						,""},
						{"satellite"						,""},


						},

	sciencepacks = {
						{"science-pack-1"					,""},		    
						{"science-pack-2"					,""},		    
						{"science-pack-3"					,""},		    
						{"logistic-science-pack"				,""},		    
						{"production-science-pack"			,""},		    
						{"high-tech-science-pack"			,""},		    
						{"science-pack-gold"				,""},		    
						{"military-science-pack"				,""},		    
						{"space-science-pack"				,""},		    

						{"alien-science-pack-red"			,""},		    
						{"alien-science-pack-green"			,""},		    
						{"alien-science-pack-blue"			,""},						
						{"alien-science-pack"				,""},									
						{"alien-science-pack-purple"			,""},
						{"alien-science-pack-yellow"			,""},
						{"alien-science-pack-orange"			,""},		    

						},

	greenhouses = {
						{"bob-greenhouse"					,""},
						{"bob-basic-greenhouse-cycle"   		,"seedling-wood.png"},		    
						{"bob-advanced-greenhouse-cycle"   	,"seedling-fertilizer-wood.png"},		    
						{"seedling"	  					,"seedling.png"},		    
						{"fertiliser"						,"fertiliser-barrel.png"},

						},

	alienartifacts = {
						{"small-alien-artifact"   	  		,""},		    
						{"small-alien-artifact-red"	  		,""},		    
						{"small-alien-artifact-orange"		,""},						
						{"small-alien-artifact-yellow"		,""},
						{"small-alien-artifact-green" 		,""},		    
						{"small-alien-artifact-blue"  		,""},
						{"small-alien-artifact-purple"		,""},

						{"alien-artifact"   				,""},		    
						{"alien-artifact-red"				,""},		    
						{"alien-artifact-orange"				,""},						
						{"alien-artifact-yellow"				,""},
						{"alien-artifact-green" 				,""},		    
						{"alien-artifact-blue"  				,""},
						{"alien-artifact-purple"				,""},

						},

																						    
---=====================
	fluids = {
						{"basic-oil-processing"				,"basic-oil-processing.png"},
						{"advanced-oil-processing"			,"advanced-oil-processing.png"},
						{"bob-oil-processing"				,"bob-oil-processing.png"},
														
						{"coal-liquefaction"				,"coal-liquefaction.png"},
						{"coal-cracking"					,""},
						{"heavy-oil-cracking"				,""},
						{"light-oil-cracking"				,""},
						{"petroleum-gas-cracking"			,""},
						{"lubricant"						,""},
						{"liquid-fuel"						,""},
														
						{"oil-processing-with-sulfur"			,"oil-processing-with-sulfur.png"},
						{"oil-processing-with-sulfur-dioxide"	,"oil-processing-with-sulfur-dioxide-1.png"},
						{"oil-processing-with-sulfur-dioxide-2"	,"oil-processing-with-sulfur-dioxide-2.png"},
						{"oil-processing-with-sulfur-dioxide-3"	,"oil-processing-with-sulfur-dioxide-3.png"},
						
						{"solid-fuel-from-heavy-oil"			,"solid-fuel-from-heavy-oil.png"},
						{"solid-fuel-from-light-oil"			,"solid-fuel-from-light-oil.png"},
						{"solid-fuel-from-petroleum-gas"		,"solid-fuel-from-petroleum-gas.png"},
						{"solid-fuel-from-hydrogen"			,"solid-fuel-from-hydrogen.png"},
						{"enriched-fuel-from-liquid-fuel"		,"enriched-fuel-from-liquid-fuel.png"},
						{"enriched-fuel-from-hydrazine"		,"enriched-fuel-from-hydrazine.png"},

						{"sulfur-dioxide"					,""},
						{"sulfuric-acid"					,""},
						{"sulfuric-acid-2"					,""},

						{"bob-liquid-air"					,""},
						{"nitrogen" 						,"nitrogen-recipe.png"},
						{"ammonia" 						,""},
						{"nitric-oxide"					,""},
						{"nitrogen-dioxide" 				,""},
						{"nitric-acid" 					,""},
						{"sulfuric-nitric-acid" 				,""},
						{"nitroglycerin" 					,""},
						{"glycerol" 						,""},
														

						{"pure-water"						,""},
						{"pure-water-pump"					,""},
						{"pure-water-from-lithia" 			,""},


						{"lithium-water-electrolysis"			,"lithium-water-electrolysis.png"},
						{"water-electrolysis" 				,"water-electrolysis2.png"},
						{"hydrogen-peroxide" 				,""},
						{"hydrazine" 						,""},
						{"dinitrogen-tetroxide"				,""},
														
						{"salt-water-electrolysis"			,"salt-water-electrolysis.png"},
						{"hydrogen-chloride"				,""},
						{"tungstic-acid"					,"tungstic-acid-recipe.png"},
						{"ferric-chloride-solution"			,""},

						},

	barreling = {
						{"fill-ammonia-barrel"				,""},
						{"fill-chlorine-barrel"				,""},
						{"fill-hydrogen-barrel"				,""},
						{"fill-hydrogen-chloride-barrel"		,""},
						{"fill-nitric-oxide-barrel"			,""},
						{"fill-nitrogen-barrel"				,""},
						{"fill-nitrogen-dioxide-barrel"		,""},
						{"fill-oxygen-barrel"				,""},
						{"fill-petroleum-gas-barrel"			,""},
						{"fill-sulfur-dioxide-barrel"			,""},

						{"empty-ammonia-barrel"				,""},
						{"empty-chlorine-barrel"				,""},
						{"empty-hydrogen-barrel"				,""},
						{"empty-hydrogen-chloride-barrel"		,""},
						{"empty-nitric-oxide-barrel"			,""},
						{"empty-nitrogen-barrel"				,""},
						{"empty-nitrogen-dioxide-barrel"		,""},
						{"empty-oxygen-barrel"				,""},
						{"empty-petroleum-gas-barrel"			,""},
						{"empty-sulfur-dioxide-barrel"		,""},
						
						{"fill-crude-oil-barrel"				,""},
						{"fill-heavy-oil-barrel"				,""},
						{"fill-light-oil-barrel"				,""},
						{"fill-lubricant-barrel"				,""},
						{"fill-water-barrel"				,""},
						{"fill-lithia-water-barrel"			,""},
						{"fill-ferric-chloride-solution-barrel"	,""},
						{"fill-liquid-fuel-barrel"			,"fill-liquid-fuel-barrel.png"},
													  
						{"empty-crude-oil-barrel"			,""},
						{"empty-heavy-oil-barrel"			,""},
						{"empty-light-oil-barrel"			,""},
						{"empty-lubricant-barrel"			,""},
						{"empty-water-barrel"				,""},
						{"empty-lithia-water-barrel"			,""},
						{"empty-ferric-chloride-solution-barrel",""},
						{"empty-liquid-fuel-barrel"			,"empty-liquid-fuel-barrel.png"},
						
						{"fill-dinitrogen-tetroxide-barrel"	,""},
						{"fill-glycerol-barrel"				,""},
						{"fill-hydrazine-barrel"				,""},
						{"fill-hydrogen-peroxide-barrel"		,""},
						{"fill-nitric-acid-barrel"			,""},
						{"fill-nitroglycerin-barrel"			,""},
						{"fill-pure-water-barrel"			,""},
						{"fill-sulfuric-acid-barrel"			,""},
						{"fill-sulfuric-nitric-acid-barrel"	,""},
						{"fill-tungstic-acid-barrel"			,""},

						{"empty-dinitrogen-tetroxide-barrel"	,""},
						{"empty-glycerol-barrel"				,""},
						{"empty-hydrazine-barrel"			,""},
						{"empty-hydrogen-peroxide-barrel"		,""},
						{"empty-nitric-acid-barrel"			,""},
						{"empty-nitroglycerin-barrel"			,""},
						{"empty-pure-water-barrel"			,""},
						{"empty-sulfuric-acid-barrel"			,""},
						{"empty-sulfuric-nitric-acid-barrel"	,""},
						{"empty-tungstic-acid-barrel"			,""},

						{"fill-alien-acid-barrel"			,""},
						{"fill-alien-explosive-barrel"		,""},
						{"fill-alien-fire-barrel"			,""},
						{"fill-alien-poison-barrel"			,""},

						{"empty-alien-acid-barrel"			,""},
						{"empty-alien-explosive-barrel"		,""},
						{"empty-alien-fire-barrel"			,""},
						{"empty-alien-poison-barrel"			,""},

						},


	barrels = {
						{"ammonia-barrel"					,""},
						{"chlorine-barrel"					,""},
						{"hydrogen-barrel"					,""},
						{"hydrogen-chloride-barrel"			,""},
						{"nitric-oxide-barrel"				,""},
						{"nitrogen-barrel"					,""},
						{"nitrogen-dioxide-barrel"			,""},
						{"oxygen-barrel"					,""},
						{"petroleum-gas-barrel"				,""},
						{"sulfur-dioxide-barrel"				,""},

						{"crude-oil-barrel"					,""},
						{"heavy-oil-barrel"					,""},
						{"light-oil-barrel"					,""},
						{"lubricant-barrel"					,""},
						{"water-barrel"					,""},
						{"lithia-water-barrel"				,""},
						{"ferric-chloride-solution-barrel"		,"ferric-chloride-canister.png"},
						{"liquid-fuel-barrel"				,"liquid-fuel-canister.png"},

						{"dinitrogen-tetroxide-barrel"		,""},
						{"glycerol-barrel"					,""},
						{"hydrazine-barrel"					,""},
						{"hydrogen-peroxide-barrel"			,""},
						{"nitric-acid-barrel"				,""},
						{"nitroglycerin-barrel"				,""},
						{"sulfuric-acid-barrel"				,""},
						{"sulfuric-nitric-acid-barrel"		,""},
						{"tungstic-acid-barrel"				,""},

						{"alien-acid-barrel"				,""},
						{"alien-explosive-barrel"			,""},
						{"alien-fire-barrel"				,""},
						{"alien-poison-barrel"				,""},
						
						},

						
---=====================
	ores =  {
						{"coal"							,"coal.png"},
						{"stone"							,"stone.png"},
						{"iron-ore"						,"iron-ore.png"},
						{"copper-ore"						,"copper-ore.png"},
						{"uranium-ore"						,"uranium-ore.png"},

						{"bauxite-ore"						,"bauxite-ore.png"},
						{"cobalt-ore"						,"cobalt-ore.png"},
						{"gold-ore"						,"gold-ore.png"},
						{"lead-ore"						,"lead-ore.png"},
						{"nickel-ore"						,"nickel-ore.png"},
						{"quartz"							,"quartz.png"},
						{"rutile-ore"						,"rutile-ore.png"},
						{"silver-ore"						,"silver-ore.png"},
						{"thorium-ore"						,"thorium-ore.png"},
						{"tin-ore"						,"tin-ore.png"},
						{"tungsten-ore"					,"tungsten-ore.png"},
						{"zinc-ore"						,"zinc-ore.png"},
						{"sulfur"							,"sulfur.png"},
						},

	plates = {
														  
						{"raw-wood"						,"raw-wood.png"},
						{"raw-fish"						,""},
						{"wood"							,"wood.png"},
						{"bob-resin-wood"					,"resin.png"},
						{"resin"							,"resin.png"},
						{"gun-cotton"						,"gun-cotton.png"},
						{"gun-cotton-synthetic"				,""},
						{"silicon-powder"					,"powdered-silicon.png"},
						{"silicon-wafer"					,"silicon-wafer.png"},
						{"heat-shield-tile"					,"heat-shield-tile.png"},

						{"synthetic-wood"					,"synthetic-wood.png"},
						{"bob-resin-oil"					,"resin.png"},
						{"calcium-chloride"					,"calcium-chloride.png"},
						{"lead-oxide"						,"lead-oxide.png","sulfur-lead-oxide-recipe.png"},
						{"bob-lead-plate"					,"lead-plate.png"},

						{"silver-nitrate"					,"silver-nitrate.png"},
						{"silver-oxide"					,"silver-oxide.png"},
						{"petroleum-jelly"					,"petroleum-jelly.png"},
						{"sulfur-2"						,"sulfur.png"},
						{"plastic-bar"						,"plastic-bar.png"},

						{"copper-plate"					,"copper-plate.png"},
						{"iron-plate"						,"iron-plate.png"},
						{"steel-plate"						,"steel-plate.png"},
						{"stone-brick"						,"stone-brick.png"},
						{"concrete"						,"concrete.png"},
						{"hazard-concrete"					,"hazard-concrete.png"},
						{"landfill"						,"landfill.png"},
						{"waterfill"						,""},

						{"tin-plate"						,"tin-plate.png"},
						{"lead-plate"						,"lead-plate.png"},
						{"silver-plate"					,"silver-plate.png"},
						{"quartz-glass"					,"glass.png"},						
						{"glass"							,"glass.png"},						
						{"bob-rubber"						,"rubber.png"},
						{"rubber"							,"rubber.png"},

						{"cobalt-oxide-from-copper"			,"copper-cobalt-oxide.png"},
						{"silver-from-lead"					,"lead-silver.png"},
						{"bob-gold-plate"					,"gold-plate.png"},
						{"gold-plate"						,"gold-plate.png"},
						{"cobalt-oxide"					,"cobalt-oxide.png"},
						{"cobalt-plate"					,"cobalt-plate.png"},
						{"lithium-cobalt-oxide"				,"lithium-cobalt-oxide.png"},
						{"lithium-chloride"					,"lithium-chloride.png"},
						{"salt"							,"salt.png"},
						{"alumina"						,"corundum.png"},
						{"carbon"							,"carbon.png"},
						{"silicon-nitride"					,"silicon-nitride.png"},
						{"silicon-carbide"					,"silicon-carbide.png"},
						{"powdered-tungsten"				,"powdered-tungsten.png"},
						{"tungsten-oxide"					,"tungsten-oxide.png"},

						{"bob-aluminium-plate"				,"aluminium-plate.png"},
						{"aluminium-plate"					,"aluminium-plate.png"},
						{"bob-zinc-plate"					,"zinc-plate.png"},
						{"zinc-plate"						,"zinc-plate.png"},
						{"bob-titanium-plate"				,"titanium-plate.png"},
						{"titanium-plate"					,"titanium-plate.png"},
						{"lithium"						,"lithium-plate.png"},
						{"lithium-perchlorate"				,"lithium-perchlorate.png"},
						{"bob-silicon-plate"				,"silicon-plate.png"},
						{"silicon"						,"silicon-plate.png"},
						{"bob-nickel-plate"					,"nickel-sulfur-dioxide-recipe.png"},
						{"nickel-plate"					,"nickel-plate.png"},
						{"sodium-hydroxide"					,"sodium-hydroxide.png"},

						{"bronze-alloy"					,"bronze-plate.png"},
						{"brass-alloy"						,"brass-plate.png"},
						{"bob-tungsten-plate"				,"tungsten-plate.png"},
						{"tungsten-plate"					,"tungsten-plate.png"},
						{"copper-tungsten-alloy"				,"copper-tungsten-plate.png"},
						{"tungsten-carbide"					,"tungsten-carbide-plate.png"},
						{"tungsten-carbide-2"				,"tungsten-carbide-plate.png"},
						{"gunmetal-alloy"					,"gunmetal-plate.png"},
						{"electrum-alloy"					,"electrum-plate.png"},
						{"invar-alloy"						,"invar-plate.png"},
						{"nitinol-alloy"					,"nitinol-plate.png"},
						{"solder-alloy"					,"solder-plate.png"},
						{"solder-alloy-lead"				,"solder-plate.png"},
						{"cobalt-steel-alloy"				,"cobalt-steel-plate.png"},
														
						{"alien-blue-alloy"					,"alien-blue-alloy.png"},
						{"alien-orange-alloy"				,"alien-orange-alloy.png"},
						},

---=====================
	electronics = {


						{"battery"						,"battery.png"},
						{"lithium-ion-battery"				,"lithium-ion-battery.png"},
						{"silver-zinc-battery"				,"silver-zinc-battery.png"},
						{"grinding-wheel"					,""},
						{"polishing-wheel"					,""},
						{"polishing-compound"				,""},

						{"copper-cable"					,""},
						{"tinned-copper-cable"				,""},
						{"insulated-cable"					,""},
						{"gilded-copper-cable"				,""},
						{"red-wire"						,""},
						{"green-wire"						,""},

						{"solder"							,"solder.png"},
						{"basic-electronic-components"		,""},
						{"electronic-components"				,""},
						{"intergrated-electronics"			,""},
						{"processing-electronics"			,""},

						{"wooden-board"					,"wooden-board.png"},
						{"phenolic-board"					,"phenolic-board.png"},
						{"fibreglass-board"					,"fibreglass-board.png"},

						{"basic-circuit-board"				,"basic-circuit-board.png"},
						{"circuit-board"					,"circuit-board.png"},
						{"superior-circuit-board"			,"superior-circuit-board.png"},
						{"multi-layer-circuit-board"			,"multi-layer-circuit-board.png"},

						{"electronic-circuit"				,"basic-electronic-circuit-board.png"},
						{"advanced-circuit"					,"electronic-circuit-board.png"},
						{"processing-unit"					,"electronic-circuit.png"},
						{"advanced-processing-unit"			,"electronic-processing-board.png"},
						},



	gearbearing = {
						{"steel-gear-wheel"					,"steel-gear-wheel.png"},
						{"brass-gear-wheel"					,"brass-gear-wheel.png"},
						{"titanium-gear-wheel"				,"titanium-gear-wheel.png"},
						{"nitinol-gear-wheel"				,"nitinol-gear-wheel.png"},
						{"tungsten-gear-wheel"				,"tungsten-gear-wheel.png"},
						{"iron-gear-wheel"					,"iron-gear-wheel.png"},

						{"steel-bearing-ball"				,""},
						{"ceramic-bearing-ball"				,""},
						{"titanium-bearing-ball"				,""},
						{"nitinol-bearing-ball"				,""},

						{"steel-bearing"					,""},
						{"ceramic-bearing"					,""},
						{"titanium-bearing"					,""},
						{"nitinol-bearing"					,""},

						},

	bassammo = {
						{"bullet-casing"					,""},
						{"cordite"						,""},
						{"laser-rifle-battery-case"			,""},
						{"magazine"						,"magazine.png"},
						{"shot"							,""},
						{"shotgun-shell-casing"				,""},
						{"rocket-engine"					,""},
						{"rocket-body"						,""},

						{"bullet-projectile"				,""},
						{"he-bullet-projectile"				,""},
						{"electric-bullet-projectile"			,""},
						{"flame-bullet-projectile"			,""},
						{"ap-bullet-projectile"				,""},
						{"acid-bullet-projectile"			,""},
						{"poison-bullet-projectile"			,""},
						{"uranium-bullet-projectile"			,""},

						{"bullet"							,""},
						{"he-bullet"						,""},
						{"electric-bullet"					,""},
						{"flame-bullet"					,""},
						{"ap-bullet"						,""},
						{"acid-bullet"						,""},
						{"poison-bullet"					,""},
						{"uranium-bullet"					,""},

						{"rocket-warhead"					,""},
						{"explosive-rocket-warhead"			,""},
						{"electric-rocket-warhead" 			,""},
						{"flame-rocket-warhead"				,""},
						{"piercing-rocket-warhead"			,""},
						{"acid-rocket-warhead"				,""},
						{"poison-rocket-warhead"				,""},
						{"uranium-rocket-warhead"			,""},

						},

--[=====================
	warfare = {
						{"pistol"							,""},
						{"submachine-gun"					,""},
						{"rifle"							,""},
						{"sniper-rifle"					,""},
						{"laser-rifle"						,""},
						{"shotgun"						,""},
						{"combat-shotgun"					,""},
						{"rocket-launcher"					,""},
						{"flamethrower"					,""},
						{"flamethrower-ammo"				,""},

						{"firearm-magazine"					,""},
						{"piercing-rounds-magazine"			,""},
						{"uranium-rounds-magazine"			,""},
						{"shotgun-shell"					,""},
						{"piercing-shotgun-shell"			,""},
						{"grenade"						,"grenade.png"},
						{"cluster-grenade"					,"cluster-grenade.png"},
						{"explosive-artillery-shell"			,"explosive-artillery-shell.png"},
						{"explosives"						,""},
						{"cliff-explosives"					,""},

						{"cannon-shell"					,""},
						{"explosive-cannon-shell"			,""},
						{"scatter-cannon-shell"				,""},
						{"uranium-cannon-shell"				,""},
						{"explosive-uranium-cannon-shell"		,""},
						{"rocket"							,""},
						{"explosive-rocket"					,""},
						{"atomic-bomb"						,""},
						{"artillery-shell"					,""},
						{"artillery-targeting-remote"			,""},

						{"bullet-magazine"					,"bullet-magazine.png"},
						{"he-bullet-magazine"				,"he-bullet-magazine.png"},
						{"electric-bullet-magazine"			,"electric-bullet-magazine.png"},
						{"flame-bullet-magazine"				,"flame-bullet-magazine.png"},
						{"ap-bullet-magazine"				,"ap-bullet-magazine.png"},
						{"acid-bullet-magazine"				,"acid-bullet-magazine.png"},
						{"poison-bullet-magazine"			,"poison-bullet-magazine.png"},
						{"impact-bullet-magazine"			,"impact-bullet-magazine.png"},

						{"better-shotgun-shell"				,"shotgun-shell.png"},
						{"shotgun-explosive-shell"			,"shotgun-explosive-shell.png"},
						{"shotgun-electric-shell"			,"shotgun-electric-shell.png"},
						{"shotgun-flame-shell"				,"shotgun-flame-shell.png"},
						{"shotgun-ap-shell"					,"shotgun-ap-shell.png"},
						{"shotgun-acid-shell"				,"shotgun-acid-shell.png"},
						{"shotgun-poison-shell"				,"shotgun-poison-shell.png"},
						{"shotgun-impact-shell"				,"shotgun-impact-shell.png"},

						{"bob-rocket"						,"rocket.png"},
						{"bob-explosive-rocket"				,"explosive-rocket.png"},
						{"bob-electric-rocket"				,"electric-rocket.png"},
						{"bob-flame-rocket"					,"flame-rocket.png"},
						{"bob-piercing-rocket"				,"piercing-rocket.png"},
						{"bob-acid-rocket"					,"acid-rocket.png"},
						{"bob-poison-rocket"				,"poison-rocket.png"},
						{"bob-impact-rocket"				,"impact-rocket.png"},

						{"laser-rifle-battery"				,""},
						{"laser-rifle-battery-ruby"			,""},
						{"laser-rifle-battery-sapphire"		,""},
						{"laser-rifle-battery-emerald"		,""},
						{"laser-rifle-battery-amethyst"		,""},
						{"laser-rifle-battery-topaz"			,""},
						{"laser-rifle-battery-diamond"		,""},
						{"laser-beam-rifle-ammo"				,""},


						{"defender-robot"					,"defender.png"},
						{"distractor-robot"					,"distractor.png"},
						{"destroyer-robot"					,"destroyer.png"},
						{"bob-laser-robot"					,"laser-robot.png"},
						{"poison-artillery-shell"			,"poison-artillery-shell.png"},
						{"poison-capsule"					,""},
						{"slowdown-capsule"					,""},

						{"defender-capsule"					,"defender-capsule.png"},
						{"distractor-capsule"				,"distractor-capsule.png"},
						{"destroyer-capsule"				,"destroyer-capsule.png"},
						{"bob-laser-robot-capsule"			,"laser-robot-capsule.png"},
						{"land-mine"						,"land-mine.png"},
						{"poison-mine"						,"land-mine-poison.png"},
						{"slowdown-mine"					,"land-mine-slowdown.png"},
						{"distractor-mine"					,"land-mine-distractor.png"},
						{"distractor-artillery-shell"			,"distractor-artillery-shell.png"},
						{"bob-robot-tank"					,"drone.png"},

						{"stone-wall"						,""},
						{"gate"							,""},
						{"reinforced-wall"					,"reinforced-wall.png"},
						{"reinforced-gate"					,"reinforced-gate.png"},
						},

	equipment = {
						{"exoskeleton-equipment"  			,"exoskeleton-equipment-1.png"},
						{"exoskeleton-equipment-2"			,"exoskeleton-equipment-2.png"},
						{"exoskeleton-equipment-3"			,"exoskeleton-equipment-3.png"},
						
						{"night-vision-equipment"  			,"night-vision-equipment-1.png"},
						{"night-vision-equipment-2"			,"night-vision-equipment-2.png"},
						{"night-vision-equipment-3"			,"night-vision-equipment-3.png"},
						
						{"personal-roboport-equipment"    		,""},
						{"personal-roboport-mk2-equipment"		,""},
						
						{"belt-immunity-equipment"			,""},
						{"combat-robot-dispenser-equipment"	,""},

						{"battery-equipment"    				,"battery-mk1-equipment.png"},
						{"battery-mk2-equipment"				,"battery-mk2-equipment.png"},
						{"battery-mk3-equipment"				,"battery-mk3-equipment.png"},
						{"battery-mk4-equipment"				,"battery-mk4-equipment.png"},
						{"battery-mk5-equipment"				,"battery-mk5-equipment.png"},
						{"battery-mk6-equipment"				,"battery-mk6-equipment.png"},
						
						{"solar-panel-equipment"  			,"solar-panel-equipment-1.png"},
						{"solar-panel-equipment-2"			,"solar-panel-equipment-2.png"},
						{"solar-panel-equipment-3"			,"solar-panel-equipment-3.png"},
						{"solar-panel-equipment-4"			,"solar-panel-equipment-4.png"},

						{"energy-shield-equipment"			,"energy-shield-mk1-equipment.png"},
						{"energy-shield-mk2-equipment"		,"energy-shield-mk2-equipment.png"},
						{"energy-shield-mk3-equipment"		,"energy-shield-mk3-equipment.png"},
						{"energy-shield-mk4-equipment"		,"energy-shield-mk4-equipment.png"},
						{"energy-shield-mk5-equipment"		,"energy-shield-mk5-equipment.png"},
						{"energy-shield-mk6-equipment"		,"energy-shield-mk6-equipment.png"},
						
						{"fusion-reactor-equipment"			,"fusion-reactor-equipment-1.png"},
						{"fusion-reactor-equipment-2"			,"fusion-reactor-equipment-2.png"},
						{"fusion-reactor-equipment-3"			,"fusion-reactor-equipment-3.png"},
						{"fusion-reactor-equipment-4"			,"fusion-reactor-equipment-4.png"},

						{"personal-laser-defense-equipment"  	,"personal-laser-defense-equipment-1.png"},
						{"personal-laser-defense-equipment-2"	,"personal-laser-defense-equipment-2.png"},
						{"personal-laser-defense-equipment-3"	,"personal-laser-defense-equipment-3.png"},
						{"personal-laser-defense-equipment-4"	,"personal-laser-defense-equipment-4.png"},
						{"personal-laser-defense-equipment-5"	,"personal-laser-defense-equipment-5.png"},
						{"personal-laser-defense-equipment-6"	,"personal-laser-defense-equipment-6.png"},
						
						{"discharge-defense-equipment"		,""},
						{"discharge-defense-remote"			,""},
					
						},

	turrets = {
						{"gun-turret"						,"gun-turret-1.png"},
						{"bob-gun-turret-2"					,"gun-turret-2.png"},
						{"bob-gun-turret-3"					,"gun-turret-3.png"},
						{"bob-gun-turret-4"					,"gun-turret-4.png"},
						{"bob-gun-turret-5"					,"gun-turret-5.png"},
						
						{"bob-sniper-turret-1"				,"sniper-turret-1.png"},
						{"bob-sniper-turret-2"				,"sniper-turret-2.png"},
						{"bob-sniper-turret-3"				,"sniper-turret-3.png"},
						
						{"laser-turret"					,"laser-turret-1.png"},
						{"bob-laser-turret-2"				,"laser-turret-2.png"},
						{"bob-laser-turret-3"				,"laser-turret-3.png"},
						{"bob-laser-turret-4"				,"laser-turret-4.png"},
						{"bob-laser-turret-5"				,"laser-turret-5.png"},
						
						{"flamethrower-turret"				,""},
						{"artillery-turret"					,"artillery-turret-1.png"},
						{"bob-artillery-turret-2"			,"artillery-turret-2.png"},
						{"bob-artillery-turret-3"			,"artillery-turret-3.png"},
						{"rocket-silo"						,""},

						},

	radars = {
						{"radar"  						,"radar-1.png"},
						{"radar-2"						,"radar-2.png"},
						{"radar-3"						,"radar-3.png"},
						{"radar-4"						,"radar-4.png"},
						{"radar-5"						,"radar-5.png"},
						{"radar-mk2"						,"radar-2.png"},
						{"radar-mk3"						,"radar-3.png"},
						{"radar-mk4"						,"radar-4.png"},
						{"radar-mk5"						,"radar-5.png"},
						
						},



---=====================
	vehicleequipment = {
						{"vehicle-solar-panel-1"				,"vehicle-solar-panel-1.png"},
						{"vehicle-solar-panel-2"				,"vehicle-solar-panel-2.png"},
						{"vehicle-solar-panel-3"				,"vehicle-solar-panel-3.png"},
						{"vehicle-solar-panel-4"				,"vehicle-solar-panel-4.png"},
						{"vehicle-solar-panel-5"				,"vehicle-solar-panel-5.png"},
						{"vehicle-solar-panel-6"				,"vehicle-solar-panel-6.png"},

						{"vehicle-fusion-reactor-1"			,"vehicle-fusion-reactor-1.png"},
						{"vehicle-fusion-reactor-2"			,"vehicle-fusion-reactor-2.png"},
						{"vehicle-fusion-reactor-3"			,"vehicle-fusion-reactor-3.png"},
						{"vehicle-fusion-reactor-4"			,"vehicle-fusion-reactor-4.png"},
						{"vehicle-fusion-reactor-5"			,"vehicle-fusion-reactor-5.png"},
						{"vehicle-fusion-reactor-6"			,"vehicle-fusion-reactor-6.png"},

						{"vehicle-fusion-cell-1"				,"vehicle-fusion-cell-1.png"},
						{"vehicle-fusion-cell-2"				,"vehicle-fusion-cell-2.png"},
						{"vehicle-fusion-cell-3"				,"vehicle-fusion-cell-3.png"},
						{"vehicle-fusion-cell-4"				,"vehicle-fusion-cell-4.png"},
						{"vehicle-fusion-cell-5"				,"vehicle-fusion-cell-5.png"},
						{"vehicle-fusion-cell-6"				,"vehicle-fusion-cell-6.png"},

						{"vehicle-battery-1"				,"vehicle-battery-1.png"},
						{"vehicle-battery-2"				,"vehicle-battery-2.png"},
						{"vehicle-battery-3"				,"vehicle-battery-3.png"},
						{"vehicle-battery-4"				,"vehicle-battery-4.png"},
						{"vehicle-battery-5"				,"vehicle-battery-5.png"},
						{"vehicle-battery-6"				,"vehicle-battery-6.png"},

						{"vehicle-laser-defense-1"			,"vehicle-laser-defense-1.png"},
						{"vehicle-laser-defense-2"			,"vehicle-laser-defense-2.png"},
						{"vehicle-laser-defense-3"			,"vehicle-laser-defense-3.png"},
						{"vehicle-laser-defense-4"			,"vehicle-laser-defense-4.png"},
						{"vehicle-laser-defense-5"			,"vehicle-laser-defense-5.png"},
						{"vehicle-laser-defense-6"			,"vehicle-laser-defense-6.png"},

						{"vehicle-big-turret-1"				,"vehicle-big-turret-1.png"},
						{"vehicle-big-turret-2"				,"vehicle-big-turret-2.png"},
						{"vehicle-big-turret-3"				,"vehicle-big-turret-3.png"},
						{"vehicle-big-turret-4"				,"vehicle-big-turret-4.png"},
						{"vehicle-big-turret-5"				,"vehicle-big-turret-5.png"},
						{"vehicle-big-turret-6"				,"vehicle-big-turret-6.png"},

						{"vehicle-shield-1"					,"vehicle-shield-1.png"},
						{"vehicle-shield-2"					,"vehicle-shield-2.png"},
						{"vehicle-shield-3"					,"vehicle-shield-3.png"},
						{"vehicle-shield-4"					,"vehicle-shield-4.png"},
						{"vehicle-shield-5"					,"vehicle-shield-5.png"},
						{"vehicle-shield-6"					,"vehicle-shield-6.png"},

						{"vehicle-motor"					,"vehicle-motor.png"},
						{"vehicle-engine"					,"vehicle-engine.png"},
						{"vehicle-roboport"					,"vehicle-roboport-1.png"},
						{"vehicle-roboport-2"				,"vehicle-roboport-2.png"},
						},

---=====================
	gemsores = {
						{"ruby-ore"						,""},
						{"sapphire-ore"					,""},
						{"emerald-ore"						,""},
						{"amethyst-ore"					,""},
						{"topaz-ore"						,""},
						{"diamond-ore"						,""},
						{"gem-ore"						,""},

						{"ruby-3"							,""},
						{"sapphire-3"						,""},
						{"emerald-3"						,""},
						{"amethyst-3"						,""},
						{"topaz-3"						,""},
						{"diamond-3"						,""},

						{"ruby-4"							,""},
						{"sapphire-4"						,""},
						{"emerald-4"						,""},
						{"amethyst-4"						,""},
						{"topaz-4"						,""},
						{"diamond-4"						,""},

						{"ruby-5"							,""},
						{"sapphire-5"						,""},
						{"emerald-5"						,""},
						{"amethyst-5"						,""},
						{"topaz-5"						,""},
						{"diamond-5"						,""},
						},


}

setall_icons(all_icons)