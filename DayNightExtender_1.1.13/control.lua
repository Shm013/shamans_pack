-- debug_status = 1
debug_mod_name = "DayNightExtender"
debug_file = debug_mod_name .. "-debug.txt"
require("utils")
require("config")


--------------------------------------------------------------------------------------
local function init_globals()
	-- initialize or update general globals of the mod
	debug_print( "init_globals" )
	
	global.counter = global.counter or 0
	global.multiplier = global.multiplier or math.floor(day_length_multiplier)
end

--------------------------------------------------------------------------------------
local function on_init() 
	-- called once, the first time the mod is loaded on a game (new or existing game)
	debug_print( "on_init" )
	
	init_globals()
end

script.on_init(on_init)

--------------------------------------------------------------------------------------
local function on_configuration_changed(data)
	-- detect any mod or game version change
	if data.mod_changes ~= nil then
		local changes = data.mod_changes[debug_mod_name]
		if changes ~= nil then
			debug_print( "update mod: ", debug_mod_name, " ", tostring(changes.old_version), " to ", tostring(changes.new_version) )
		
			init_globals()
		end
	end
end

script.on_configuration_changed(on_configuration_changed)

--------------------------------------------------------------------------------------
local function on_tick(event)
	if game.tick % 14 == 0 then
		for _, surf in pairs(game.surfaces) do
			if not surf.always_day then
				if global.counter == 0 then
				surf.freeze_daytime = false
				elseif global.counter == 1 then
				surf.freeze_daytime = true
				end
			end
		end
		
		global.counter = global.counter + 1
		if global.counter >= global.multiplier then
			global.counter = 0
		end
	end
end

script.on_event(defines.events.on_tick, on_tick)

--------------------------------------------------------------------------------------

local interface = {}

function interface.on( )
	debug_print( "on" )
	
	message_all( "DayNightExtender : ON" )
	
	script.on_event(defines.events.on_tick, on_tick)
end

function interface.off( )
	debug_print( "off" )
	
	message_all( "DayNightExtender : OFF" )
	
	script.on_event(defines.events.on_tick, nil)
	
	for _, surf in pairs(game.surfaces) do
		surf.freeze_daytime = false
	end
end

function interface.multi( m )
	debug_print( "multi" )
	
	m = tonumber(m)
	
	if m ~= nil then
		m = math.max(1,math.floor(m))
		message_all( "DayNightExtender : multiplier = " .. m )
	
		global.multiplier = m
		
		if global.multiplier == 1 then
			interface.off()
		else
			interface.on()
		end
	end
end

remote.add_interface( "daynight", interface )

-- /c remote.call( "daynight", "on" )
-- /c remote.call( "daynight", "off" )
-- /c remote.call( "daynight", "multi", 4 )
