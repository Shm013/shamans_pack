--utils
function clear_list(list)
  local count = #list
  for i=0, count do list[i]=nil end
end
--utils
function get_prototypes_list(search_text)
  local items = find_items(search_text)
  local fluids = find_fluids(search_text)
  local ret_mas = {}
  for _,prot in pairs(items) do
    table.insert(ret_mas, prot)
  end 
  for _,prot in pairs(fluids) do
    table.insert(ret_mas, prot)
  end 

  return ret_mas
end
--utils
function find_prototypes(mas, search_text, prot_type)
  search_text = normalize_string(search_text)
  local ret_mas = {}
  for _,prot in pairs(mas) do
    if string.match(prot.name:lower(), search_text)  then
      table.insert(ret_mas, {name = prot.name, type = prot_type})
    end
  end 
  return ret_mas
end
--utils
function find_items(search_text)
  return find_prototypes(game.item_prototypes, search_text, "itemName")
end
--utils
function find_fluids(search_text)
  return find_prototypes(game.fluid_prototypes, search_text, "fluidName")
end
--utils
function normalize_string(str)
  if not str then str = "" end
  return string.gsub(str, "%p", "%%%0")
end
--utils
function get_crafting_category_table()
  local category_tb = {}
  for _,item in pairs(game.item_prototypes) do
    local entity = item.place_result
    if entity ~= nil and entity.crafting_categories then
      for category,v in pairs(entity.crafting_categories) do
        table.insert(category_tb, {name = category, entity = entity.name})
      end
    end 
  end 
  return category_tb
end
--utils
function get_madein_list(recipe)
  local ret_tb = {}
  local cat_tb = get_crafting_category_table()
  if recipe then
    local rec_cat = recipe.category
    
    for _,elem in pairs(cat_tb) do
      if (rec_cat == elem.name) then
        table.insert(ret_tb, {name = elem.entity, type = "itemName"})
      end
    end
  end
  return ret_tb
end
--utils
function get_craft_recipe_list(player, element_name)
  local recipes = player.force.recipes
  local ret_recipe = {}
  for _,recipe in pairs(recipes) do
    if not (recipe.name:find("-flaring") or recipe.name:find("-barrel") or recipe.name:find("-incineration")) then
      for _,product in pairs(recipe.products) do
        if (product.name == element_name) then
          table.insert(ret_recipe, recipe)
        end
      end
    end
  end
  return ret_recipe
end
--utils
function get_usage_recipe_list(player, element_name)
  local recipes = player.force.recipes
  local ret_recipe = {}
  for _,recipe in pairs(recipes) do
    if not (recipe.name:find("-flaring") or recipe.name:find("-barrel") or recipe.name:find("-incineration")) then
      for _,ingredient in pairs(recipe.ingredients) do
        if (ingredient.name == element_name) then
          table.insert(ret_recipe, recipe)
        end
      end
    end
  end
  return ret_recipe
end
--utils
function sort_enable_recipe_list(list)
  local ret_list = {}
  for _,recipe in pairs(list) do
    if recipe and recipe.enabled then
      table.insert(ret_list, recipe)
    end
  end
  for _,recipe in pairs(list) do
    if recipe and not recipe.enabled then
      table.insert(ret_list, recipe)
    end
  end
  return ret_list
end
--utils
function element_exist(element_name)
  local items = find_items(search_text)
  local fluids = find_fluids(search_text)
  for _,prot in pairs(items) do
    if prot.name == element_name then
      return true
    end
  end 
  for _,prot in pairs(fluids) do
    if prot.name == element_name then
      return true
    end
  end 

  return false
end
--utils
function get_technologies(player, recipe_name)
  local techs = player.force.technologies
  local ret_tech = nil

  for _,tech in pairs(techs) do
    for _,modifier in pairs(tech.effects) do
      if modifier.type == "unlock-recipe" and modifier.recipe == recipe_name then
        ret_tech = tech
        break
      end
    end
  end

  return ret_tech
end

function get_localised_name(ingr)
  local elem = nil
  if ingr.type == "fluid" then
    elem = game.fluid_prototypes[ingr.name]
  elseif ingr.type == "item" then
    elem = game.item_prototypes[ingr.name]
  end
  if elem == nil then
    return "unknown element"
  else
    return elem.localised_name
  end
end

function get_elem_amount(elem)
  local amt = elem.amount
  if amt == nil then 
    return 0
  else
    return amt
  end
end

function get_elem_prob(elem)
  local prob = elem.probability
  if prob == nil then 
    return 0
  else
    return prob * 100
  end
end

function get_gui(player, dir)
  if dir == "center" then
    return player.gui.center
  elseif dir == "left"then
    return player.gui.left
  elseif dir == "top" then
    return player.gui.top
  else
    player.print("utils: get_gui: invalid direction: "..dir)
  end
end
