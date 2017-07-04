require "config"

-- check mod state
script.on_configuration_changed(function(data)
    -- midgame installation
    if data.mod_changes ~= nil and data.mod_changes["AsphaltRoads"] ~= nil and data.mod_changes["AsphaltRoads"].old_version == nil then
        -- anounce installation
        notification({"AR-notification-midgame-update", {"AR-prefix"}, data.mod_changes["AsphaltRoads"].new_version})

    -- midgame update
    elseif data.mod_changes ~= nil and data.mod_changes["AsphaltRoads"] ~= nil and data.mod_changes["AsphaltRoads"].old_version ~= nil then
        local oldver = data.mod_changes["AsphaltRoads"].old_version
        local newver = data.mod_changes["AsphaltRoads"].new_version
        notification({"AR-notification-new-version", {"AR-prefix"}, oldver, newver})
        for index, force in pairs(game.forces) do
            local technologies = force.technologies
            local recipes = force.recipes
            technologies["Arci-asphalt"].reload()
            recipes["Arci-asphalt"].reload()
            recipes["Arci-asphalt-hazard-white"].reload()
            recipes["Arci-asphalt-hazard-yellow"].reload()
            recipes["Arci-asphalt-hazard-red"].reload()
            recipes["Arci-asphalt-hazard-blue"].reload()
            recipes["Arci-asphalt-marking-white-straight"].reload()     
            recipes["Arci-asphalt-marking-white-diagonal"].reload()  
            recipes["Arci-asphalt-marking-white-corner-left"].reload()             
            recipes["Arci-asphalt-marking-white-corner-right"].reload()   
            recipes["Arci-asphalt-marking-yellow-straight"].reload()     
            recipes["Arci-asphalt-marking-yellow-diagonal"].reload()    
            recipes["Arci-asphalt-marking-yellow-corner-left"].reload()             
            recipes["Arci-asphalt-marking-yellow-corner-right"].reload()             
            recipes["Arci-asphalt-zebra-crossing"].reload()
            if technologies["Arci-asphalt"].researched then
                recipes["Arci-asphalt"].enabled = true
                recipes["Arci-asphalt-hazard-white"].enabled = true
                recipes["Arci-asphalt-hazard-yellow"].enabled = true
                recipes["Arci-asphalt-hazard-red"].enabled = true
                recipes["Arci-asphalt-hazard-blue"].enabled = true
                recipes["Arci-asphalt-marking-white-straight"].enabled = true   
                recipes["Arci-asphalt-marking-white-diagonal"].enabled = true 
                recipes["Arci-asphalt-marking-white-corner-left"].enabled = true
                recipes["Arci-asphalt-marking-white-corner-right"].enabled = true
                recipes["Arci-asphalt-marking-yellow-straight"].enabled = true    
                recipes["Arci-asphalt-marking-yellow-diagonal"].enabled = true      
                recipes["Arci-asphalt-marking-yellow-corner-left"].enabled = true
                recipes["Arci-asphalt-marking-yellow-corner-right"].enabled = true                
                recipes["Arci-asphalt-zebra-crossing"].enabled = true
            end
        end
    -- if other mods changed
    elseif data.mod_changes ~= nil then
        for index, force in pairs(game.forces) do
            force.recipes["Arci-asphalt"].reload()
        end
    end
end)

function notification(txt, force)
    if force ~= nil then
        force.print(txt)
    else
        for k, p in pairs (game.players) do
            game.players[k].print(txt)
        end
    end
end