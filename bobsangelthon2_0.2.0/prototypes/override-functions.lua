bam = {}

function bam.update_building(building, ingredients)
  bam.edit_recipe_ingredients(building, ingredients)
end

function bam.edit_recipe_ingredients(building, ingredients)
  log(building)
  local dat = data.raw.recipe[building]
  if dat then
    dat.normal.ingredients = ingredients
    dat.expensive.ingredients = ingredients
  end
end


function bam.edit_recipe(recipe)
  log(recipe.name)
  local dat = data.raw.recipe[recipe.name]
  if dat then
    dat.energy_required = recipe.energy_required
    dat.normal.ingredients = recipe.ingredients
	dat.expensive.ingredients = recipe.ingredients
    dat.results = recipe.results
  end
end