local everyoneAllowed = false -- Autorise tout le monde.
local allowed = 
{
	"steam:110000115c5095e" -- STEAM HEX. VIRGULES sauf pour le DERNIER STEAMHEX.
}

AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fix" then
		CancelEvent()
		if everyoneAllowed == true then
			TriggerClientEvent('alzhe:fix', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('alzhe:fix', source)
			else
				TriggerClientEvent('alzhe:noPerms', source)
			end
		end
	end
end)

function checkAllowed(id)
	for k, v in pairs(allowed) do
		if id == v then
			return true
		end
	end
	
	return false
end