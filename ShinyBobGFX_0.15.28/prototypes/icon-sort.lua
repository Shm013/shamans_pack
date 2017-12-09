if data.raw["item"]["storage-tank-2"] then
data.raw["item"]["storage-tank"].subgroup = "bob-storage"
data.raw["item"]["storage-tank"].order = "b[fluid]-a[storage-tank-1]"
end

if data.raw["item"]["nitinol-gear-wheel"] then
data.raw["item"]["iron-gear-wheel"].subgroup = "bob-gears"
data.raw["item"]["iron-gear-wheel"].order = "a"
end

if data.raw["item"]["lithium-ion-battery"] then
data.raw["item"]["battery"].subgroup = "bob-intermediates"
data.raw["item"]["battery"].order = "f-c"
end

if data.raw["item"]["gilded-copper-cable"] then
data.raw["item"]["copper-cable"].subgroup = "bob-electronic-components"
data.raw["item"]["copper-cable"].order = "0"
end

if data.raw["item-with-entity-data"]["bob-locomotive-2"] then
data.raw["item-with-entity-data"]["locomotive"].subgroup = "bob-transport"
data.raw["item-with-entity-data"]["locomotive"].order = "a[train-system]-e[locomotive-1]"
end

if data.raw["item-with-entity-data"]["bob-cargo-wagon-2"] then
data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "bob-transport"
data.raw["item-with-entity-data"]["cargo-wagon"].order = "a[train-system]-f[cargo-wagon-1]"
end

if data.raw["item-with-entity-data"]["bob-fluid-wagon-2"] then
data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "bob-transport"
data.raw["item-with-entity-data"]["fluid-wagon"].order = "a[train-system]-h[fluid-wagon-1]"
end

if mods["bobwarfare"] then
bobicon("gun-turret","ammo-turret",1,1,0)
bobicon("bob-gun-turret","ammo-turret",2,5,0)
bobicon("bob-sniper-turret","ammo-turret",1,3,0)
bobicon("laser-turret","electric-turret",1,1,0)
bobicon("bob-laser-turret","electric-turret",2,5,0)

bobicon("night-vision-equipment","night-vision-equipment",1,3,0)
bobicon("exoskeleton-equipment","movement-bonus-equipment",1,3,0)
end

if mods["boblogistics"] then
bobiconspec("locomotive","locomotive",1,1,0)
bobiconspec("bob-locomotive","locomotive",2,3,0)
bobiconspec("cargo-wagon","cargo-wagon",1,1,0)
bobiconspec("bob-cargo-wagon","cargo-wagon",2,3,0)
bobiconspec("fluid-wagon","fluid-wagon",1,1,0)
bobiconspec("bob-fluid-wagon","fluid-wagon",2,3,0)
bobiconspec("bob-armoured-locomotive","locomotive",1,2,0)
bobiconspec("bob-armoured-cargo-wagon","cargo-wagon",1,2,0)
bobiconspec("bob-armoured-fluid-wagon","fluid-wagon",1,2,0)
end

if mods["boblogistics"] then
bobicon("flying-robot-frame","item",1,4,0)
bobicon("robot-brain-logistic","item",1,4,0)
bobicon("robot-brain-construction","item",1,4,0)
bobicon("robot-tool-logistic","item",1,4,0)
bobicon("robot-tool-construction","item",1,4,0)
end

if mods["boblogistics"] then
if mods["bobwarfare"] then
bobicon("robot-brain-combat","item",1,4,0)
bobicon("robot-tool-combat","item",1,4,0)
end
end

if mods["bobwarfare"] then
iconfix("distractor-mine","land-mine",1,1,0)
iconfix("poison-mine","land-mine",1,1,0)
iconfix("slowdown-mine","land-mine",1,1,0)
iconfix("land-mine","land-mine",1,1,0)
end



