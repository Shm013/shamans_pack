if data.raw["lab"]["lab-module"] then
	iconfix("lab-module","lab",1,1,0)
	data.raw["lab"]["lab-module"].on_animation.filename = "__ShinyBobGFX__/graphics/entity/labs/lab-module.png"
	data.raw["lab"]["lab-module"].off_animation.filename = "__ShinyBobGFX__/graphics/entity/labs/lab-module.png"
end

if data.raw["lab"]["lab-2"] then
	iconfix("lab","lab",1,2,0)
	iconfix("lab-alien","lab",1,1,0)
end

if mods["bobtech"] then
data.raw["item"]["lab"].subgroup = "production-machine"
data.raw["item"]["lab"].order = "w"

data.raw["item"]["lab-2"].subgroup = "production-machine"
data.raw["item"]["lab-2"].order = "x"
end

if mods["bobmodules"] then
data.raw["item"]["lab-module"].subgroup = "production-machine"
data.raw["item"]["lab-module"].order = "y"
end

if mods["bobtech"] then
if data.raw["item"]["lab-alien"] then
data.raw["item"]["lab-alien"].subgroup = "production-machine"
data.raw["item"]["lab-alien"].order = "z"
end
end