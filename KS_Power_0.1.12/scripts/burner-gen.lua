require "util"



function find_burners(surface)
	if global.burner == nil then
		global.burner = {}
	for c in surface.get_chunks() do
  for key, burner in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="burner-generator"})) do

      table.insert(global.burner, burner)
  end
end
--game.players[1].print("Migrated Burner Generators")
end
end



same_pot = {type = "water", amount = 300, temperature = 15}

function on_built_burner_gen(entity)
  if not entity.valid then return end
  if not global.topup_pots then global.topup_pots = {} end
  if not global.transfer_pots then global.transfer_pots = {} end
  local box = entity.fluidbox
  box[1] = same_pot
  local gen = entity.surface.create_entity{name = "burner-generator-power", position = entity.position, force= game.forces.neutral, direction = entity.direction}
  table.insert(global.topup_pots, box)
  table.insert(global.transfer_pots, {box, gen.fluidbox})
end

function migrate_old_pots()
  if not global.burner then return end
  global.topup_pots = {}
  global.transfer_pots = {}
  for k, surface in pairs (game.surfaces) do
    for j, v in pairs  (surface.find_entities_filtered{name = "burner-generator"}) do
      table.insert(global.topup_pots, v.fluidbox)
      table.insert(global.transfer_pots, {v.fluidbox, surface.find_entity("burner-generator-power",v.position).fluidbox})
    end
  end
end

function update_pots()
  if not global.topup_pots then return end
  if not global.transfer_pots then return end
  local tick = game.tick
  local offset = 0
  --game.print(#global.topup_pots)
  for k, box in pairs (global.topup_pots) do
    if ((k - offset) + tick) % 512 == 0 then
      if box.valid then
        box[1] = same_pot
        --box.owner.surface.create_entity{name = "flying-text", text = "!", position = box.owner.position}
      else
        table.remove(global.topup_pots, k-offset)
        table.remove(global.transfer_pots, k-offset)
        offset = offset + 1
      end
    end
  end
  for k, transfer in pairs (global.transfer_pots) do
    if (k + tick) % 512 == 0 then
      burner_gen_transfer(transfer)
    end
  end
end

function burner_gen_transfer(boxes)
  local source = boxes[1]
  if not source then return end
  if not source.valid then return end
  local output = boxes[2]
  if not output then return end
  if not output.valid then return end
  local hot_pot = source[2]
  if not hot_pot then return end
  local hot_amount = hot_pot.amount
  local amount_to_transfer = hot_amount
  local input_pot = output[1]
  local new_amount = math.min(amount_to_transfer, 300)
  if input_pot and input_pot.amount then
    new_amount = math.min(amount_to_transfer+input_pot.amount, 300)
    amount_to_transfer = new_amount - input_pot.amount
  end
  --game.print("Transferred")
  output[1] = {type = "steam", amount = new_amount, temperature = 165}
  if hot_amount - amount_to_transfer >= 0 then
    source[2] = {type = "steam", amount = (hot_amount - amount_to_transfer), temperature = 165}
  else
    source[2] = {type = "steam", amount = 0, temperature = 165}
  end
end
