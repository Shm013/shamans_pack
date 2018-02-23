data:extend(
{
	{--Smooth Concrete Floor 
 
		type = "item",
		name = "smooth-concrete",
		icon = "__Extra_Floors__/graphics/icons/smooth-concrete.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-stone",
		order = "b[concrete]-c[smooth-concrete]",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "smooth-concrete",
			  condition_size = 4,
			  condition = { "water-tile" }
			 }
    },
	 
	 
	{--Experimental Floor 
 
		type = "item",
		name = "experiment",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/experiment.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-terrain",
		order = "b[concrete]-c[experiment]",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "experiment",
			  condition_size = 4,
			  condition = { "water-tile" }
			 }
    },
	 

	 
	{ --Checkboard Floor 
	
		type = "item",
		name = "checkerboard",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/checkerboard.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-stone",
		order = "b[concrete]-c[checkerboard]",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "checkerboard",
			  condition_size = 4,
			  condition = { "water-tile" }
			 }
   },
	 
   {--Wood Floor 
   
		type = "item",
		name = "wood-floor",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/wood-floor.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-terrain",
		order = "e",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "wood-floor",
			  condition_size = 4,
			  condition = { "water-tile" }	
			 }
    },
	
	 {--Herringbone wood Floor 
   
		type = "item",
		name = "herringbone",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/herringbone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-terrain",
		order = "f",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "herringbone",
			  condition_size = 4,
			  condition = { "water-tile" }	
			 }
    },
	
	{--Darkwood Floor 
   
		type = "item",
		name = "darkwood",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/darkwood.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-terrain",
		order = "g",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "darkwood",
			  condition_size = 4,
			  condition = { "water-tile" }	
			 }
    },
	 
	 
	{ --Reinforced Concrete Floor 
	
		type = "item",
		name = "reinforced-concrete",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/reinforced-concrete.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-stone",
		order = "b[concrete]-c[reinforced-concrete]",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "reinforced-concrete",
			  condition_size = 4,
			  condition = { "water-tile" }	
			 }
	 },
	 
	 { --Decals
	
		type = "item",
		name = "decal1",
		icon_size = 32,
		icon = "__Extra_Floors__/graphics/icons/decal1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "mf-terrain",
		order = "b",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "decal1",
			  condition_size = 4,
			  condition = { "water-tile" }	
			 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-red",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_red.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "a",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-red",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-blue",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_blue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "g",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-blue",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 
	 {
	
	type = "item",
    name = "mf-concrete-gold",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "c",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-gold",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-green",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_green.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "e",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-green",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-limegreen",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_limegreen.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "e",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-limegreen",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-orange",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "b[concrete]-c[mf-concrete-orange]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-orange",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-pink",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_pink.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "h",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-pink",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-magenta",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_magenta.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "h",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-magenta",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-purple",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_purple.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "i",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-purple",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-skyblue",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_skyblue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "f",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-skyblue",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-white",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_white.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "j",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-white",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-yellow",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_yellow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "c",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-yellow",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-orange",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "b",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-orange",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-black",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_black.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "l",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-black",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "mf-concrete-darkgrey",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/concrete_darkgrey.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-colors",
    order = "k",
    stack_size = 1000,
    place_as_tile =
     {
      result = "mf-concrete-darkgrey",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 
	{
	
	type = "item",
    name = "diamond-plate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/diamond-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[diamond-plate]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "diamond-plate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	{
	
	type = "item",
    name = "rusty-metal",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/rusty-metal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[rusty-metal]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "rusty-metal",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	{
	
	type = "item",
    name = "rusty-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/rusty-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[rusty-grate]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "rusty-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	{
	
	type = "item",
    name = "arrow-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/arrow-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "q",
    stack_size = 1000,
    place_as_tile =
     {
      result = "arrow-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "fast-arrow-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/fast-arrow-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "r",
    stack_size = 1000,
    place_as_tile =
     {
      result = "fast-arrow-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 {
	
	type = "item",
    name = "express-arrow-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/express-arrow-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "s",
    stack_size = 1000,
    place_as_tile =
     {
      result = "express-arrow-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },
	 
	 	 {
	
	type = "item",
    name = "titanium-arrow-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/titanium-arrow-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "s",
    stack_size = 1000,
    place_as_tile =
     {
      result = "titanium-arrow-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },

	 	 {
	
	type = "item",
    name = "nitinol-arrow-grate",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/nitinol-arrow-grate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "s",
    stack_size = 1000,
    place_as_tile =
     {
      result = "nitinol-arrow-grate",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
	 },

	 
	 
	 
	{
    
	type = "item",
	name = "mf_green_grass",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/green_grass.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "d",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_green_grass",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },	
	 
	 {
    
	type = "item",
	name = "mf_grass_dry",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/grass_dry.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "d",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_grass_dry",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 
	 {
    
	type = "item",
	name = "mf_green_grass_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/green_grass_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "d",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_green_grass_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	  {
    
	type = "item",
	name = "mf_grass_dry_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/grass_dry_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "d",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_grass_dry_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 
	{
    
	type = "item",
	name = "mf_sand_light",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/sand_light.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "b[mf_sand_light]",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_sand_light",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
    
	type = "item",
	name = "sand_light_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/sand_light_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "b",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "sand_light_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
    
	type = "item",
	name = "sand_dark_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/sand_dark_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "b",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "sand_dark_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
	type = "item",
	name = "mf_sand_dark",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/sand_dark.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "b[mf_sand_dark]",
	stack_size = 1000,

	place_as_tile =
	 {
	  result = "mf_sand_dark",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
	type = "item",
	name = "mf_dirt",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/dirt.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "b[mf_dirt]",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "mf_dirt",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 
	 {
	type = "item",
	name = "dirt_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/dirt_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "b[dirt]",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "dirt_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
	type = "item",
	name = "dirt_dark_blueprint",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/dirt_dark_blueprint.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "blueprintBiomes",
	order = "b[dirt]",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "dirt_dark_blueprint",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
	 {
	type = "item",
	name = "mf_dirt_dark",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/dirt_dark.png",
	
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-biome",
	order = "b[mf_dirt_dark]",
	stack_size = 1000,
	can_be_part_of_blueprint = false,
	place_as_tile =
	 {
	  result = "mf_dirt_dark",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },
	 
    {
    
	type = "item",
	name = "gravel",
	icon_size = 32,
	icon = "__Extra_Floors__/graphics/icons/gravel.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "mf-stone",
	order = "b[gravel]",
	stack_size = 1000,
	place_as_tile =
	 {
	  result = "gravel",
	  condition_size = 4,
	  condition = { "water-tile" }
	 }	
	 },		 
	{
	
	type = "item",
    name = "circuit-floor",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/circuit-floor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[circuit-floor]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "circuit-floor",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	
	type = "item",
    name = "asphalt",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/asphalt.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-stone",
    order = "b[concrete]-c[asphalt]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "asphalt",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
		{
	
	type = "item",
    name = "road-line",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/roadline.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-stone",
    order = "b[concrete]-c[road-line]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "road-line",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	
	type = "item",
    name = "cobblestone",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/cobblestone.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-stone",
    order = "b[concrete]-c[cobblestone]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "cobblestone",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	
	type = "item",
    name = "redbrick",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/redbrick.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-stone",
    order = "b[concrete]-c[redbrick]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "redbrick",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	
	type = "item",
    name = "yellowbrick",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/yellowbrick.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-stone",
    order = "b[concrete]-c[yellowbrick]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "yellowbrick",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	
	type = "item",
    name = "lava",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/lava.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-biome",
    order = "b[concrete]-c[lava]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "lava",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	{
	
	type = "item",
    name = "snow",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/snow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-biome",
    order = "b[concrete]-c[snow]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "snow",
      condition_size = 4,
      condition = { "water-tile" }	
	 }
    },
	
	{
	type = "item",
    name = "alien-metal",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/alien-metal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[alien-metal]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "alien-metal",
      condition_size = 4,
      condition = { "water-tile" }	
	 } 
    },
	
	{
	type = "item",
    name = "metal-scraps",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/metal-scraps.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[metal-scraps]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "metal-scraps",
      condition_size = 4,
      condition = { "water-tile" }	
	 } 
    },
	
	{
	type = "item",
    name = "hexagonb",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/hexagon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-metal",
    order = "b[concrete]-c[hexagonb]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "hexagonb",
      condition_size = 4,
      condition = { "water-tile" }	
	 } 
    },
	
	{
	type = "item",
    name = "tar",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/tar.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-biome",
    order = "b[concrete]-c[tar]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "tar",
      condition_size = 4,
      condition = { "water-tile" }	
	 } 
    },
	
	{
	type = "item",
    name = "toxic",
	icon_size = 32,
    icon = "__Extra_Floors__/graphics/icons/toxic.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "mf-biome",
    order = "b[concrete]-c[tar]",
    stack_size = 1000,
    place_as_tile =
     {
      result = "toxic",
      condition_size = 4,
      condition = { "water-tile" }	
	 } 
    }
	
}
)