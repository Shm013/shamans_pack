--PREPARATION
	angelsmods.functions.OV.remove_output("algae-brown-burning", "angels-void")

--REFINING
if angelsmods.refining then
	--MOVE UNLOCKS
	angelsmods.functions.OV.add_unlock("bio-processing-green", "water-mineralized")
	angelsmods.functions.OV.remove_unlock("water-treatment", "water-mineralized")
end

--SMELTING
if not angelsmods.smelting then
	angelsmods.functions.OV.disable_recipe("algae-brown-burning-wash")
end

--CONDITIONAL
if angelsmods.components then
	angelsmods.functions.OV.set_output("algae-brown-burning", "solid-lithium", "item", 1)
else if bobmods and bobmods.plates then
	require("prototypes.recipes.bio-processing-entity-bob")
	
	angelsmods.functions.OV.set_output("algae-brown-burning", "lithium-chloride", "item", 1)
	angelsmods.functions.OV.remove_output("circuit-wood-fiber-board", "circuit-wood-fiber-board")
	angelsmods.functions.OV.set_output("circuit-wood-fiber-board", "wooden-board", "item", 1)
	
	angelsmods.functions.OV.set_input("petri-dish", "glass", "item", 1)

	angelsmods.functions.OV.set_input("alien-pre-artifact-yellow", "diamond-4", "item", 1)
	angelsmods.functions.OV.set_input("alien-pre-artifact-blue", "sapphire-4", "item", 1)
	angelsmods.functions.OV.set_input("alien-pre-artifact-green", "emerald-4", "item", 1)
	angelsmods.functions.OV.set_input("alien-pre-artifact-purple", "amethyst-4", "item", 1)
	angelsmods.functions.OV.set_input("alien-pre-artifact-orange", "topaz-4", "item", 1)
	angelsmods.functions.OV.set_input("alien-pre-artifact-red", "ruby-4", "item", 1)
	
	angelsmods.functions.OV.set_input("paste-cobalt", "cobalt-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-copper", "copper-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-gold", "gold-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-iron", "iron-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-silver", "silver-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-titanium", "rutile-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-tungsten", "tungsten-ore", "item", 5)
	angelsmods.functions.OV.set_input("paste-zinc", "zinc-ore", "item", 5)
	if bobmods.enemies then
	    angelsmods.functions.OV.disable_technology({ "big-alien-artifacts" })  
		--angelsmods.functions.OV.disable_recipe({"alien-artifact-red", "alien-artifact-yellow", "alien-artifact-orange", "alien-artifact-blue", "alien-artifact-purple", "alien-artifact-green", "alien-artifact"})
	end
	else
	angelsmods.functions.OV.remove_input("substrate-dish", "paste-silver")
	angelsmods.functions.OV.set_input("substrate-dish", "paste-copper", "item", 1)
	angelsmods.functions.OV.disable_recipe("algae-brown-burning")
	angelsmods.functions.OV.disable_recipe({"paste-cobalt", "paste-gold", "paste-silver", "paste-titanium", "paste-tungsten", "paste-zinc"})
	angelsmods.functions.OV.disable_recipe({"alien-pre-artifact-yellow", "alien-pre-artifact-blue", "alien-pre-artifact-green", "alien-pre-artifact-purple", "alien-pre-artifact-orange", "alien-pre-artifact-red"})
	angelsmods.functions.OV.disable_recipe({"small-alien-artifact-red", "small-alien-artifact-yellow", "small-alien-artifact-orange", "small-alien-artifact-blue", "small-alien-artifact-purple", "small-alien-artifact-green"})
	angelsmods.functions.OV.disable_recipe({"alien-artifact-red", "alien-artifact-yellow", "alien-artifact-orange", "alien-artifact-blue", "alien-artifact-purple", "alien-artifact-green"})
	end
end