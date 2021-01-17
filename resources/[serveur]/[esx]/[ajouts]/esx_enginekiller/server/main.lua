ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Make the kit usable!
ESX.RegisterUsableItem('enginekiller', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if Config.AllowMecano then
		TriggerClientEvent('esx_enginekiller:onUse', _source)
	else
		if xPlayer.job.name ~= 'mecano' then
			TriggerClientEvent('esx_enginekiller:onUse', _source)
		end
	end
end)

RegisterNetEvent('esx_enginekiller:removeKiller')
AddEventHandler('esx_enginekiller:removeKiller', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if not Config.InfiniteEngineKillers then
		xPlayer.removeInventoryItem('enginekiller', 1)
		TriggerClientEvent('esx:showNotification', _source, _U('used_killer'))
	end
end)