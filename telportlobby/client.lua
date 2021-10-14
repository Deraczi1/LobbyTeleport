

----------------------------
--(Made By Deraczi)--
----------------------------

ESX               = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(25)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

----- Komenda

RegisterCommand("lobby", function(source)

    TriggerEvent("pNotify:SendNotification",{
        text = '<b><i style="color: red;" class="fas fa-shield-alt"></i> ZA 5 SEKUNDY ZOSTANIESZ PRZETELEPORTOWANY</span>',
        type = "error",
        timeout = (5000),
        layout = "centerLeft",
        queue = "global"
    })

    
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'demo', 0.2)

    Citizen.Wait(5000)
    SetEntityCoords(playerPed, -1133.28, 4931.32, 219.83, false, false, false, true)
end, false)



