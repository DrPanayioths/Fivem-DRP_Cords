-- Set Dev_Status To "enable" Or "disable"
local Dev_status = "enable"
local Perm_Level = "non_users"  -- Set To "everyone" or "non_users"















-- DONT EDIT Below That Point
if Dev_status == "enable" then
    if Perm_Level == "non_users" then
        Player = exports["es_extended"]:getSharedObject()
        RegisterCommand("gc", function()
            print(Player.PlayerData.group)
            if Player.PlayerData.group ~= 'user' then
                local playerPed = PlayerPedId()
                local coords = GetEntityCoords(playerPed)
                print("Your coordinates: " .. tostring(coords))
            else
                print("Not Allowed To Use That Command")
            end
        end, false)
    
    elseif Perm_Level == "everyone" then
        RegisterCommand("gc", function()
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            print("Your coordinates: " .. tostring(coords))
        end, false)
    end
end