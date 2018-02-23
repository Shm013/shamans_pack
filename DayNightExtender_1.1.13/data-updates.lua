require( "config" )

local function multiply_buffer(capa)
	local n, unit = string.match(capa, "([%d%.]+)(%a+)")
	if n == nil then return( "0MJ" ) end
	return( n * day_length_multiplier .. unit )
end

if adapted_accumulators then
	-- data.raw.accumulator.accumulator.energy_source.buffer_capacity = 5 * day_length_multiplier .. "MJ"

	for _, accu in pairs(data.raw.accumulator) do
		if accu.energy_source and accu.energy_source.buffer_capacity then
			accu.energy_source.buffer_capacity = multiply_buffer(accu.energy_source.buffer_capacity)
		end
	end
end

