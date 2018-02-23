require("config")

local fake_fluids = {}
for name, fluid in pairs(USABLE_FLUID) do
	if data.raw['fluid'][name] then
		for i=1,3 do
			local proxy = table.deepcopy(data.raw["item"]["rocket-fuel"])
			proxy.name = "Diesel-Locomotive-"..name.."-"..i
			proxy.flags = {"hidden"}
			proxy.fuel_value = fluid.fuel_value
			proxy.fuel_acceleration_multiplier = fluid.fuel_acceleration_multiplier
			proxy.fuel_top_speed_multiplier = fluid.fuel_top_speed_multiplier
			proxy.icon = data.raw['fluid'][name].icon
			proxy.stack_size = 4294967295
			proxy.fuel_category = "Diesel-Locomotive-fluid"
			proxy.order = i..i..i..i..i..i.."-Diesel-Locomotive-"..name
			proxy.localised_name = {"", {"fluid-name."..name}}
			table.insert(fake_fluids, proxy)
		end
	end
end

for name, prototype in pairs(data.raw['fluid']) do
	if not (USABLE_FLUID[name]) then
		for i=1,3 do
			local proxy = table.deepcopy(data.raw["item"]["rocket-fuel"])
			proxy.name = "Diesel-Locomotive-"..name.."-"..i
			proxy.flags = {"hidden"}
			proxy.fuel_value = "4.94065645841247E-324J"
			proxy.fuel_acceleration_multiplier = 1
			proxy.fuel_top_speed_multiplier = 1
			proxy.icon = data.raw['fluid'][name].icon
			proxy.stack_size = 4294967295
			proxy.fuel_category = "Diesel-Locomotive-fluid"
			proxy.order = i..i..i..i..i..i.."-Diesel-Locomotive-"..name
			proxy.localised_name = {"", {"fluid-name."..name}}
			table.insert(fake_fluids, proxy)
		end
	end
end
data:extend(fake_fluids)