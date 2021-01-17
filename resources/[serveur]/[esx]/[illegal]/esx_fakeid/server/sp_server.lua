ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_fakeid:SetFirstName')
AddEventHandler('esx_fakeid:SetFirstName', function(ID, firstName)
    local identifier = ESX.GetPlayerFromId(ID).identifier
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.getMoney() >= 250000 then
		local newfirstname = xPlayer.getName()
        xPlayer.removeMoney(250000)
		SetFirstName(identifier, firstName)
		xPlayer.showNotification('~hold~Ton nouveau prénom est~g~'.. newfirstname ..'~w~.')
	elseif xPlayer.getAccount('bank').money >= 250000 then
		local newfirstname = xPlayer.getName()
		xPlayer.removeAccountMoney('bank', 250000)
		SetFirstName(identifier, firstName)
		xPlayer.showNotification('~hold~Ton nouveau prénom est~g~'.. newfirstname ..'~w~.')
	else
		xPlayer.showNotification('~r~~hold~Pas assez d\'argent.')
	end
end)

RegisterServerEvent('esx_fakeid:SetLastName')
AddEventHandler('esx_fakeid:SetLastName', function(ID, lastName)
    local identifier = ESX.GetPlayerFromId(ID).identifier
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.getMoney() >= 250000 then
		local newlastname = xPlayer.getName()
        xPlayer.removeMoney(250000)
		SetLastName(identifier, lastName)
		xPlayer.showNotification('~hold~Ton nouveau nom de famille est~g~'.. newfirstname ..'~w~.')
	elseif xPlayer.getAccount('bank').money >= 250000 then
		local newlastname = xPlayer.getName()
		xPlayer.removeAccountMoney('bank', 250000)
		SetLastName(identifier, lastName)
		xPlayer.showNotification('~hold~Ton nouveau nom de famille est~g~'.. newfirstname ..'~w~.')
	else
		xPlayer.showNotification('~r~~hold~Pas assez d\'argent.')
	end
end)

function SetFirstName(identifier, firstName)
	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@firstname']		= firstName
	})
end

function SetLastName(identifier, lastName)
	MySQL.Async.execute('UPDATE `users` SET `lastname` = @lastname WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@lastname']		= lastName
	})
end

RegisterNetEvent('esx_fakeid:SetVisum')
AddEventHandler('esx_fakeid:SetVisum', function(type, price)
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
		TriggerEvent('esx_license:addLicense', _source, type, function()
		end)
		xPlayer.showNotification('~hold~Obtenir un visa : ~g~'.. type ..'~w~.')
	elseif xPlayer.getAccount('bank').money >= price then
		xPlayer.removeAccountMoney('bank', price)
		TriggerEvent('esx_license:addLicense', _source, type, function()
		end)
		xPlayer.showNotification('~hold~Obtenir un visa : ~g~'.. type ..'~w~.')
	else
		xPlayer.showNotification('~r~~hold~Pas assez d\'argent.')
	end
end)