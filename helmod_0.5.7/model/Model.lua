------------------------------------------------------------------------------
-- Classe model
--
-- @module Model
--
Model = setclass("HMModel")

-------------------------------------------------------------------------------
-- Initialize model
--
-- @function [parent=#Model] init
--
-- @param #Controller parent parent
--
function Model.methods:init(parent)
  self.parent = parent
  self.player = self.parent.player

  self.capEnergy = -0.8
  self.capSpeed = -0.8

  self.version = "0.5.4"
end

-------------------------------------------------------------------------------
-- Get models
--
-- @function [parent=#Model] getModels
--
-- @param #LuaPlayer player
--
-- @return #table
--
function Model.methods:getModels(player)
  Logging:trace(self:classname(), "getModels():global.models:",global.models)
  local model_id = self.player:getGlobalGui(player, "model_id")
  local display_all_sheet = self.player:getSettings(nil, "display_all_sheet", true)
  local first_id = nil
  local reset_model_id = true
  local models = {}
  local global_models = global.models
  if self:countModel() > 0 then
    for _,model in pairs(global.models) do
      if self.player:isAdmin(player) and ( display_all_sheet or model.owner == "admin" ) then
        models[model.id] = model
        if first_id == nil then first_id = model.id end
        if model_id == model.id then reset_model_id = false end
      elseif model.owner == player.name or (model.share ~= nil and model.share > 0) then
        models[model.id] = model
        if first_id == nil then first_id = model.id end
        if model_id == model.id then reset_model_id = false end
      end
    end
  end
  if reset_model_id == true then
    self.player:getGlobalGui(player)["model_id"] = first_id
  end
  return models
end

-------------------------------------------------------------------------------
-- Get and initialize the model
--
-- @function [parent=#Model] newModel
--
-- @param #LuaPlayer player
--
-- @return #table
--
function Model.methods:newModel(player)
  Logging:trace(self:classname(), "getModel():",player)
  if global.model_id == nil then global.model_id = 1 end
  if global.models == nil then global.models = {} end
  local owner = player.name
  if owner == nil or owner == "" then owner = "admin" end
  global.model_id = global.model_id + 1
  local model = {}
  model.id = "model_"..global.model_id
  model.owner = owner
  model.blocks = {}
  model.ingredients = {}
  model.resources = {}
  model.powers = {}
  model.time = 1
  model.version = self.version
  global.models[model.id] = model

  self.player:getGlobalGui(player)["model_id"] = model.id
  return model
end

-------------------------------------------------------------------------------
-- Get and initialize the model
--
-- @function [parent=#Model] getModel
--
-- @param #LuaPlayer player
--
-- @return #table
--
function Model.methods:getModel(player)
  Logging:trace(self:classname(), "getModel():",player)
  local model_id = self.player:getGlobalGui(player, "model_id")
  if model_id == "new" then
    self:newModel(player)
  end

  model_id = self.player:getGlobalGui(player, "model_id")
  local models = self:getModels(player)
  local model = models[model_id]
  if model == nil then return self:newModel(player) end

  return model
end

-------------------------------------------------------------------------------
-- Remove a model
--
-- @function [parent=#Model] removeModel
--
-- @param #LuaPlayer player
-- @param #number model_id
--
function Model.methods:removeModel(player,model_id)
  Logging:trace(self:classname(), "removeModel():",player,model_id)
  global.models[model_id] = nil
  local models = self:getModels(player)
  local _,model = next(models)
  if model ~= nil then
    self.player:getGlobalGui(player)["model_id"] = model.id
  else
    self:newModel(player)
  end
end

-------------------------------------------------------------------------------
-- Remove a power
--
-- @function [parent=#Model] removePower
--
-- @param #LuaPlayer player
-- @param #number power_id
--
function Model.methods:removePower(player, power_id)
  Logging:trace(self:classname(), "removePower():",player, power_id)
  local model = self:getModel(player)
  if model.powers ~= nil then
    model.powers[power_id] = nil
  end
end

-------------------------------------------------------------------------------
-- Get Object
--
-- @function [parent=#Model] getObject
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
--
-- @return #table
--
function Model.methods:getObject(player, item, key)
  Logging:trace(self:classname(), "getObject():",player, item, key)
  local object = nil
  local model = self:getModel(player)
  if item == "resource" then
    object = model.resources[key]
  elseif model.blocks[item] ~= nil and model.blocks[item].recipes[key] ~= nil then
    object = model.blocks[item].recipes[key]
  end
  return object
end

-------------------------------------------------------------------------------
-- Get power
--
-- @function [parent=#Model] getPower
--
-- @param #LuaPlayer player
-- @param #string key power id
--
-- @return #table
--
function Model.methods:getPower(player, key)
  Logging:trace(self:classname(), "getPower():",player, key)
  local object = nil
  local model = self:getModel(player)
  if model.powers ~= nil and model.powers[key] ~= nil then
    object = model.powers[key]
  end
  return object
end



-------------------------------------------------------------------------------
-- Create Production Block model
--
-- @function [parent=#Model] createProductionBlockModel
--
-- @param #LuaPlayer player
-- @param #LuaRecipePrototype recipe
--
-- @return #table
--
function Model.methods:createProductionBlockModel(player, recipe)
  Logging:debug(self:classname(), "createProductionBlockModel():",player, recipe)
  local model = self:getModel(player)

  if model.block_id == nil then model.block_id = 0 end
  model.block_id = model.block_id + 1

  local inputModel = {}
  inputModel.id = "block_"..model.block_id
  inputModel.name = recipe.name
  inputModel.owner = player.name
  inputModel.count = 1
  inputModel.power = 0
  inputModel.ingredients = {}
  inputModel.products = {}
  inputModel.recipes = {}

  return inputModel
end

-------------------------------------------------------------------------------
-- Create beacon model
--
-- @function [parent=#Model] createBeaconModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #number count
--
-- @return #table
--
function Model.methods:createBeaconModel(player, name, count)
  Logging:debug(self:classname(), "createBeaconModel():",player, name, count)
  if name == nil then name = "beacon" end
  if count == nil then count = 0 end
  local beaconModel = {}
  beaconModel.name = "beacon"
  beaconModel.type = "item"
  beaconModel.active = false
  beaconModel.count = count
  beaconModel.energy_nominal = 480000
  beaconModel.energy = 0
  beaconModel.energy_total = 0
  beaconModel.combo = 4
  beaconModel.factory = 1.2
  beaconModel.efficiency = 0.5
  beaconModel.module_slots = 2
  -- limit infini = 0
  beaconModel.limit = 0
  beaconModel.limit_count = count
  -- modules
  beaconModel.modules = {}

  return beaconModel
end

-------------------------------------------------------------------------------
-- Create factory model
--
-- @function [parent=#Model] createFactoryModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #number count
--
-- @return #table
--
function Model.methods:createFactoryModel(player, name, count)
  Logging:debug(self:classname(), "createFactoryModel():",player, name, count)
  if name == nil then name = "assembling-machine-1" end
  if count == nil then count = 0 end

  local factoryModel = {}
  factoryModel.name = name
  factoryModel.type = "item"
  factoryModel.count = count
  factoryModel.energy_nominal = 90000
  factoryModel.energy = 0
  factoryModel.energy_total = 0
  factoryModel.speed_nominal = 0.5
  factoryModel.speed = 0
  factoryModel.module_slots = 0
  -- limit infini = 0
  factoryModel.limit = 0
  factoryModel.limit_count = count
  -- modules
  factoryModel.modules = {}

  return factoryModel
end

-------------------------------------------------------------------------------
-- Create Power model
--
-- @function [parent=#Model] createPowerModel
--
-- @param #LuaPlayer player
--
-- @return #table
--
function Model.methods:createPowerModel(player)
  Logging:debug(self:classname(), "createPowerModel():")
  local model = self.player:getGlobal(player, "model")

  if model.power_id == nil then model.power_id = 0 end
  model.power_id = model.power_id + 1

  local inputModel = {}
  inputModel.id = "power_"..model.power_id
  inputModel.power = 0
  inputModel.primary = {}
  inputModel.secondary = {}

  return inputModel
end

-------------------------------------------------------------------------------
-- Create generator model
--
-- @function [parent=#Model] createGeneratorModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #number count
--
-- @return #table
--
function Model.methods:createGeneratorModel(player, name, count)
  Logging:debug(self:classname(), "createGeneratorModel():", name, count)
  if name == nil then name = "steam-engine" end
  if count == nil then count = 0 end

  local itemModel = {}
  itemModel.name = name
  itemModel.type = "item"
  itemModel.count = count
  itemModel.fluid_usage = 0.1
  itemModel.effectivity = 1

  itemModel.energy_nominal = 90
  itemModel.energy = 0
  itemModel.energy_total = 0

  -- limit infini = 0
  itemModel.limit = 0
  itemModel.limit_count = count

  return itemModel
end

-------------------------------------------------------------------------------
-- Create ingredient model
--
-- @function [parent=#Model] createIngredientModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #string type
-- @param #number count
--
-- @return #table
--
function Model.methods:createIngredientModel(player, name, type, count)
  Logging:debug(self:classname(), "createIngredientModel():",player, name, count)
  if count == nil then count = 0 end

  local ingredientModel = {}
  ingredientModel.index = 1
  ingredientModel.name = name
  ingredientModel.weight = 0
  ingredientModel.type = type
  ingredientModel.count = count
  ingredientModel.recipes = {}
  ingredientModel.resource_category = nil

  local entity = self.player:getEntityPrototype(name)
  if entity ~= nil then
    ingredientModel.resource_category = entity.resource_category
  end

  return ingredientModel
end

-------------------------------------------------------------------------------
-- Count modules model
--
-- @function [parent=#Model] countModulesModel
--
-- @param #table element
--
-- @return #number
--
function Model.methods:countModulesModel(element)
  local count = 0
  for name,value in pairs(element.modules) do
    count = count + value
  end
  return count
end

-------------------------------------------------------------------------------
-- Add module model
--
-- @function [parent=#Model] addModuleModel
--
-- @param #table element
-- @param #string name
--
function Model.methods:addModuleModel(element, name)
  if element.modules[name] == nil then element.modules[name] = 0 end
  if self:countModulesModel(element) < element.module_slots then
    element.modules[name] = element.modules[name] + 1
  end
  if self:countModulesModel(element) > 0 then element.active = true end
end

-------------------------------------------------------------------------------
-- Remove module model
--
-- @function [parent=#Model] removeModuleModel
--
-- @param #table element
-- @param #string name
--
function Model.methods:removeModuleModel(element, name)
  if element.modules[name] == nil then element.modules[name] = 0 end
  if element.modules[name] > 0 then
    element.modules[name] = element.modules[name] - 1
  end
  if self:countModulesModel(element) == 0 then element.active = false end
end

-------------------------------------------------------------------------------
-- Create recipe model
--
-- @function [parent=#Model] createRecipeModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #number count
--
-- @return #table
--
function Model.methods:createRecipeModel(player, name, count)
  Logging:debug(self:classname(), "createRecipeModel():",player, name, count)
  local model = self:getModel(player)
  if model.recipe_id == nil then model.recipe_id = 0 end
  model.recipe_id = model.recipe_id + 1

  if count == nil then count = 1 end

  local recipeModel = {}
  recipeModel.id = "R"..model.recipe_id
  recipeModel.index = 1
  recipeModel.weight = 0
  recipeModel.name = name
  recipeModel.count = count
  recipeModel.energy = 0.5
  recipeModel.production = 1
  recipeModel.ingredients = {}
  recipeModel.products = {}
  recipeModel.factory = self:createFactoryModel(player)
  recipeModel.beacon = self:createBeaconModel(player)

  return recipeModel
end

-------------------------------------------------------------------------------
-- Create resource model
--
-- @function [parent=#Model] createResourceModel
--
-- @param #LuaPlayer player
-- @param #string name
-- @param #number count
--
-- @return #table
--
function Model.methods:createResourceModel(player, name, type, count)
  Logging:debug(self:classname(), "createResourceModel():",player, name, type, count)
  local model = self:getModel(player)
  if model.resource_id == nil then model.resource_id = 0 end
  model.resource_id = model.resource_id + 1

  if count == nil then count = 1 end

  local resourceModel = {}
  resourceModel.id = model.resource_id
  resourceModel.index = 1
  resourceModel.type = type
  resourceModel.name = name
  resourceModel.count = count
  resourceModel.factory = self:createFactoryModel(player)
  resourceModel.beacon = self:createBeaconModel(player)

  return resourceModel
end

-------------------------------------------------------------------------------
-- Count recipes
--
-- @function [parent=#Model] countRepices
--
-- @param #LuaPlayer player
--
-- @return #number
--
function Model.methods:countRepices(player)
  local model = self:getModel(player)
  local count = 0
  for key, recipe in pairs(model.recipes) do
    count = count + 1
  end
  return count
end

-------------------------------------------------------------------------------
-- Count ingredients
--
-- @function [parent=#Model] countIngredients
--
-- @param #LuaPlayer player
--
-- @return #number
--
function Model.methods:countIngredients(player)
  local model = self:getModel(player)
  local count = 0
  for key, recipe in pairs(model.ingredients) do
    count = count + 1
  end
  return count
end

-------------------------------------------------------------------------------
-- Count blocks
--
-- @function [parent=#Model] countBlocks
--
-- @param #LuaPlayer player
--
-- @return #number
--
function Model.methods:countBlocks(player)
  local model = self:getModel(player)
  local count = 0
  for key, recipe in pairs(model.blocks) do
    count = count + 1
  end
  return count
end

-------------------------------------------------------------------------------
-- Count powers
--
-- @function [parent=#Model] countPowers
--
-- @param #LuaPlayer player
--
-- @return #number
--
function Model.methods:countPowers(player)
  local model = self:getModel(player)
  local count = 0
  if model.powers ~= nil then
    for key, recipe in pairs(model.powers) do
      count = count + 1
    end
  end
  return count
end

-------------------------------------------------------------------------------
-- Count block recipes
--
-- @function [parent=#Model] countBlockRecipes
--
-- @param #LuaPlayer player
-- @param #string blockId
--
-- @return #number
--
function Model.methods:countBlockRecipes(player, blockId)
  Logging:debug(self:classname(), "countBlockRecipes():",player, blockId)
  local model = self:getModel(player)
  local count = 0
  if model.blocks[blockId] ~= nil then
    for key, recipe in pairs(model.blocks[blockId].recipes) do
      count = count + 1
    end
  end
  return count
end

-------------------------------------------------------------------------------
-- Count in list
--
-- @function [parent=#Model] countModel
--
-- @return #number
--
function Model.methods:countModel()
  local count = 0
  if global.models ~= nil then
    for key, element in pairs(global.models) do
      count = count + 1
    end
  end
  return count
end

-------------------------------------------------------------------------------
-- Count in list
--
-- @function [parent=#Model] countList
--
-- @param #table list
--
-- @return #number
--
function Model.methods:countList(list)
  local count = 0
  for key, element in pairs(list) do
    count = count + 1
  end
  return count
end

-------------------------------------------------------------------------------
-- Check and valid unlinked all blocks
--
-- @function [parent=#Model] checkUnlinkedBlocks
--
-- @param #LuaPlayer player
--
function Model.methods:checkUnlinkedBlocks(player)
  Logging:debug(self:classname(), "checkUnlinkedBlocks():",player)
  local model = self:getModel(player)
  if model.blocks ~= nil then
    for _,block in spairs(model.blocks,function(t,a,b) return t[b].index > t[a].index end) do
      self:checkUnlinkedBlock(player, block)
    end
  end
end

-------------------------------------------------------------------------------
-- Check and valid unlinked block
--
-- @function [parent=#Model] checkUnlinkedBlock
--
-- @param #LuaPlayer player
-- @param #table block
--
function Model.methods:checkUnlinkedBlock(player, block)
  Logging:debug(self:classname(), "checkUnlinkedBlock():",player, block)
  local model = self:getModel(player)
  local unlinked = true
  local recipe = self.player:getRecipe(player, block.name)
  if recipe ~= nil then
    if model.blocks ~= nil then
      for _, current_block in spairs(model.blocks,function(t,a,b) return t[b].index > t[a].index end) do
        if current_block.id == block.id then
          Logging:debug(self:classname(), "checkUnlinkedBlock():break",block.id)
          break
        end
        for _,ingredient in pairs(current_block.ingredients) do
          for _,product in pairs(recipe.products) do
            if product.name == ingredient.name then
              unlinked = false
            end
          end
        end
        if current_block.id ~= block.id and current_block.name == block.name then
          unlinked = true
        end
      end
    end
    block.unlinked = unlinked
  end
end
-------------------------------------------------------------------------------
-- Add a recipe into production block
--
-- @function [parent=#Model] addRecipeIntoProductionBlock
--
-- @param #LuaPlayer player
-- @param #string key recipe name
--
function Model.methods:addRecipeIntoProductionBlock(player, key)
  Logging:debug(self:classname(), "addRecipeIntoProductionBlock():",player, key)
  local model = self:getModel(player)
  local globalGui = self.player:getGlobalGui(player)
  local blockId = globalGui.currentBlock
  local lua_recipe = self.player:getRecipe(player, key)

  if lua_recipe ~= nil then
    -- ajoute le bloc si il n'existe pas
    if model.blocks[blockId] == nil then
      local modelBlock = self:createProductionBlockModel(player, lua_recipe)
      local index = self:countBlocks(player)
      modelBlock.index = index
      modelBlock.unlinked = unlinked
      model.blocks[modelBlock.id] = modelBlock
      blockId = modelBlock.id
      globalGui.currentBlock = blockId
      -- check si le block est independant
      self:checkUnlinkedBlock(player, modelBlock)
    end

    -- ajoute le recipe si il n'existe pas
    local ModelRecipe = self:createRecipeModel(player, lua_recipe.name, 0)
    local index = self:countBlockRecipes(player, blockId)
    ModelRecipe.is_resource = not(lua_recipe.force)
    ModelRecipe.energy = lua_recipe.energy
    ModelRecipe.category = lua_recipe.category
    ModelRecipe.group = lua_recipe.group.name
    ModelRecipe.ingredients = lua_recipe.ingredients
    ModelRecipe.products = lua_recipe.products
    ModelRecipe.index = index
    self:recipeReset(ModelRecipe)
    -- ajoute les produits du block
    for _, product in pairs(ModelRecipe.products) do
      model.blocks[blockId].products[product.name] = product
    end

    -- ajoute les ingredients du block
    for _, ingredient in pairs(ModelRecipe.ingredients) do
      model.blocks[blockId].ingredients[ingredient.name] = ingredient
    end
    model.blocks[blockId].recipes[ModelRecipe.id] = ModelRecipe

    local defaultFactory = self:getDefaultRecipeFactory(player, lua_recipe.name)
    if defaultFactory ~= nil then
      self:setFactory(player, blockId, ModelRecipe.id, defaultFactory)
    end
    local defaultBeacon = self:getDefaultRecipeBeacon(player, lua_recipe.name)
    if defaultBeacon ~= nil then
      self:setBeacon(player, blockId, ModelRecipe.id, defaultBeacon)
    end
    return model.blocks[blockId]
  end
end

-------------------------------------------------------------------------------
-- Add a primary power
--
-- @function [parent=#Model] addPrimaryPower
--
-- @param #LuaPlayer player
-- @param #string power_id power id
-- @param #string key generator name
--
function Model.methods:addPrimaryPower(player, power_id, key)
  Logging:debug(self:classname(), "addPrimaryPower():", power_id, key)
  local model = self:getModel(player)
  if model.powers == nil then model.powers = {} end
  local power = model.powers[power_id]
  if power == nil then
    power = self:createPowerModel(player)
    power_id = power.id
    power.primary = self:createGeneratorModel(player, key, 1)
    model.powers[power_id] = power
  end

  -- ajuste les donnees
  -- @see https://wiki.factorio.com/Power_production
  local classification = self.player:getEntityProperty(key, "type")
  if classification == "generator" then
    local fluid_usage = self.player:getEntityProperty(key, "fluid_usage_per_tick") or 0.1
    local effectivity = self.player:getEntityProperty(key, "effectivity") or 1
    local maximum_temperature = self.player:getEntityProperty(key, "maximum_temperature") or 165
    power.primary.name = key
    power.primary.fluid_usage = fluid_usage
    power.primary.effectivity = effectivity
    power.primary.maximum_temperature = maximum_temperature
    -- formula energy_nominal = fluid_usage * 60_tick * effectivity * (target_temperature - nominal_temp) * 1000 / 5
    -- @see https://wiki.factorio.com/Liquids/Hot
    power.primary.energy_nominal = fluid_usage*60*effectivity*(maximum_temperature-15)*1000/5
  end

  if classification == "solar-panel" then
    local production = self.player:getItemProperty(key, "production") or 60*1000
    local effectivity = 1
    power.primary.name = key
    power.primary.fluid_usage = 0
    power.primary.effectivity = effectivity
    power.primary.energy_nominal = production
  end


  return power
end

-------------------------------------------------------------------------------
-- Add a secondary power
--
-- @function [parent=#Model] addSecondaryPower
--
-- @param #LuaPlayer player
-- @param #string power_id power id
-- @param #string key generator name
--
function Model.methods:addSecondaryPower(player, power_id, key)
  Logging:debug(self:classname(), "addSecondaryPower():",player, key)
  local model = self:getModel(player)
  if model.powers == nil then model.powers = {} end
  local power = model.powers[power_id]
  if power == nil then
    power = self:createPowerModel(player)
    power_id = power.id
    model.powers[power_id] = power
  end
  if power.secondary == nil or power.secondary.name == nil then
    power.secondary = self:createGeneratorModel(player, key, 1)
  end
  -- ajuste les donnees
  -- @see https://wiki.factorio.com/Power_production
  local classification = self.player:getEntityProperty(key, "type")
  if classification == "boiler" then
    local energy_consumption = self.player:getEntityProperty(key, "max_energy_usage") or 0
    local effectivity = self.player:getEntityProperty(key, "electric_energy_source_prototype.effectivity") or 0.5
    power.secondary.name = key
    power.secondary.fluid_usage = 0
    power.secondary.energy_nominal = energy_consumption
    power.secondary.effectivity = effectivity
    power.secondary.buffer_capacity = nil
    power.secondary.input_flow_limit = nil
    power.secondary.output_flow_limit = nil
  end

  if classification == "accumulator" then
    local buffer_capacity = self.player:getEntityProperty(key, "electric_energy_source_prototype.buffer_capacity") or 5*1000*1000
    local input_flow_limit = self.player:getEntityProperty(key, "electric_energy_source_prototype.input_flow_limit") or 5*1000
    local output_flow_limit = self.player:getEntityProperty(key, "electric_energy_source_prototype.output_flow_limit") or 5*1000
    power.secondary.name = key
    power.secondary.fluid_usage = 0
    power.secondary.effectivity = nil
    power.secondary.energy_nominal = nil
    power.secondary.buffer_capacity = buffer_capacity
    power.secondary.input_flow_limit = input_flow_limit * 60
    power.secondary.output_flow_limit = output_flow_limit * 60
  end


  return power
end
-------------------------------------------------------------------------------
-- Update a product
--
-- @function [parent=#Model] updateProduct
--
-- @param #LuaPlayer player
-- @param #string blockId production block id
-- @param #string key product name
-- @param #number quantity
--
function Model.methods:updateProduct(player, blockId, key, quantity)
  Logging:debug(self:classname(), "updateProduct():",player, blockId, key, quantity)
  local model = self:getModel(player)

  if model.blocks[blockId] ~= nil then
    local block = model.blocks[blockId]
    if block.input == nil then block.input = {} end
    block.input[key] = quantity
  end
end

-------------------------------------------------------------------------------
-- Update a production block option
--
-- @function [parent=#Model] updateProductionBlockOption
--
-- @param #LuaPlayer player
-- @param #string blockId production block id
-- @param #string option
-- @param #number value
--
function Model.methods:updateProductionBlockOption(player, blockId, option, value)
  Logging:debug(self:classname(), "updateProductionBlockOption():",player, blockId, option, value)
  local model = self:getModel(player)

  if model.blocks[blockId] ~= nil then
    local block = model.blocks[blockId]
    block[option] = value
  end
end

-------------------------------------------------------------------------------
-- Set the beacon
--
-- @function [parent=#Model] setBeacon
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
-- @param #string name beacon name
--
function Model.methods:setBeacon(player, item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    local beacon = self.player:getEntityPrototype(name)
    if beacon ~= nil then
      -- set global default
      self:setDefaultRecipeBeacon(player, item, key, beacon.name)

      object.beacon.name = beacon.name
      -- copy the default parameters
      object.beacon.energy_nominal = self.player:getEntityProperty(beacon.name, "energy_usage")
      object.beacon.module_slots = self.player:getEntityProperty(beacon.name, "module_slots")
      object.beacon.efficiency = self.player:getItemProperty(beacon.name, "efficiency")
    end
  end
end

-------------------------------------------------------------------------------
-- Update a beacon
--
-- @function [parent=#Model] updateBeacon
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
-- @param #table options map attribute/valeur
--
function Model.methods:updateBeacon(player, item, key, options)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    if options.energy_nominal ~= nil then
      object.beacon.energy_nominal = options.energy_nominal
    end
    if options.combo ~= nil then
      object.beacon.combo = options.combo
    end
    if options.factory ~= nil then
      object.beacon.factory = options.factory
    end
    if options.efficiency ~= nil then
      object.beacon.efficiency = options.efficiency
    end
    if options.module_slots ~= nil then
      object.beacon.module_slots = options.module_slots
    end
  end
end

-------------------------------------------------------------------------------
-- Add a module in beacon
--
-- @function [parent=#Model] addBeaconModule
--
-- @param #LuaPlayer player
-- @param #string item
-- @param #string key object name
-- @param #string name module name
--
function Model.methods:addBeaconModule(player, item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    self:addModuleModel(object.beacon, name)
  end
end

-------------------------------------------------------------------------------
-- Remove a module in beacon
--
-- @function [parent=#Model] removeBeaconModule
--
-- @param #LuaPlayer player
-- @param #string item
-- @param #string key object name
-- @param #string name module name
--
function Model.methods:removeBeaconModule(player, item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    self:removeModuleModel(object.beacon, name)
  end
end

-------------------------------------------------------------------------------
-- Set a factory
--
-- @function [parent=#Model] setFactory
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
-- @param #string name factory name
--
function Model.methods:setFactory(player, item, key, name)
  Logging:debug(self:classname(), "setFactory():", item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    local factory = self.player:getEntityPrototype(name)
    if factory ~= nil then

      object.factory.name = factory.name
      --object.factory.type = factory.type

      object.factory.energy_nominal = self.player:getEntityProperty(factory.name, "energy_usage")

      object.factory.module_slots = self.player:getEntityProperty(factory.name, "module_slots")
      local speed_nominal = self.player:getEntityProperty(factory.name, "crafting_speed")
      local mining_speed = self.player:getEntityProperty(factory.name, "mining_speed")
      local mining_power = self.player:getEntityProperty(factory.name, "mining_power")
      if mining_speed ~= 0 and mining_power ~= 0 then
        local hardness = self.player:getEntityProperty(object.name, "mineable_properties.hardness")
        local mining_time = self.player:getEntityProperty(object.name, "mineable_properties.mining_time")
        -- (mining power - ore mining hardness) * mining speed
        -- @see https://wiki.factorio.com/Mining
        if mining_time ~= 0 then
          speed_nominal = (mining_power - hardness) * mining_speed / mining_time
        end
      end
      object.factory.speed_nominal = speed_nominal
    end
  end
end

-------------------------------------------------------------------------------
-- Update a object
--
-- @function [parent=#Model] updateObject
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
-- @param #table options
--
function Model.methods:updateObject(player, item, key, options)
  Logging:debug(self:classname(), "updateObject():",player, item, key, options)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    if options.production ~= nil then
      object.production = options.production
    end
  end
end

-------------------------------------------------------------------------------
-- Update a power
--
-- @function [parent=#Model] updatePower
--
-- @param #LuaPlayer player
-- @param #string key power id
-- @param #table options
--
function Model.methods:updatePower(player, key, options)
  Logging:debug(self:classname(), "updatePower():",player, options)
  local object = self:getPower(player, key)
  if object ~= nil then
    if options.power ~= nil then
      object.power = options.power*1000000
      self:computePower(player, key)
    end
  end
end

-------------------------------------------------------------------------------
-- Update a factory
--
-- @function [parent=#Model] updateFactory
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key object name
-- @param #table options
--
function Model.methods:updateFactory(player, item, key, options)
  Logging:debug(self:classname(), "updateFactory():",player, item, key, options)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    if options.energy_nominal ~= nil then
      object.factory.energy_nominal = options.energy_nominal
    end
    if options.speed_nominal ~= nil then
      object.factory.speed_nominal = options.speed_nominal
    end
    if options.module_slots ~= nil then
      object.factory.module_slots = options.module_slots
    end
    if options.limit ~= nil then
      object.factory.limit = options.limit
    end
  end
end

-------------------------------------------------------------------------------
-- Add a module in factory
--
-- @function [parent=#Model] addFactoryModule
--
-- @param #LuaPlayer player
-- @param #string item
-- @param #string key object name
-- @param #string name module name
--
function Model.methods:addFactoryModule(player, item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    self:addModuleModel(object.factory, name)
  end
end

-------------------------------------------------------------------------------
-- Remove a module from factory
--
-- @function [parent=#Model] removeFactoryModule
--
-- @param #LuaPlayer player
-- @param #string item
-- @param #string key object name
-- @param #string name module name
--
function Model.methods:removeFactoryModule(player, item, key, name)
  local object = self:getObject(player, item, key)
  if object ~= nil then
    self:removeModuleModel(object.factory, name)
  end
end

-------------------------------------------------------------------------------
-- Remove a production block
--
-- @function [parent=#Model] removeProductionBlock
--
-- @param #LuaPlayer player
-- @param #string blockId
--
function Model.methods:removeProductionBlock(player, blockId)
  Logging:debug(self:classname(), "removeProductionBlock()",player, blockId)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil then
    model.blocks[blockId] = nil
    self:reIndexList(model.blocks)
  end
end

-------------------------------------------------------------------------------
-- Remove a production recipe
--
-- @function [parent=#Model] removeProductionRecipe
--
-- @param #LuaPlayer player
-- @param #string blockId
-- @param #string key
--
function Model.methods:removeProductionRecipe(player, blockId, key)
  Logging:debug(self:classname(), "removeProductionRecipe()",player, blockId, key)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil and model.blocks[blockId].recipes[key] ~= nil then
    model.blocks[blockId].recipes[key] = nil
    self:reIndexList(model.blocks[blockId].recipes)
    -- change block name
    local first_recipe = self:firstRecipe(model.blocks[blockId].recipes)
    if first_recipe ~= nil then
      model.blocks[blockId].name = first_recipe.name
    end
  end
end

-------------------------------------------------------------------------------
-- Reindex list
--
-- @function [parent=#Model] reIndexList
--
-- @param #table list
--
function Model.methods:reIndexList(list)
  Logging:debug(self:classname(), "reIndexList()",list)
  local index = 0
  for _,element in spairs(list,function(t,a,b) return t[b].index > t[a].index end) do
    element.index = index
    index = index + 1
  end
end

-------------------------------------------------------------------------------
-- Unlink a production block
--
-- @function [parent=#Model] unlinkProductionBlock
--
-- @param #LuaPlayer player
-- @param #string blockId
--
function Model.methods:unlinkProductionBlock(player, blockId)
  Logging:debug(self:classname(), "unlinkProductionBlock()",player, blockId)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil then
    model.blocks[blockId].unlinked = not(model.blocks[blockId].unlinked)
  end
end

-------------------------------------------------------------------------------
-- Up a production block
--
-- @function [parent=#Model] upProductionBlock
--
-- @param #LuaPlayer player
-- @param #string blockId
-- @param #number step
--
function Model.methods:upProductionBlock(player, blockId, step)
  Logging:debug(self:classname(), "upProductionBlock()", blockId, step)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil then
    self:upProductionList(player, model.blocks, model.blocks[blockId].index, step)
  end
end

-------------------------------------------------------------------------------
-- Up a production recipe
--
-- @function [parent=#Model] upProductionRecipe
--
-- @param #LuaPlayer player
-- @param #string blockId
-- @param #string key
-- @param #number step
--
function Model.methods:upProductionRecipe(player, blockId, key, step)
  Logging:debug(self:classname(), "upProductionRecipe()", blockId, key, step)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil and model.blocks[blockId].recipes[key] ~= nil then
    self:upProductionList(player, model.blocks[blockId].recipes, model.blocks[blockId].recipes[key].index, step)
    -- change block name
    local first_recipe = self:firstRecipe(model.blocks[blockId].recipes)
    if first_recipe ~= nil then
      model.blocks[blockId].name = first_recipe.name
    end
  end
end

-------------------------------------------------------------------------------
-- Up in the list
--
-- @function [parent=#Model] upProductionList
--
-- @param #LuaPlayer player
-- @param #table list
-- @param #number index
-- @param #number step
--
function Model.methods:upProductionList(player, list, index, step)
  Logging:debug(self:classname(), "upProductionList()", list, index, step)
  local model = self:getModel(player)
  if list ~= nil and index > 0 then
    -- defaut step
    if step == nil then step = 1 end
    -- cap le step
    if step > index then step = index end
    for _,element in pairs(list) do
      if element.index == index then
        -- change l'index de l'element cible
        element.index = element.index - step
      elseif element.index >= index - step and element.index <= index then
        -- change les index compris entre index et index -step
        element.index = element.index + 1
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Down a production block
--
-- @function [parent=#Model] downProductionBlock
--
-- @param #LuaPlayer player
-- @param #string blockId
-- @param #number step
--
function Model.methods:downProductionBlock(player, blockId, step)
  Logging:debug(self:classname(), "downProductionBlock()", blockId, step)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil then
    self:downProductionList(player, model.blocks, model.blocks[blockId].index, step)
  end
end

-------------------------------------------------------------------------------
-- Down a production recipe
--
-- @function [parent=#Model] downProductionRecipe
--
-- @param #LuaPlayer player
-- @param #string blockId
-- @param #string key
-- @param #number step
--
function Model.methods:downProductionRecipe(player, blockId, key, step)
  Logging:debug(self:classname(), "downProductionRecipe()", blockId, key, step)
  local model = self:getModel(player)
  if model.blocks[blockId] ~= nil and model.blocks[blockId].recipes[key] ~= nil then
    self:downProductionList(player, model.blocks[blockId].recipes, model.blocks[blockId].recipes[key].index, step)
    -- change block name
    local first_recipe = self:firstRecipe(model.blocks[blockId].recipes)
    if first_recipe ~= nil then
      model.blocks[blockId].name = first_recipe.name
    end
  end
end

-------------------------------------------------------------------------------
-- Down in the list
--
-- @function [parent=#Model] downProductionList
--
-- @param #LuaPlayer player
-- @param #table list
-- @param #number index
-- @param #number step
--
function Model.methods:downProductionList(player, list, index, step)
  Logging:debug(self:classname(), "downProductionList()", list, index, step)
  local model = self:getModel(player)
  local list_count = self:countList(list)
  Logging:debug(self:classname(), "downProductionList()", list_count)
  if list ~= nil and index + 1 < self:countList(list) then
    -- defaut step
    if step == nil then step = 1 end
    -- cap le step
    if step > (list_count - index) then step = list_count - index - 1 end
    for _,element in pairs(list) do
      if element.index == index then
        -- change l'index de l'element cible
        element.index = element.index + step
        Logging:debug(self:classname(), "index element", element.index, element.index + step)
      elseif element.index > index and element.index <= index + step then
        -- change les index compris entre index et la fin
        element.index = element.index - 1
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Reset recipes
--
-- @function [parent=#Model] recipesReset
--
-- @param #LuaPlayer player
--
function Model.methods:recipesReset(player)
  Logging:debug(self:classname(), "recipesReset")
  local model = self:getModel(player)
  for key, recipe in pairs(model.recipes) do
    self:recipeReset(recipe)
  end
end

-------------------------------------------------------------------------------
-- Reset recipe
--
-- @function [parent=#Model] recipeReset
--
-- @param #ModelRecipe recipe
--
function Model.methods:recipeReset(recipe)
  Logging:debug(self:classname(), "recipeReset=",recipe)
  for index, product in pairs(recipe.products) do
    product.count = 0
  end
  for index, ingredient in pairs(recipe.ingredients) do
    ingredient.count = 0
  end
end

-------------------------------------------------------------------------------
-- Reset ingredients
--
-- @function [parent=#Model] ingredientsReset
--
-- @param #LuaPlayer player
--
function Model.methods:ingredientsReset(player)
  Logging:debug(self:classname(), "ingredientsReset()", player)
  local model = self:getModel(player)
  for k, ingredient in pairs(model.ingredients) do
    model.ingredients[ingredient.name].count = 0;
  end
end

-------------------------------------------------------------------------------
-- Update model
--
-- @function [parent=#Model] update
--
-- @param #LuaPlayer player
--
function Model.methods:update(player)
  Logging:debug(self:classname() , "********** update():",player)

  local model = self:getModel(player)

  -- reset all factories
  if model ~= nil and (model.version == nil or model.version ~= self.version) then
    Logging:debug(self:classname() , "********** version",self.version)
    if model.version == nil or model.version < "0.4.4" then
      model.resources = {}
      Logging:debug(self:classname() , "********** updated version 0.4.4")
    end
    if model.version == nil or model.version < "0.4.6.1" then
      self:checkUnlinkedBlocks(player)
      Logging:debug(self:classname() , "********** updated version 0.4.6.1")
    end
    if model.version == nil or model.version < "0.5.4" then
      for _, productBlock in pairs(model.blocks) do
        -- modify recipe id
        local recipes = {}
        for _, recipe in pairs(productBlock.recipes) do
          recipe.id = "R"..recipe.id
          recipes[recipe.id] = recipe
        end
        productBlock.recipes = recipes
        -- modify input
        if productBlock.input ~= nil and productBlock.input.key ~= nil then
          local key = productBlock.input.key
          local quantity = productBlock.input.quantity
          productBlock.input = {}
          productBlock.input[key] = quantity or 0
        end
      end
      Logging:debug(self:classname() , "********** updated version 0.5.4")
    end
    if model.blocks ~= nil then
      for _, productBlock in pairs(model.blocks) do
        for _, recipe in pairs(productBlock.recipes) do
          local factory = recipe.factory
          local beacon = recipe.beacon
          local _recipe = self.player:getRecipe(player, recipe.name)
          self:setFactory(player, productBlock.id, recipe.name, factory.name)
          self:setBeacon(player, productBlock.id, recipe.name, beacon.name)
          if _recipe ~= nil then
            recipe.is_resource = not(_recipe.force)
            if recipe.is_resource then recipe.category = "extraction-machine" end
          end
        end
      end
    end
  end

  if model.blocks ~= nil then
    -- calcul les blocks
    local input = {}
    for _, productBlock in spairs(model.blocks, function(t,a,b) return t[b].index > t[a].index end) do
      -- premiere recette
      local _,recipe = next(productBlock.recipes)
      if recipe ~= nil then
        if not(productBlock.unlinked) then
          for _,product in pairs(recipe.products) do
            if input[product.name] ~= nil then
              -- block linked
              if productBlock.input == nil then productBlock.input = {} end
              productBlock.input[product.name] = input[product.name]
            end
          end
        end

        self:computeProductionBlock(player, productBlock)

        -- compte les ingredients
        for _,ingredient in pairs(productBlock.ingredients) do
          if input[ingredient.name] == nil then
            input[ingredient.name] = ingredient.count
          else
            input[ingredient.name] = input[ingredient.name] + ingredient.count
          end
        end
        -- consomme les ingredients
        for _,product in pairs(productBlock.products) do
          if input[product.name] ~= nil then
            input[product.name] = input[product.name] - product.count
          end
        end
      end
    end


    self:computeInputOutput(player)

    self:computeResources(player)

    Logging:debug(self:classname(), "update():","Factory compute OK")
    -- genere un bilan
    self:createSummary(player)
    Logging:debug(self:classname(), "update():","Summary OK")

    Logging:debug(self:classname() , "********** model updated:",model)
  end
  model.version = self.version
end

-------------------------------------------------------------------------------
-- Get amount of element
--
-- @function [parent=#Model] getElementAmount
--
-- @param #table element
--
-- @return #number
--
-- @see http://lua-api.factorio.com/latest/Concepts.html#Product
--
function Model.methods:getElementAmount(element)
  Logging:debug(self:classname(), "getElementAmount",element)
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
-- Compute production block
--
-- @function [parent=#Model] computeProductionBlock
--
-- @param #LuaPlayer player
-- @param #table element production block model
-- @param #number maxLoop
-- @param #number level
-- @param #string path
--
function Model.methods:computeProductionBlock(player, element, maxLoop, level, path)
  Logging:debug(self:classname(), "computeProductionBlock():", element.name, maxLoop, level, path)
  local model = self:getModel(player)

  local recipes = element.recipes
  if recipes ~= nil then
    -- initialisation
    element.products = {}
    element.ingredients = {}
    element.power = 0
    element.count = 1

    local initProduct = false
    -- preparation produits et ingredients du block
    for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
      -- construit la list des ingredients
      for _, ingredient in pairs(recipe.ingredients) do
        if element.ingredients[ingredient.name] == nil then
          element.ingredients[ingredient.name] = {
            name = ingredient.name,
            type = ingredient.type,
            amount = ingredient.amount,
            count = 0
          }
        end
        -- initialise ingredient
        ingredient.count = 0
      end
    end
    for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
      -- construit la list des produits
      for _, product in pairs(recipe.products) do
        if element.products[product.name] == nil then
          element.products[product.name] = {
            name = product.name,
            type = product.type,
            count = 0,
            state = 0,
            amount = self:getElementAmount(product)
          }
          if not(element.ingredients[product.name]) then
            element.products[product.name].state = 1
          end
        end
        -- initialise product
        product.count = 0
      end
      -- limit les produits au premier recipe
      initProduct = true
    end


    -- calcul selon la factory
    if element.by_factory == true then
      -- initialise la premiere recette avec le nombre d'usine
      local first_recipe = self:firstRecipe(recipes)
      if first_recipe ~= nil then
        Logging:debug(self:classname(), "first_recipe",first_recipe)
        first_recipe.factory.count = element.factory_number
        self:computeModuleEffects(player, first_recipe)
        self:computeFactory(player, first_recipe)
        local _,first_product = next(first_recipe.products)
        if element.input == nil then element.input = {} end
        -- formula [product amount] * (1 + [productivity]) *[assembly speed]*[time]/[recipe energy]
        element.input[first_product.name] = self:getElementAmount(first_product) * (1 + first_recipe.factory.effects.productivity) * ( element.factory_number or 0 ) * first_recipe.factory.speed * model.time / first_recipe.energy
      end
    end

    if element.input ~= nil then
      local input_computed = {}
      for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
        local production = 1
        if recipe.production ~= nil then production = recipe.production end
        -- initialise la premiere recette avec le input
        for _, product in pairs(recipe.products) do
          if input_computed[product.name] == nil and element.input[product.name] ~= nil then
            local p_amount = self:getElementAmount(product)
            local i_amount = 0

            -- consolide product.count
            if recipe.is_resource ~= true then
              for k, ingredient in pairs(recipe.ingredients) do
                if ingredient.name == product.name then
                  i_amount = self:getElementAmount(ingredient)
                end
              end
            end

            if element.ingredients[product.name] == nil then
              element.ingredients[product.name] = {
                name = product.name,
                type = "fake",
                amount = 0,
                count = 0
              }
            end
            element.ingredients[product.name].count = element.input[product.name] * (p_amount/(p_amount-i_amount))
            if product.count > 0 then input_computed[product.name] = true end
          end
        end
      end
    end

    Logging:debug(self:classname() , "********** initialized:", element)

    -- ratio pour le calcul du nombre de block
    local ratio = 1
    local ratioRecipe = nil
    -- calcul ordonnee sur les recipes du block
    for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
      local mainProduct = nil
      local production = 1
      if recipe.production ~= nil then production = recipe.production end
      -- prepare les produits
      for _, product in pairs(recipe.products) do
        if element.ingredients[product.name] ~= nil then
          product.count = element.ingredients[product.name].count*production
        end
      end
      -- check produit pilotant
      -- @see http://lua-api.factorio.com/latest/Concepts.html#Product
      for _, product in pairs(recipe.products) do
        if mainProduct == nil then
          mainProduct = product
        elseif product.count/self:getElementAmount(product) > mainProduct.count/self:getElementAmount(mainProduct) then
          mainProduct = product
        end
      end
      -- consolide les produits
      if #recipe.products > 1 then
        -- met a jour le produit
        for index, product in pairs(recipe.products) do
          if product.name ~= mainProduct.name then
            product.count = (mainProduct.count*self:getElementAmount(product)/self:getElementAmount(mainProduct))
          end
        end
      end

      self:computeModuleEffects(player, recipe)

      -- compute ingredients
      local pCount = mainProduct.count;
      for k, ingredient in pairs(recipe.ingredients) do
        local productNominal = self:getElementAmount(mainProduct)
        local productUsage = self:getElementAmount(mainProduct)
        -- calcul factory productivity effect
        productUsage = productUsage + productNominal * recipe.factory.effects.productivity
        -- consolide la production
        local amount = ingredient.amount
        for k, product in pairs(recipe.products) do
          if ingredient.name == product.name then
            amount = amount - self:getElementAmount(product)
          end
        end
        --local nextCount = math.ceil(pCount*(ingredient.amount/productUsage))
        local nextCount = pCount*(ingredient.amount/productUsage)
        ingredient.count = nextCount

        element.ingredients[ingredient.name].count = element.ingredients[ingredient.name].count + nextCount
      end

      self:computeFactory(player, recipe)

      element.power = element.power + recipe.energy_total

      if type(recipe.factory.limit) == "number" and recipe.factory.limit > 0 then
        local currentRatio = recipe.factory.limit/recipe.factory.count
        if currentRatio < ratio then
          ratio = currentRatio
          ratioRecipe = recipe.index
          -- block number
          element.count = recipe.factory.count/recipe.factory.limit
          -- subblock energy
          element.sub_power = 0
          if element.count ~= nil and element.count > 0 then
            element.sub_power = math.ceil(element.power/element.count)
          end
        end
      end

      Logging:debug(self:classname() , "********** Compute before clean:", element)

      -- reduit les produits du block
      -- state = 0 => produit
      -- state = 1 => produit pilotant
      -- state = 2 => produit restant
      for _, product in pairs(recipe.products) do
        -- compte les produits
        if element.products[product.name] ~= nil then
          element.products[product.name].count = element.products[product.name].count + product.count
        end
        -- consomme les produits
        if element.ingredients[product.name] ~= nil then
          element.ingredients[product.name].count = element.ingredients[product.name].count - product.count
        end
      end
      for _, ingredient in pairs(recipe.ingredients) do
        -- consomme les ingredients
        if recipe.is_resource ~= true and element.products[ingredient.name] ~= nil then
          element.products[ingredient.name].count = element.products[ingredient.name].count - ingredient.count
        end
      end
      Logging:debug(self:classname() , "********** Compute after clean:", element)
    end

    if element.count < 1 then
      element.count = 1
    end

    -- reduit les engredients fake du block
    for _, ingredient in pairs(element.ingredients) do
      if ingredient.type == "fake" then element.ingredients[ingredient.name] = nil end
    end

    -- reduit les produits du block
    for _, product in pairs(element.products) do
      if element.ingredients[product.name] ~= nil then
        product.state = product.state + 2
      end
      if element.products[product.name].count < 0.01 and not(bit32.band(product.state, 1) > 0) then
        element.products[product.name] = nil
      end
    end

    -- reduit les ingredients du block
    for _, ingredient in pairs(element.ingredients) do
      if element.ingredients[ingredient.name].count < 0.01 then
        element.ingredients[ingredient.name] = nil
      end
    end

    -- calcul ratio
    for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
      recipe.factory.limit_count = recipe.factory.count*ratio
      recipe.beacon.limit_count = recipe.beacon.count*ratio
      if ratioRecipe ~= nil and ratioRecipe == recipe.index then
        recipe.factory.limit_count = recipe.factory.limit
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Return first recipe of block
--
-- @function [parent=#Model] firstRecipe
--
-- @param #table recipes
--
function Model.methods:firstRecipe(recipes)
  for _, recipe in spairs(recipes,function(t,a,b) return t[b].index > t[a].index end) do
    return recipe
  end
end

-------------------------------------------------------------------------------
-- Compute input and output
--
-- @function [parent=#Model] computeInputOutput
--
-- @param #LuaPlayer player
-- @param #ModelRecipe recipe
-- @param #number maxLoop
-- @param #number level
-- @param #string path
--
function Model.methods:computeInputOutput(player)
  Logging:debug(self:classname(), "computeInputOutput():",player)
  local model = self:getModel(player)
  model.products = {}
  model.ingredients = {}

  local index = 1
  for _, element in spairs(model.blocks, function(t,a,b) return t[b].index > t[a].index end) do
    -- count product
    for _, product in pairs(element.products) do
      if model.products[product.name] == nil then
        model.products[product.name] = self:createIngredientModel(player, product.name, product.type)
        model.products[product.name].index = index
        index = index + 1
      end
      model.products[product.name].count = model.products[product.name].count + product.count
    end
    -- count ingredient
    for _, ingredient in pairs(element.ingredients) do
      if model.ingredients[ingredient.name] == nil then
        model.ingredients[ingredient.name] = self:createIngredientModel(player, ingredient.name, ingredient.type)
        model.ingredients[ingredient.name].index = index
        index = index + 1
      end
      model.ingredients[ingredient.name].count = model.ingredients[ingredient.name].count + ingredient.count
    end
  end

  for _, element in spairs(model.blocks, function(t,a,b) return t[b].index > t[a].index end) do
    -- consomme les produits
    for _, ingredient in pairs(element.ingredients) do
      if model.products[ingredient.name] ~= nil then
        model.products[ingredient.name].count = model.products[ingredient.name].count - ingredient.count
        if model.products[ingredient.name].count < 0.01 then model.products[ingredient.name] = nil end
      end
    end
    -- consomme les ingredients
    for _, product in pairs(element.products) do
      if model.ingredients[product.name] ~= nil then
        model.ingredients[product.name].count = model.ingredients[product.name].count - product.count
        if model.ingredients[product.name].count < 0.01 then model.ingredients[product.name] = nil end
      end
    end
  end
end

-------------------------------------------------------------------------------
-- Compute resources
--
-- @function [parent=#Model] computeResources
--
-- @param #LuaPlayer player
-- @param #ModelRecipe recipe
-- @param #number maxLoop
-- @param #number level
-- @param #string path
--
function Model.methods:computeResources(player)
  Logging:debug(self:classname(), "computeResources():",player)
  local model = self:getModel(player)
  local resources = {}

  -- calcul resource
  for k, ingredient in pairs(model.ingredients) do
    if ingredient.resource_category ~= nil or ingredient.name == "water" then
      local resource = model.resources[ingredient.name]
      if resource ~= nil then
        resource.count = ingredient.count
      else
        resource = self:createResourceModel(player, ingredient.name, ingredient.type, ingredient.count)
      end

      if ingredient.resource_category == "basic-solid" then
        resource.category = "basic-solid"
      end
      if ingredient.name == "water" then
        resource.category = "basic-fluid"
      end
      if ingredient.name == "crude-oil" then
        resource.category = "basic-fluid"
      end

      resource.blocks = 1
      resource.wagon = nil
      resource.storage = nil
      local ratio = 1

      -- compute storage
      if resource.category == "basic-solid" then
        resource.wagon = {type="item", name="cargo-wagon"}
        resource.wagon.count = math.ceil(resource.count/2000)
        resource.wagon.limit_count = math.ceil(resource.wagon.count * ratio)

        resource.storage = {type="item", name="steel-chest"}
        resource.storage.count = math.ceil(resource.count/(48*50))
        resource.storage.limit_count = math.ceil(resource.storage.count * ratio)
      elseif resource.category == "basic-fluid" then
        --resource.wagon = {type="item", name="cargo-wagon"}
        --resource.wagon.count = math.ceil(resource.count/2000)

        resource.storage = {type="item", name="storage-tank"}
        resource.storage.count = math.ceil(resource.count/2400)
        resource.storage.limit_count = math.ceil(resource.storage.count * ratio)
      end
      resources[resource.name] = resource
    end
  end
  model.resources = resources
end

-------------------------------------------------------------------------------
-- Get productions list
--
-- @function [parent=#Model] getRecipeByProduct
--
-- @param #ModelRecipe recipe
--
-- @return #table
--
function Model.methods:getRecipeByProduct(player, element)
  Logging:trace(self:classname(), "getRecipeByProduct=",element)
  local model = self:getModel(player)
  local recipes = {}
  for key, recipe in pairs(model.recipes) do
    for index, product in pairs(recipe.products) do
      if product.name == element.name then
        table.insert(recipes,recipe)
      end
    end
  end
  return recipes
end

-------------------------------------------------------------------------------
-- Compute module effects of factory
--
-- @function [parent=#Model] computeModuleEffects
--
-- @param #LuaPlayer player
-- @param #ModelObject object
--
function Model.methods:computeModuleEffects(player, object)
  Logging:debug(self:classname(), "computeModuleEffects()",object.name)

  local factory = object.factory
  factory.effects = {speed = 0, productivity = 0, consumption = 0}
  -- effet module factory
  for module, value in pairs(factory.modules) do
    local speed_bonus = self.player:getModuleBonus(module, "speed")
    local productivity_bonus = self.player:getModuleBonus(module, "productivity")
    local consumption_bonus = self.player:getModuleBonus(module, "consumption")
    factory.effects.speed = factory.effects.speed + value * speed_bonus
    factory.effects.productivity = factory.effects.productivity + value * productivity_bonus
    factory.effects.consumption = factory.effects.consumption + value * consumption_bonus
  end
  -- effet module beacon
  if object.beacon.active then
    for module, value in pairs(object.beacon.modules) do
      local speed_bonus = self.player:getModuleBonus(module, "speed")
      local productivity_bonus = self.player:getModuleBonus(module, "productivity")
      local consumption_bonus = self.player:getModuleBonus(module, "consumption")
      factory.effects.speed = factory.effects.speed + value * speed_bonus * object.beacon.efficiency * object.beacon.combo
      factory.effects.productivity = factory.effects.productivity + value * productivity_bonus * object.beacon.efficiency * object.beacon.combo
      factory.effects.consumption = factory.effects.consumption + value * consumption_bonus * object.beacon.efficiency * object.beacon.combo
    end
  end

  -- cap la vitesse a self.capSpeed
  if factory.effects.speed < self.capSpeed  then factory.effects.speed = self.capSpeed end

  -- cap l'energy a self.capEnergy
  if factory.effects.consumption < self.capEnergy  then factory.effects.consumption = self.capEnergy end

end

-------------------------------------------------------------------------------
-- Compute energy, speed, number of factory for recipes
--
-- @function [parent=#Model] computeFactory
--
-- @param #LuaPlayer player
-- @param #ModelObject object
--
function Model.methods:computeFactory(player, object)
  Logging:debug(self:classname(), "computeFactory()",object.name)

  -- effet speed
  object.factory.speed = object.factory.speed_nominal * (1 + object.factory.effects.speed)

  -- effet consumption
  local energy_type = self.player:getEntityProperty(object.factory.name, "energy_type")
  if energy_type ~= "burner" then
    object.factory.energy = object.factory.energy_nominal * (1 + object.factory.effects.consumption)
  else
    object.factory.energy = 0
  end

  -- compte le nombre de machines necessaires
  if object.products ~= nil then
    local product = nil
    for k, element in pairs(object.products) do
      product = element
    end
    --Logging:trace(self:classname() , "********** product=",product)
    if product ~= nil then
      local model = self:getModel(player)
      -- [nombre d'item] * [effort necessaire du recipe] / ([la vitesse de la factory] * [nombre produit par le recipe] * [le temps en second])
      local count = product.count*object.energy/(object.factory.speed*self:getElementAmount(product)*(1 + object.factory.effects.productivity)*model.time)
      if object.factory.speed == 0 then count = 0 end
      object.factory.count = count
      if object.beacon.active then
        object.beacon.count = count/object.beacon.factory
      else
        object.beacon.count = 0
      end
    end
  else
    local product = object
    local model = self:getModel(player)
    -- [nombre d'item] / ([la vitesse de la factory] * [le temps en second])
    local count = product.count/(object.factory.speed*model.time)
    if object.factory.speed == 0 then count = 0 end
    object.factory.count = count
    if object.beacon.active then
      object.beacon.count = count/object.beacon.factory
    else
      object.beacon.count = 0
    end
  end

  object.beacon.energy = object.beacon.energy_nominal
  -- calcul des totaux
  object.factory.energy_total = math.ceil(object.factory.count*object.factory.energy)
  object.beacon.energy_total = math.ceil(object.beacon.count*object.beacon.energy)
  object.energy_total = object.factory.energy_total + object.beacon.energy_total
  -- arrondi des valeurs
  object.factory.speed = object.factory.speed
  object.factory.energy = math.ceil(object.factory.energy)
  object.beacon.energy = math.ceil(object.beacon.energy)
end

-------------------------------------------------------------------------------
-- Compute energy, speed, number total
--
-- @function [parent=#Model] createSummary
--
-- @param #LuaPlayer player
--
function Model.methods:createSummary(player)
  local model = self:getModel(player)
  model.summary = {}
  model.summary.factories = {}
  model.summary.beacons = {}
  model.summary.modules = {}

  local energy = 0

  -- cumul de l'energie des blocks
  for _, block in pairs(model.blocks) do
    energy = energy + block.power
    for _, recipe in pairs(block.recipes) do
      self:computeSummaryFactory(player, recipe)
    end
  end

  model.summary.energy = energy

  model.generators = {}
  -- formule 20 accumulateur /24 panneau solaire/1 MW
  model.generators["accumulator"] = {name = "accumulator", type = "item", count = 20*math.ceil(energy/(1000*1000))}
  model.generators["solar-panel"] = {name = "solar-panel", type = "item", count = 24*math.ceil(energy/(1000*1000))}
  model.generators["steam-engine"] = {name = "steam-engine", type = "item", count = math.ceil(energy/(510*1000))}

end

-------------------------------------------------------------------------------
-- Compute summary factory
--
-- @function [parent=#Model] computeSummaryFactory
--
-- @param #LuaPlayer player
-- @param object object
--
function Model.methods:computeSummaryFactory(player, object)
  local model = self:getModel(player)
  -- calcul nombre factory
  local factory = object.factory
  if model.summary.factories[factory.name] == nil then model.summary.factories[factory.name] = {name = factory.name, type = "item", count = 0} end
  model.summary.factories[factory.name].count = model.summary.factories[factory.name].count + factory.count
  -- calcul nombre de module factory
  for module, value in pairs(factory.modules) do
    if model.summary.modules[module] == nil then model.summary.modules[module] = {name = module, type = "item", count = 0} end
    model.summary.modules[module].count = model.summary.modules[module].count + value * factory.count
  end
  -- calcul nombre beacon
  local beacon = object.beacon
  if model.summary.beacons[beacon.name] == nil then model.summary.beacons[beacon.name] = {name = beacon.name, type = "item", count = 0} end
  model.summary.beacons[beacon.name].count = model.summary.beacons[beacon.name].count + beacon.count
  -- calcul nombre de module beacon
  for module, value in pairs(beacon.modules) do
    if model.summary.modules[module] == nil then model.summary.modules[module] = {name = module, type = "item", count = 0} end
    model.summary.modules[module].count = model.summary.modules[module].count + value * beacon.count
  end
end

-------------------------------------------------------------------------------
-- Compute power
--
-- @function [parent=#Model] computePower
--
-- @param #LuaPlayer player
-- @param key power id
--
function Model.methods:computePower(player, key)
  local power = self:getPower(player, key)
  Logging:debug(self:classname(), "computePower():", key, power)
  if power ~= nil then
    local primary_classification = self.player:getEntityProperty(power.primary.name, "type")
    local secondary_classification = self.player:getEntityProperty(power.secondary.name, "type")
    if primary_classification == "generator" then
      -- calcul primary
      local count = math.ceil(power.power/(power.primary.energy_nominal))
      power.primary.count = count or 0
      -- calcul secondary
      if secondary_classification ~= nil and secondary_classification == "boiler" then
        local count = math.ceil(power.power/(power.secondary.energy_nominal))
        power.secondary.count = count or 0
      else
        power.secondary.count = 0
      end
    end
    if primary_classification == "solar-panel" then
      -- calcul primary
      local count = math.ceil(power.power/(power.primary.energy_nominal))
      power.primary.count = count or 0
      -- calcul secondary
      if secondary_classification ~= nil and secondary_classification == "accumulator" then
        local factor = 2
        -- ajout energy pour accumulateur
        local gameDay = {day=12500,dust=5000,night=2500,dawn=2500}
        -- selon les aires il faut de l'accu en dehors du jour selon le trapese journalier
        local accu=(gameDay.dust/factor+gameDay.night+gameDay.dawn/factor)/(gameDay.day)
        -- puissance nominale la nuit
        local count1 = power.power/(power.secondary.output_flow_limit)
        -- puissance durant la penombre
        -- formula (puissance*durree_penombre)/(60s*capacite)
        local count2 = power.power*(gameDay.dust/factor+gameDay.night+gameDay.dawn/factor)/(60*power.secondary.buffer_capacity)

        Logging:debug(self:classname() , "********** computePower result:", accu, count1, count2)
        if count1 > count2 then
          power.secondary.count = count1 or 0
        else
          power.secondary.count = count2 or 0
        end
        power.primary.count = count*(1+accu) or 0
      else
        power.secondary.count = 0
      end
    end
  end
end
-------------------------------------------------------------------------------
-- Get and initialize the default
--
-- @function [parent=#Model] getDefault
--
-- @param #LuaPlayer player
--
-- @return #table
--
function Model.methods:getDefault(player)
  local default = self.player:getGlobal(player, "default")

  if default.recipes == nil then default.recipes = {} end

  return default
end

-------------------------------------------------------------------------------
-- Get the default recipe
--
-- @function [parent=#Model] getDefaultRecipe
--
-- @param #LuaPlayer player
-- @param #string key recipe name
--
function Model.methods:getDefaultRecipe(player, key)
  local default = self:getDefault(player)
  if default.recipes[key] == nil then
    default.recipes[key] = {
      name = key,
      factory = nil,
      beacon = nil
    }
  end
  return default.recipes[key]
end

-------------------------------------------------------------------------------
-- Get speed of the factory
--
-- @function [parent=#Model] getSpeedFactory
--
-- @param #LuaPlayer player
-- @param #string key factory name
--
-- @return #string
--
function Model.methods:getSpeedFactory(player, key)
      local crafting_speed = self.player:getEntityProperty(key, "crafting_speed")
      if crafting_speed ~= 0 then return crafting_speed end
      local mining_speed = self.player:getEntityProperty(key, "mining_speed")
      local mining_power = self.player:getEntityProperty(key, "mining_power")
      if mining_speed ~= 0 and mining_power ~= 0 then return mining_speed * mining_power end
      return 0
end
-------------------------------------------------------------------------------
-- Get the factory of recipe
--
-- @function [parent=#Model] getDefaultRecipeFactory
--
-- @param #LuaPlayer player
-- @param #string key recipe name
--
-- @return #string
--
function Model.methods:getDefaultRecipeFactory(player, key)
  local default = self:getDefault(player)
  local lua_recipe = self.player:getRecipe(player, key)
  if lua_recipe ~= nil then
    local factories = self.player:getProductionsCrafting(lua_recipe.category, lua_recipe.name)
    local default_factory_level = self.player:getSettings(player, "default_factory_level")
    local factory_level = 1
    if default_factory_level == "fast" then
      factory_level = 100
    else
      factory_level = tonumber(default_factory_level)
    end
    local level = 1
    local lua_factory = nil
    local last_factory = nil
    for _, factory in spairs(factories, function(t,a,b) return self:getSpeedFactory(player, t[b].name) > self:getSpeedFactory(player, t[a].name) end) do
      if level == factory_level then lua_factory = factory end
      last_factory = factory
      level = level + 1
      Logging:debug(self:classname(), "default factory:", last_factory.name, self:getSpeedFactory(player, last_factory.name))
    end
    if lua_factory ~= nil then return lua_factory.name end
    if last_factory ~= nil then return last_factory.name end
  end
  return nil
end

-------------------------------------------------------------------------------
-- Set a beacon for recipe
--
-- @function [parent=#Model] setDefaultRecipeBeacon
--
-- @param #LuaPlayer player
-- @param #string item block_id or resource
-- @param #string key recipe name
-- @param #string name factory name
--
function Model.methods:setDefaultRecipeBeacon(player, item, key, name)
  local object = self:getObject(player, item, key)
  local recipe = self:getDefaultRecipe(player, object.name)
  recipe.beacon = name
end

-------------------------------------------------------------------------------
-- Get the beacon of recipe
--
-- @function [parent=#Model] getDefaultRecipeBeacon
--
-- @param #LuaPlayer player
-- @param #string key recipe name
--
-- @return #string
--
function Model.methods:getDefaultRecipeBeacon(player, key)
  local default = self:getDefault(player)
  if default.recipes[key] == nil then
    return nil
  end
  return default.recipes[key].beacon
end
