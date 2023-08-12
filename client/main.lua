RegisterNetEvent(GetCurrentResourceName()..":set", function (health, armour)
    SetEntityHealth(PlayerPedId(), health)
    SetPedArmour(PlayerPedId(), armour)
end)

CreateThread(function ()
    Wait(10000)
    TriggerServerEvent(GetCurrentResourceName()..":get")
    while true do
        Wait(Config.SaveInterval)
        TriggerServerEvent(GetCurrentResourceName()..":save", GetEntityHealth(PlayerPedId()), GetPedArmour(PlayerPedId()))
    end
end)