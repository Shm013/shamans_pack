for i, force in pairs(game.forces) do 
 force.reset_technologies()
end

for i, force in pairs(game.forces) do 
 force.reset_recipes()
end


for index, force in pairs(game.forces) do
  if force.technologies["Floors"].researched then
    force.recipes["experiment"].enabled = true
    force.recipes["mf-concrete-black"].enabled = true
	force.recipes["mf-concrete-darkgrey"].enabled = true
	force.recipes["road-line"].enabled = true
	force.recipes["redbrick"].enabled = true
    force.recipes["mf-concrete-blue"].enabled = true
    force.recipes["mf-concrete-gold"].enabled = true
	force.recipes["mf-concrete-green"].enabled = true
	force.recipes["mf-concrete-limegreen"].enabled = true
	force.recipes["mf-concrete-orange"].enabled = true
	force.recipes["mf-concrete-pink"].enabled = true
	force.recipes["mf-concrete-purple"].enabled = true
	force.recipes["mf-concrete-red"].enabled = true
	force.recipes["mf-concrete-skyblue"].enabled = true
	force.recipes["mf-concrete-white"].enabled = true
	force.recipes["mf-concrete-yellow"].enabled = true
	force.recipes["express-arrow-grate"].enabled = true
	force.recipes["fast-arrow-grate"].enabled = true
	force.recipes["checkerboard"].enabled = true
	force.recipes["tar"].enabled = true	
	force.recipes["lava"].enabled = true	
	force.recipes["asphalt"].enabled = true	
	force.recipes["cobblestone"].enabled = true	
	
  end
end


--Migration file help found here https://forums.factorio.com/viewtopic.php?f=14&t=2797#p21711