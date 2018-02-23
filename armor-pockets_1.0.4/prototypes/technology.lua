data:extend( {
{
    type = "technology",
    name = "armor-pocket-equipment",
    icon = "__armor-pockets__/graphics/icons/armor-pocket-technology.png",
    icon_size = 128,
    prerequisites = {"modular-armor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "armor-pocket-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "g-g"
  }
}
 )