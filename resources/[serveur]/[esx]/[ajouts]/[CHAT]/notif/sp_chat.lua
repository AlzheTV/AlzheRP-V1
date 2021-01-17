ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('twt', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Twitter', ''..name..'', ''..msg..'', 'CHAR_STRETCH', 0)
        end
    end
end, false)

RegisterCommand('ano', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Message sur le darknet', '', ''..msg..'', 'CHAR_LESTER_DEATHWISH', 0)
        end
    end
end, false)


RegisterCommand('lspd', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Annonce LSPD~', '', ''..msg..'', 'CHAR_ABIGAIL', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

RegisterCommand('ems', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Annonce LSMD~', '', ''..msg..'', 'CHAR_CALL911', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

RegisterCommand('taxi', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Annonce Downtown Cab Co', '', ''..msg..'', 'CHAR_TAXI', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

RegisterCommand('lsc', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Annonce LS Custom', '', ''..msg..'', 'CHAR_LS_CUSTOMS', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

RegisterCommand('unicorn', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Annonce Unicorn', '', ''..msg..'', 'CHAR_MP_STRIPCLUB_PR', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

RegisterCommand('gouv', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], '💥 GOUVERNEMENT 💥', '', ''..msg..'', 'CHAR_MP_FM_CONTACT', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0)
    end
 end, false)

--[[
EXEMPLE ! Peu de chose à modifier.
Les "têtes" / images des notifications sont les suivantes : https://wiki.gtanet.work/index.php?title=Notification_Pictures.
RegisterCommand('gouv', function(source, args, rawCommand) ------ COMMANDE. Attention, à changer sinon le script l'oubliera/plantera.
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "state" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], '💥 GOUVERNEMENT 💥', '', ''..msg..'', 'CHAR_MP_FM_CONTACT', 0) ----- LA NOTIFICATION. Ne changez que le nom et le CHAR_XXXX pour plus de beauté.
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0) ---- Vous ne devriez pas y toucher.
    end
    else
	TriggerClientEvent('esx:showAdvancedNotification', _source, 'Erreur.', '' , '~r~Non autorisé.', 'CHAR_BLOCKED', 0) ---- Vous ne devriez pas y toucher.
    end
 end, false)
]]--