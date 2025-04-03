-- Set Dev_Status To "enable" Or "disable"
local Dev_status = "enable"

if Dev_Status == "enable" then
    RegisterCommand("gc", function()
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        print("Your coordinates: " .. tostring(coords))
    end, false)
elseif Dev_Status == "disable" then
end
