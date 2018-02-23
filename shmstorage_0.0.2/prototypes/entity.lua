local ent
local name

-- Wooden Crate
name = "wooden-crate"
ent = util.table.deepcopy(data.raw["container"]["wooden-chest"])
ent.name = name
ent.minable.result = name
ent.corpse = "medium-remnants"
ent.collision_box = {{-0.75, -0.75}, {0.75, 0.75}}
ent.selection_box = {{-1, -1}, {1, 1}}
ent.icon = "__shmstorage__/graphics/icons/" .. name .. ".png"
ent.picture = 
	{
	  filename = "__shmstorage__/graphics/entity/" .. name .. "/" .. name .. ".png",
	  width = 83,
	  height = 59,
	  shift = {0.5, 0.0}
	}
ent.inventory_size = 16
data:extend({ent})

-- Basic Repository
name = "basic-repository"
ent = util.table.deepcopy(data.raw["container"]["steel-chest"])
ent.name = name
ent.minable.result = name
ent.corpse = "big-remnants"
ent.collision_box = {{-1.4, -1.4}, {1.4, 1.4}}
ent.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
ent.icon = "__shmstorage__/graphics/icons/" .. name .. ".png"
ent.picture = 
	{
	  filename = "__shmstorage__/graphics/entity/" .. name .. "/" .. name .. ".png",
	  width = 156,
	  height = 127,
	  shift = {0.95, 0.2}
	}
ent.inventory_size =  32
data:extend({ent})

-- Iron Crate
name = "iron-crate"
ent = util.table.deepcopy(data.raw["container"]["iron-chest"])
ent.name = name
ent.minable.result = name
ent.corpse = "medium-remnants"
ent.collision_box = {{-0.75, -0.75}, {0.75, 0.75}}
ent.selection_box = {{-1, -1}, {1, 1}}
ent.icon = "__shmstorage__/graphics/icons/" .. name .. ".png"
ent.picture = 
	{
		filename = "__shmstorage__/graphics/entity/" .. name .. "/" .. name .. ".png",
		width = 83,
		height = 59,
		shift = {0.5, 0.0}
	}
ent.inventory_size = 40
data:extend({ent})
