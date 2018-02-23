USABLE_FLUID = {}
USABLE_FLUID["crude-oil"] = {
	fuel_value = "2500KJ",
	fuel_acceleration_multiplier = 1,
	fuel_top_speed_multiplier = 1
}
USABLE_FLUID["heavy-oil"] = {
	fuel_value = "2500KJ",
	fuel_acceleration_multiplier = 1.8,
	fuel_top_speed_multiplier = 1.3
}
USABLE_FLUID["light-oil"] = {
	fuel_value = "2500KJ",
	fuel_acceleration_multiplier = 3,
	fuel_top_speed_multiplier = 1.05
}
-- for diesel-fuel from KS_power
USABLE_FLUID["diesel-fuel"] = {
	fuel_value = "2500KJ",
	fuel_acceleration_multiplier = 3,
	fuel_top_speed_multiplier = 1.3
}

TANK_CAPACITY = 8000
-- Affects maximum fluid capacity the locomotive can hold for each of 3 tanks

IDLE_TICK_BUFFER = 70

SLOW_UPDATE_TICK = 30

TICK_UPDATE = true
--[[ if this value is false, the train won't update fuel when idle, only when it is going to arrive or leave train stop.
	Affects performance, turn to false if your game start lagging ]]