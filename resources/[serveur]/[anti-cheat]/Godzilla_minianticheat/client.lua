local esadm = 0
local prevPos 

 function get3DDistance(x1, y1, z1, x2, y2, z2)
    local a = (x1 - x2) * (x1 - x2)
    local b = (y1 - y2) * (y1 - y2)
    local c = (z1 - z2) * (z1 - z2)
    return math.sqrt(a + b + c)
end

RegisterNetEvent('anticheat:recibo')
AddEventHandler('anticheat:recibo',function(var)
	if var == 1 then
		esadm = 1
	else
		esadm = 0
	end
	Citizen.Trace(esadm)
end)

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if get3DDistance(currentPos,prevPos) > 1 then 
				if get3DDistance(pos2.x,pos2.y,pos2.z,272.88,-1258.96,24.52) < 10 then --pongo las opciones de lugares que el juego te hace teleport( 1- hospital)
				else
					Citizen.Trace("hoka")
				end
			end

			prevPos = currentPos
		end
	end
end)

