SavedPlayers = {}

RegisterNetEvent(GetCurrentResourceName()..":save", function (health, armour)
    if SavedPlayers[GetPlayerName(source)] ~= nil then
        SavedPlayers[GetPlayerName(source)] = {h = health, a = armour}
    else
        SavedPlayers[GetPlayerName(source)] = {h = 200, a = 0}
    end
end)

RegisterNetEvent(GetCurrentResourceName()..":get", function ()
    if SavedPlayers[GetPlayerName(source)] ~= nil then
        SavedPlayers[GetPlayerName(source)] = {h = health, a = armour}
        TriggerClientEvent(GetCurrentResourceName()..":set", source, SavedPlayers[GetPlayerName(source)].h, SavedPlayers[GetPlayerName(source)].a)
    else
        TriggerClientEvent(GetCurrentResourceName()..":set", source, 200, 0)
    end
end)