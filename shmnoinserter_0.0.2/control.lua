--    Shaman's tweaks - Disable Bob's inserter button
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


if not shmmods then shmmods = {} end
if not shmmods.tweaks then shmmods.tweaks = {} end

function shmmods.tweaks.noinserter(player_index)
    local player = game.players[player_index]

    if player.gui.top.bob_logistics_inserter_gui then
        player.gui.top.bob_logistics_inserter_gui.destroy()
    end

    if player.gui.top.bob_logistics_inserter_button then
        player.gui.top.bob_logistics_inserter_button.destroy()
    end
end

script.on_configuration_changed(function(event)
    for i, player in pairs(game.players) do
        shmmods.tweaks.noinserter(player.index)
    end
end)

script.on_init(function(event)
    for i, player in pairs(game.players) do
        shmmods.tweaks.noinserter(player.index)
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    shmmods.tweaks.noinserter(event.player_index)
end)

script.on_event(defines.events.on_player_joined_game, function(event)
    shmmods.tweaks.noinserter(event.player_index)
end)
