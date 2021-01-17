ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx_onibus:finishRoute')
AddEventHandler('esx_onibus:finishRoute', function(amount)
    ESX.GetPlayerFromId(source).addMoney(amount)
end)

RegisterNetEvent('esx_onibus:passengersLoaded')
AddEventHandler('esx_onibus:passengersLoaded', function(amount)
    ESX.GetPlayerFromId(source).addMoney(amount)
end)

RegisterNetEvent('esx_onibus:abortRoute')
AddEventHandler('esx_onibus:abortRoute', function(amount)
    ESX.GetPlayerFromId(source).removeMoney(amount)
end)