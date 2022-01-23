RegisterNetEvent('checkDistance')
AddEventHandler('checkDistance', function (targetCoords, name,reason)
    if GetDistanceBetweenCoords(targetCoords, GetEntityCoords(PlayerPedId())) < 45 then
        ShowNotification("Player " ..name.. " disconnected. (Reason: "..reason..")")
    end
end)

function ShowNotification(text)
	SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
	DrawNotification(false, true)
end