ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('buyBlista')
AddEventHandler('buyBlista', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    xPlayer.removeMoney(0)
end)

RegisterNetEvent('buyFaggio')
AddEventHandler('buyFaggio', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 300
    xPlayer.removeMoney(300)
end)

RegisterNetEvent('buyBmx')
AddEventHandler('buyBmx', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    xPlayer.removeMoney(0)
end)

