---
-- Description of the module.
-- @module Product
--
local Product = {
  -- single-line comment
  classname = "HMProduct"
}

local lua_product = nil

-------------------------------------------------------------------------------
-- Load factorio Product
--
-- @function [parent=#Product] load
--
-- @param #object object
--
-- @return #Product
--
function Product.load(object)
  lua_product = object
  return Product
end

-------------------------------------------------------------------------------
-- Return localised name of Prototype
--
-- @function [parent=#Product] getLocalisedName
--
-- @return #table
--
function Product.getLocalisedName()
  Logging:debug(Product.classname, "getLocalisedName()", lua_product)
  if lua_product ~= nil then
    if not(Player.getSettings("display_real_name", true)) then
      local localisedName = lua_product.name
      if lua_product.type == 0 or lua_product.type == "item" then
        local item = Player.getItemPrototype(lua_product.name)
        if item ~= nil then
          localisedName = item.localised_name
        end
      end
      if lua_product.type == 1 or lua_product.type == "fluid" then
        local item = Player.getFluidPrototype(lua_product.name)
        if item ~= nil then
          localisedName = item.localised_name
        end
      end
      return localisedName
    else
      return lua_product.name
    end
  end
  return "unknow"
end

-------------------------------------------------------------------------------
-- new prototype model
--
-- @function [parent=#Product] new
--
-- @return #table
--
function Product.new()
  local prototype = {
    type = lua_product.type,
    name = lua_product.name,
    amount = Product.getElementAmount(lua_product)
  }
  return prototype
end

-------------------------------------------------------------------------------
-- Return factorio Product
--
-- @function [parent=#Product] native
--
-- @return #lua_product
--
function Product.native()
  return lua_product
end

-------------------------------------------------------------------------------
-- Get amount of element
--
-- @function [parent=#Product] getElementAmount
--
-- @param #table element
--
-- @return #number
--
-- @see http://lua-api.factorio.com/latest/Concepts.html#Product
--
function Product.getElementAmount(element)
  Logging:debug(Product.classname, "getElementAmount",element)
  if element == nil then return 0 end

  if element.amount ~= nil then
    return element.amount
  end

  if element.probability ~= nil and element.amount_min ~= nil and  element.amount_max ~= nil then
    return ((element.amount_min + element.amount_max) * element.probability / 2)
  end

  return 0
end

-------------------------------------------------------------------------------
-- Get amount of element
--
-- @function [parent=#Product] getAmount
--
-- @param #table recipe
--
-- @return #number
--
function Product.getAmount(recipe)
  Logging:debug(Product.classname, "getAmount(recipe)",lua_product)
  local amount = Product.getElementAmount(lua_product)
  return amount + amount * recipe.factory.effects.productivity
end

-------------------------------------------------------------------------------
-- Count product
--
-- @function [parent=#Product] countProduct
--
-- @param #table recipe
--
-- @return #number
--
function Product.countProduct(recipe)
  Logging:debug(Product.classname, "countProduct",lua_product)
  local amount = Product.getElementAmount(lua_product)
  return (amount + amount * recipe.factory.effects.productivity ) * recipe.count
end

-------------------------------------------------------------------------------
-- Count ingredient
--
-- @function [parent=#Product] countIngredient
--
-- @param #table recipe
--
-- @return #number
--
function Product.countIngredient(recipe)
  Logging:debug(Product.classname, "countIngredient",lua_product)
  local amount = Product.getElementAmount(lua_product)
  return amount * recipe.count
end

-------------------------------------------------------------------------------
-- Count container
--
-- @function [parent=#Product] countContainer
--
-- @param #number count
-- @param #string container name
--
-- @return #number
--
function Product.countContainer(count, container)
  Logging:debug(Product.classname, "countContainer",lua_product)
  if lua_product.type == 0 or lua_product.type == "item" then
    EntityPrototype.load(container)
    local cargo_wagon_size = EntityPrototype.getInventorySize(1)
    if EntityPrototype.getType() ~= "logistic-robot" then
      if EntityPrototype.getInventorySize(2) ~= nil and EntityPrototype.getInventorySize(2) > EntityPrototype.getInventorySize(1) then
        cargo_wagon_size = EntityPrototype.getInventorySize(2)
      end
      local stack_size = ItemPrototype.load(lua_product.name).stackSize()
      if cargo_wagon_size * stack_size == 0 then return 0 end
      return count / (cargo_wagon_size * stack_size)
    else
      cargo_wagon_size = EntityPrototype.native().max_payload_size + (Player.getForce().worker_robots_storage_bonus or 0 )
      return count / cargo_wagon_size
    end
  end
  if lua_product.type == 1 or lua_product.type == "fluid" then
    local cargo_wagon_size = EntityPrototype.load(container).getFluidCapacity()
    if cargo_wagon_size == 0 then return 0 end
    return count / cargo_wagon_size
  end
end

return Product
