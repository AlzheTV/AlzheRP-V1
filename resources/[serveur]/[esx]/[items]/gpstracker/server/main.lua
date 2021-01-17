ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('aracgps', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)


	TriggerClientEvent('ke_gps:aracgps', source)

end)




  RegisterServerEvent('ke_gps:zabierz')
  AddEventHandler('ke_gps:zabierz', function()
    local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('aracgps', 1)

end)

