for i, force in pairs(game.forces) do 
 force.reset_technologies()
end

for i, force in pairs(game.forces) do 
 force.reset_recipes()
end


for index, force in pairs(game.forces) do
  if force.technologies["Floors"].researched then
		force.recipes["toxic"].enabled = true
		force.recipes["nitinol-arrow-grate"].enabled = true
		force.recipes["titanium-arrow-grate"].enabled = true
  end
end


--Migration file help found here https://forums.factorio.com/viewtopic.php?f=14&t=2797#p21711