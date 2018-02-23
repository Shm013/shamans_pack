--    shmfaststart - part of Shaman's factorio mod pack
--    Copyright (C) 2017 Nikolay Shamanovich
--
--    This program is free software you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.


require "config"

script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]

    -- Remove all from inventory
    player.clear_items_inside()
	
    -- Set properly inventory
	for _,item in pairs(shmmods.tweaks.startitems) do
		if game.item_prototypes[item[1]] ~= nul then
			player.insert{name=item[1], count=item[2]}
		end
	end
end)
