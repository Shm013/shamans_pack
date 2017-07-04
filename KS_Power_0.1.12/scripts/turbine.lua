require "util"

function find_turbines(surface)
	if global.wind_turbine == nil then
		global.wind_turbine = {}
	for c in surface.get_chunks() do
  for key, wind_turbine in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="wind-turbine"})) do

      table.insert(global.wind_turbine, wind_turbine)
  end
end
--game.players[1].print("Migrated Wind Turbines")
end
end

function migrate_turbines(surface)
  if global.wind_interfaces then return end
  global.wind_turbine = nil
  global.turbine_index = nil
  local array = {}
  local count = 1
  local power = 10000*surface.wind_speed
  local rand = math.random
  for k, entity in pairs (surface.find_entities_filtered{name = "wind-turbine-2"}) do
    array[count] = entity; count = count + 1
    entity.energy = 1000
    local this_power = power * (rand()+0.5)
    entity.power_production = this_power
    entity.electric_output_flow_limit = this_power
  end
  global.wind_interfaces = array
  global.wind_interfaces_max_count = count
  global.wind_interfaces_index = 1
end

function check_interfaces()
  local count = global.wind_interfaces_index
  if not count then count = 1 end
  local array = global.wind_interfaces
  if not array then array = {} end
  local max = global.wind_interfaces_max_count
  if not max then max = 1 end
  local entity = array[count]
  if entity then
    if entity.valid then
      local power = 10000*entity.surface.wind_speed
      entity.energy = 1000
      local this_power = power * (math.random()+0.5)
      entity.power_production = this_power
      entity.electric_output_flow_limit = this_power
    else
      array[count] = nil
    end
  end
  if count >= max then
    count = 1
  else
    count = count + 1
  end
  global.wind_interfaces_index = count
  global.wind_interfaces = array
  global.wind_interfaces_max_count = max
end

function built_interface(entity)
  if not entity.valid then return end
  local count = global.wind_interfaces_max_count + 1
  local power = 10000*entity.surface.wind_speed
  global.wind_interfaces[count] = entity
  entity.energy = 1000
  entity.power_production = power
  entity.electric_output_flow_limit = power
  global.wind_interfaces_max_count = count
end


function change_wind_hour()

	if global.wind_hour == nil
		then global.wind_hour = 0.02
	end
global.wind_hour = math.random(5,40)/1000
end

function change_wind_day()
	if global.wind_day == nil
		then global.wind_day = 1
		end

	global.wind_day = math.random(80,120)/100
end

function tick_wind()
if global.wind_hour == nil
		then global.wind_hour = 0.02
end

if global.wind_day == nil
		then global.wind_day = 1
end	
--game.players[1].print("wind ticked")


  for k, s in pairs(game.surfaces) do
    local nv = global.wind_hour * global.wind_day
    local v = s.wind_speed
    if v ~= nil then
      if nv > v then       
        dv = (nv-v)/45
        s.wind_speed = v + dv      
      end

      if nv < v then
        dv = (v-nv)/45
        s.wind_speed = v - dv
      end
    end
  end
end
				
			
