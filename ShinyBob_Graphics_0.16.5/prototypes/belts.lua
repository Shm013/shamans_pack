
if settings.startup["switch_green_purple_belts"].value  then
   
	picBELTS("green-transport-belt","purple-transport-belt.png")
	picBELTS("purple-transport-belt","green-transport-belt.png")

	picUNDERGROUNDBELTS("green-underground-belt","purple-transport-belt-to-ground-structure.png","purple-transport-belt.png")
	picUNDERGROUNDBELTS("purple-underground-belt","green-transport-belt-to-ground-structure.png","green-transport-belt.png")

	picSPLITTERS("green-splitter","purple-splitter.png","purple-transport-belt.png")
	picSPLITTERS("purple-splitter","green-splitter.png","green-transport-belt.png")




	picLOADERS("green-loader","purple-loader.png","purple-transport-belt.png")
	picLOADERS("purple-loader","green-loader.png","green-transport-belt.png")

	picMINILOADERS("express-miniloader","blue-miniloader.png","purple-transport-belt.png")
	picMINILOADERS("green-miniloader","purple-miniloader.png","purple-transport-belt.png")
	picMINILOADERS("purple-miniloader","green-miniloader.png","green-transport-belt.png")

	picMINILOADERS("express-filter-miniloader","blue-filter-miniloader.png","purple-transport-belt.png")
	picMINILOADERS("green-filter-miniloader","purple-filter-miniloader.png","purple-transport-belt.png")
	picMINILOADERS("purple-filter-miniloader","green-filter-miniloader.png","green-transport-belt.png")

-- hacked-splitters mod not working currently as removing one of them will result on a crash of the game.
	
--	picSPLITTERS("hacked-splitter","yellow-splitter.png","yellow-transport-belt.png")
--	picSPLITTERS("hacked-fast-splitter","red-splitter.png","red-transport-belt.png")
--	picSPLITTERS("hacked-express-splitter","blue-splitter.png","blue-transport-belt.png")

--	picSPLITTERS("hacked-green-splitter","purple-splitter.png","purple-transport-belt.png")
--	picSPLITTERS("hacked-purple-splitter","green-splitter.png","green-transport-belt.png")

end




