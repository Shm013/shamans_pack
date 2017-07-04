require ("prototypes.item")
require ("prototypes.recipe")
require ("prototypes.technology")


require ("prototypes.tiles_reinforced")
require ("prototypes.tiles_smooth")
require ("prototypes.tiles_wood")
require ("prototypes.tiles_rusty")
require ("prototypes.tiles_rustygrate")
require ("prototypes.tiles_arrowgrate")
require ("prototypes.tiles_circuit")
require ("prototypes.tiles_diamondplate")
require ("prototypes.tiles_gravel")
require ("prototypes.tiles_snow")
require ("prototypes.tiles_lava")
require ("prototypes.tiles_alienmetal")
require ("prototypes.tiles_asphalt")
require ("prototypes.tiles_metalscraps")
require ("prototypes.tiles_hexagonb")
require ("prototypes.tiles_tar")
require ("prototypes.tiles_toxic")
require ("prototypes.tiles_arrowgrate-fast")
require ("prototypes.tiles_arrowgrate-express")
require ("prototypes.tiles_concrete_black")
require ("prototypes.tiles_concrete_darkgrey")
require ("prototypes.tiles_concrete_blue")
require ("prototypes.tiles_concrete_gold")
require ("prototypes.tiles_concrete_green")
require ("prototypes.tiles_concrete_limegreen")
require ("prototypes.tiles_concrete_orange")
require ("prototypes.tiles_concrete_pink")
require ("prototypes.tiles_concrete_purple")
require ("prototypes.tiles_concrete_red")
require ("prototypes.tiles_concrete_skyblue")
require ("prototypes.tiles_concrete_white")
require ("prototypes.tiles_concrete_yellow")
require ("prototypes.tiles_concrete_magenta")
require ("prototypes.tiles_checkerboard")
require ("prototypes.tiles_experiment")
require ("prototypes.tiles_roadline")
require ("prototypes.tiles_redbrick")
require ("prototypes.tiles_cobblestone")
require ("prototypes.tiles_grass")
require ("prototypes.tiles_sand")
require ("prototypes.tiles_dirt")
require ("prototypes.tiles_yellowbrick")
require ("prototypes.tiles_decals")
require ("prototypes.tiles_arrowgrate-titanium")
require ("prototypes.tiles_arrowgrate-nitinol")


data:extend(
  {
    { --Item groups are tabs in the recipe menu, subgroups are rows within the tab.
    type = "item-group",
    name = "more-floors",
    icon = "__More_Floors__/graphics/icons/more-floors-tab.png",
    icon_size = 64,
	order = "f",
	},

    {
      type = "item-subgroup",
      name = "mf-terrain",
      group = "more-floors",
      order = "b",
    },
	
	{
      type = "item-subgroup",
      name = "mf-biome",
      group = "more-floors",
      order = "c",
    },
	
	{
      type = "item-subgroup",
      name = "mf-stone",
      group = "more-floors",
      order = "d",
    },
	{
      type = "item-subgroup",
      name = "mf-metal",
      group = "more-floors",
      order = "e",
    },
	
	{
      type = "item-subgroup",
      name = "mf-colors",
      group = "more-floors",
      order = "f",
    },
	
	{
      type = "item-subgroup",
      name = "blueprintBiomes",
      group = "more-floors",
      order = "g",
    }
	
	
	

  }

)



