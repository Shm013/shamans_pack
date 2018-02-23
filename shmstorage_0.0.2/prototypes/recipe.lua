data:extend(
{
  {
    type = "recipe",
    name = "wooden-crate",
	enabled = "true",
	ingredients = 
    {
		{"wooden-chest", 8},
		{"iron-plate", 2},
	},
	result = "wooden-crate",
	result_count = 1,
  },
  
  {
    type = "recipe",
    name = "basic-repository",
	enabled = "false",
	ingredients = 
    {
		{"steel-plate", 25},
	},
	result = "basic-repository",
	result_count = 1,
  },

    -- Iron Crate
    {
		type = "recipe",
		name = "iron-crate",
		enabled = "true",
		ingredients = 
		{
			{ "iron-chest", 4 },
			{ "iron-plate", 10 },
		},
		result = "iron-crate",
		result_count = 1,
		--subgroup = "UT-repositories",
		order = "a[items]-c[steel-chest]-c",
	},
})
