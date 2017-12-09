-- New cannon turret and its shell magazine ammo technology
data:extend(
{
  {
    type = "technology",
    name = "vtk-cannon-turret-unlock",
    icon_size = 128,
    icon = "__vtk-cannon-turret__/graphics/technology/cannon-turret-tech.png",
    effects = 
    {
        {
          type = "unlock-recipe",
          recipe = "vtk-cannon-turret"
        },
        {
          type = "unlock-recipe",
          recipe = "cannon-shell-magazine"
        },
        {
          type = "unlock-recipe",
          recipe = "explosive-cannon-shell-magazine"
        },
      },
    prerequisites = {"turrets", "tanks"}, 
    unit =
    {
      count = 100,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-a"
  },
})

-- Set unlock on uranium magazine ammo on uranium ammo technology
table.insert(data.raw['technology']['uranium-ammo']['effects'], {type = "unlock-recipe", recipe = "uranium-cannon-shell-magazine"})
table.insert(data.raw['technology']['uranium-ammo']['effects'], {type = "unlock-recipe", recipe = "explosive-uranium-cannon-shell-magazine"})


-- Make new cannon turret shell magazine ammo affected by shell technology upgrades
table.insert(data.raw['technology']['cannon-shell-damage-1']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 0.2})
table.insert(data.raw['technology']['cannon-shell-damage-2']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 0.2})
table.insert(data.raw['technology']['cannon-shell-damage-3']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 0.3})
table.insert(data.raw['technology']['cannon-shell-damage-4']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 0.5})
table.insert(data.raw['technology']['cannon-shell-damage-5']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 1})
table.insert(data.raw['technology']['cannon-shell-damage-6']['effects'], {type = "ammo-damage", ammo_category = "cannon-shell-magazine", modifier = 1})

table.insert(data.raw['technology']['cannon-shell-speed-1']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 0.2})
table.insert(data.raw['technology']['cannon-shell-speed-2']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 0.2})
table.insert(data.raw['technology']['cannon-shell-speed-3']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 0.3})
table.insert(data.raw['technology']['cannon-shell-speed-4']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 0.6})
table.insert(data.raw['technology']['cannon-shell-speed-5']['effects'], {type = "gun-speed", ammo_category = "cannon-shell-magazine", modifier = 1})
