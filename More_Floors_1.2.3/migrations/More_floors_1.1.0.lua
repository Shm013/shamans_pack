for i, force in pairs(game.forces) do 
 force.reset_technologies()
end

for i, force in pairs(game.forces) do 
 force.reset_recipes()
end


for index, force in pairs(game.forces) do
  if force.technologies["Floors"].researched then
	force.recipes["mf-concrete-orange"].enabled = true
	force.recipes["mf-concrete-magenta"].enabled = true
	force.recipes["mf_green_grass"].enabled = true
	force.recipes["sand_light_blueprint"].enabled = true
	force.recipes["sand_dark_blueprint"].enabled = true
	force.recipes["dirt_blueprint"].enabled = true
	force.recipes["dirt_dark_blueprint"].enabled = true
	force.recipes["mf_green_grass_blueprint"].enabled = true
	force.recipes["mf_grass_dry_blueprint"].enabled = true
	force.recipes["yellowbrick"].enabled = true
	force.recipes["decal1"].enabled = true
	force.recipes["herringbone"].enabled = true
	force.recipes["darkwood"].enabled = true
  end
end


--Migration file help found here https://forums.factorio.com/viewtopic.php?f=14&t=2797#p21711