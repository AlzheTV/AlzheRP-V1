ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterNetEvent('powx_tuto:Buywater')
AddEventHandler('powx_tuto:Buywater', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Merci pour ton ~b~achat~w~.")
    else
         TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Désolé, ~r~vous n'avez pas assez d'argent~w~.")
    end
end)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterNetEvent('powx_tuto:BuyIceTea')
AddEventHandler('powx_tuto:BuyIceTea', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('icetea', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Merci pour ton ~b~achat~w~.")
    else
         TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Désolé, ~r~vous n'avez pas assez d'argent~w~.")
    end
end)

RegisterNetEvent('powx_tuto:BuyPain')
AddEventHandler('powx_tuto:BuyPain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Merci pour ton ~b~achat~w~.")
    else
         TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Désolé, ~r~vous n'avez pas assez d'argent~w~.")
    end
end)

RegisterNetEvent('powx_tuto:BuyHotDog')
AddEventHandler('powx_tuto:BuyHotDog', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('breadsaucisson', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Merci pour ton ~b~achat~w~.")
    else
         TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Désolé, ~r~vous n'avez pas assez d'argent~w~.")
    end
end)

RegisterNetEvent('powx_tuto:BuyEau')
AddEventHandler('powx_tuto:BuyEau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Merci pour ton ~b~achat~w~.")
    else
         TriggerClientEvent('esx:showNotification', source, "~b~Apu~w~: Désolé, ~r~vous n'avez pas assez d'argent~w~.")
    end
end)