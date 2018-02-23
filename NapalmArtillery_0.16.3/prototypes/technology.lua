data:extend({
      {
    type = "technology",
    name = "napalm-artillery-shell-tech",
    icon = "__NapalmArtillery__/graphics/hr-napalm-shell.png",
	icon_size = 64,
    effects =
      {
		{
          type = "unlock-recipe",
          recipe = "napalm-artillery-shell"
        },
      },
    prerequisites = {"artillery"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
		{"military-science-pack", 1},
        {"high-tech-science-pack",1}		
     },
      time = 20
    },
    order = "e-k-d",
	enabled="true",
  }
})