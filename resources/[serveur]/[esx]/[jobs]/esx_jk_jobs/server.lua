ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_jk_jobs:setJobt')
AddEventHandler('esx_jk_jobs:setJobt', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("slaughterer", 0)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été ~g~embauché~w~.')
end)

RegisterServerEvent('esx_jk_jobs:setJobp')
AddEventHandler('esx_jk_jobs:setJobp', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("lumberjack", 0)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été ~g~embauché~w~.')
end)

RegisterServerEvent('esx_jk_jobs:setJobn')
AddEventHandler('esx_jk_jobs:setJobn', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("tailor", 0)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été ~g~embauché~w~.')
end)

RegisterServerEvent('esx_jk_jobs:setJobb')
AddEventHandler('esx_jk_jobs:setJobb', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("busdriver", 0)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été ~g~embauché~w~.')
end)

RegisterServerEvent('esx_jk_jobs:setJoba')
AddEventHandler('esx_jk_jobs:setJoba', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("unemployed", 0)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez été ~r~débauché~w~.')
end)