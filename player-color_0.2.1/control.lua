require("defines")

-- Creates the change-player-color button on top for the given player if it has not been created.
local function create_change_player_color_button_for_player(player)
	local top = player.gui.top
	if not top[player_color_defines.names.gui.change_color_button] then
		top.add{type = "button", name = player_color_defines.names.gui.change_color_button, style = player_color_defines.names.gui_style.change_color_button, tooltip = {"gui.change-player-color"}}
	end
end

-- Initializes the button for all players for new game.
script.on_init(function()
	for _, player in pairs(game.players) do
		create_change_player_color_button_for_player(player)
	end
end)

-- Initializes the button for the new player when one is created.
script.on_event(defines.events.on_player_created, function(event)
	create_change_player_color_button_for_player(game.players[event.player_index])
end)

-- Opens or closes the color picker for changing player color if the button is clicked.
script.on_event(defines.events.on_gui_click, function(event)
	local element = event.element
	local player = game.players[event.player_index]
	local left = player.gui.left
	if element.name == player_color_defines.names.gui.change_color_button then
		if left[player_color_defines.names.gui.color_picker] then
			left[player_color_defines.names.gui.color_picker].destroy()
		else
			local color_picker = remote.call("color-picker", "add_instance",
			{
				parent = left,
				container_name = player_color_defines.names.gui.color_picker,
				title_caption = {"gui.change-player-color"},
				color = player.color,
				show_ok_button = true
			})
			color_picker.style.left_padding = 8
		end
	end
end)

-- Change the player color when the color of a color picker is changed.
script.on_event(remote.call("color-picker", "on_color_updated"), function(event)
	local player = game.players[event.player_index]
	if event.container.name == player_color_defines.names.gui.color_picker then
		player.color = event.color
	end
end)

-- Dismiss the color picker when the OK button is clicked.
script.on_event(remote.call("color-picker", "on_ok_button_clicked"), function(event)
	if event.container.name == player_color_defines.names.gui.color_picker then
		event.container.destroy()
	end
end)