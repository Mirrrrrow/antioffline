AddEventHandler('playerDropped', function(reason)
    local player = source
    local ped = GetPlayerPed(player)
    local playerCoords = GetEntityCoords(ped)
    TriggerClientEvent('checkDistance', -1, playerCoords, GetPlayerName(player), reason)
end)


