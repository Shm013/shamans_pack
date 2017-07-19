data:extend({
  {
    type = "item-subgroup",
    name = "crystal-processing",
    group = "bob-resource-products",
    order = "z-a",
    },
   {
    type = "item-subgroup",
    name = "crystal-processing-result",
    group = "bob-resource-products",
    order = "z-b",
    },
  {
    type = "item",
    name = "QuartzCrystal",
    icon = "__shmslag__/graphics/QuartzCrystal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "crystal-processing",
    order = "quartz",
    stack_size = 200
    },
     {
    type = "item",
    name = "NickelCrystal",
    icon = "__shmslag__/graphics/NickelCrystal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "crystal-processing",
    order = "nickel",
    stack_size = 200
    },
})
