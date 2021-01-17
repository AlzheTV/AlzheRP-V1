local callActive = false
local haveTarget = false
local isCall = false
local work = {}
local target = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        -- Press E key to get the call
        if IsControlJustPressed(1, 38) and callActive then
			if isCall == false then
				TriggerServerEvent("call:getCall", work)
				SendNotification("Appel pris en charge.")
				target.blip = AddBlipForCoord(target.pos.x, target.pos.y, target.pos.z)
				SetBlipRoute(target.blip, true)
				haveTarget = true
				isCall = true
				callActive = false
			else
				SendNotification("Vous avez déjà un appel en cours.")
			end
        -- Press Y key to decline the call
        elseif IsControlJustPressed(1, 246) and callActive then
            SendNotification("Vous avez refusé l'appel.")
            callActive = false
        end
        if haveTarget then
            DrawMarker(1, target.pos.x, target.pos.y, target.pos.z-1, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 255, 255, 0, 200, 0, 0, 0, 0)
            local playerPos = GetEntityCoords(GetPlayerPed(-1), true)
            if Vdist(target.pos.x, target.pos.y, target.pos.z, playerPos.x, playerPos.y, playerPos.z) < 2.0 then
                RemoveBlip(target.blip)
                haveTarget = false
				isCall = false
            end
        end
    end
end)

RegisterNetEvent("call:cancelCall")
AddEventHandler("call:cancelCall", function()
	if haveTarget then
		RemoveBlip(target.blip)
        haveTarget = false
		isCall = false
	else
		TriggerEvent("itinerance:notif", "Vous n'avez aucun appel en cours.")
	end
end)

RegisterNetEvent("call:callIncoming")
AddEventHandler("call:callIncoming", function(job, pos, msg)
    callActive = true
    work = job
    target.pos = pos
    SendNotification("Appuyez sur ~g~E~s~ pour prendre l'appel ou ~g~Y~s~ pour le refuser")
    PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
    Citizen.Wait(300)
    PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
    Citizen.Wait(300)
    PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
    
	if work == "police" then
		SendNotification("~b~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "mecano" then
		SendNotification("~o~APPEL EN COURS:~w~ " ..tostring(msg))
	elseif work == "taxi" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "banker" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "biker" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "realestateagent" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "gouv" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "vigne" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "grocer" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "teamster" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "bahama" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "karting" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "avocat" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "unicorn" then
		SendNotification("~y~APPEL EN COURS:~w~ " ..tostring(msg))
		--SendNotification("Appuyez sur ~g~Y~s~ pour prendre l'appel ou ~g~L~s~ pour le refuser")
	elseif work == "ambulance" then
		SendNotification("~r~APPEL EN COURS:~w~ " ..tostring(msg))
	end
end)

RegisterNetEvent("call:taken")
AddEventHandler("call:taken", function()
    callActive = false
    SendNotification("L'appel a déjà été pris.")
end)

RegisterNetEvent("target:call:taken")
AddEventHandler("target:call:taken", function(taken)
    if taken == 1 then
        SendNotification("Quelqu'un arrive.")
    elseif taken == 0 then
        SendNotification("Aucune réponse du service.")
    elseif taken == 2 then
        SendNotification("Merci de rappeler dans quelques instants.")
    end
end)

-- If player disconnect, remove him from the inService server table
AddEventHandler('playerDropped', function()
	TriggerServerEvent("player:serviceOff", nil)
end)

function SendNotification(message)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
end
