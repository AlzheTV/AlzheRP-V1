RegisterServerEvent('anticheat:esadmin')
AddEventHandler('anticheat:esadmin',function()
	local player = source
	TriggerEvent('es:getPlayerFromId', player, function(user)
		local esadmin = user.getGroup()
		if esadmin == "superadmin" or esadmin == "admin" or esadmin == "mod" then 
			TriggerClientEvent('anticheat:recibo',player,1)
		else
			TriggerClientEvent('anticheat:recibo',player,0)
		end
	end)
end)

