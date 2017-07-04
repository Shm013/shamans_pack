require("defines")

-- Notify user to uninstall the obsolete mods.
local has_long_mine = mods[long_mine_research.mod_id]
local has_long_pickup = mods[long_pickup_research.mod_id]
local has_long_loot = mods[long_loot_research.mod_id]
if has_long_mine or has_long_pickup or has_long_loot then
	local mod_names = ""
	if has_long_mine then
		mod_names = mod_names .. "\nLong Reach Research - Mine (long-mine-research)"
	end
	if has_long_pickup then
		mod_names = mod_names .. "\nLong Reach Research - Pickup (long-pickup-research)"
	end
	if has_long_loot then
		mod_names = mod_names .. "\nLong Reach Research - Loot (long-loot-research)"
	end
	
	error("Please uninstall the following mods. They have been combined into Long Reach Research v0.4.0:" .. mod_names)
end

require("prototypes/technology")