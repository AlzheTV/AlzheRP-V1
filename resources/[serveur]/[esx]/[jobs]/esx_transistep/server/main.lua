ESX = nil
TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

--
--
--

if Config.MaxInService ~= -1 then
    TriggerEvent('esx_service:activateService', 'transistep', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'transistep', _U('alert_transistep'), true, true)
TriggerEvent('esx_society:registerSociety', 'transistep', 'Transistep', 'society_transistep', 'society_transistep', 'society_transistep', { type = 'public' })


ESX.RegisterServerCallback('transistep:storeNearbyVehicle', function(source, cb, nearbyVehicles)
    local xPlayer = ESX.GetPlayerFromId(source)
    local foundPlate, foundNum

    for k, v in ipairs(nearbyVehicles) do
        local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE plate = @plate AND job = @job', {
            ['@plate'] = v.plate,
            ['@job'] = 'transistep'
        })

        if result[1] then
            foundPlate, foundNum = result[1].plate, k
            break
        end
    end
    if not foundPlate then
        cb(false)
    else
        MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE plate = @plate AND job = @job', {
            ['@plate'] = foundPlate,
            ['@job'] = 'transistep',
        }, function(rowsChanged)
            if rowsChanged == 0 then
                print(('transistep: %s has exploited the garage!'):format(xPlayer.identifier))
                cb(false)
            else
                cb(true, foundNum)
            end
        end)
    end
end)


ESX.RegisterServerCallback('transistep:buyJobVehicle', function(source, cb, vehicleProps, type)
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

    if price <= 0 then
        cb(false)
    else
        if xPlayer.getMoney() >= price then
            xPlayer.removeMoney(price)

            MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, stored) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
                ['@owner'] = xPlayer.identifier,
                ['@vehicle'] = json.encode(vehicleProps),
                ['@plate'] = vehicleProps.plate,
                ['@type'] = type,
                ['@job'] = xPlayer.job.name,
                ['@stored'] = true,
            }, function(_)
                cb(true)
            end)
        else
            cb(false)
        end
    end
end)


function getPriceFromHash(hashKey, jobGrade, type)
    if type == 'car' then
        local vehicles = Config.AuthorizedVehicles[jobGrade]
        local shared = Config.AuthorizedVehicles['Shared']

        for _, v in ipairs(vehicles) do
            if GetHashKey(v.model) == hashKey then
                return v.price
            end
        end

        for _, v in ipairs(shared) do
            if GetHashKey(v.model) == hashKey then
                return v.price
            end
        end
    end

    return 0
end


ESX.RegisterServerCallback('transistep:getStockItems', function(_, cb, storing)
    local weapons, items
    TriggerEvent('esx_addoninventory:getSharedInventory', storing, function(inventory)
        items = inventory.items
    end)
    if storing == 'society_transistep' then
        TriggerEvent('esx_datastore:getSharedDataStore', storing, function(store)
            weapons = store.get('weapons') or {}
        end)
    end
    cb({
        items = items,
        weapons = weapons,
    })
end)


ESX.RegisterServerCallback('transistep:getPlayerInventory', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local items = xPlayer.inventory

    cb({
        items = items,
        weapons = xPlayer.getLoadout()
    })
end)


RegisterServerEvent('transistep:getStockItem')
AddEventHandler('transistep:getStockItem', function(type, itemName, count, storing)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local sourceItem = xPlayer.getInventoryItem(itemName)

    if type == 'item_weapon' then
        TriggerEvent('esx_datastore:getSharedDataStore', storing, function(store)
            local storeWeapons = store.get('weapons') or {}
            local weaponName
            local ammo

            for i = 1, #storeWeapons, 1 do
                if storeWeapons[i].name == itemName then
                    weaponName = storeWeapons[i].name
                    ammo = storeWeapons[i].ammo

                    table.remove(storeWeapons, i)
                    break
                end
            end
            store.set('weapons', storeWeapons)
            xPlayer.addWeapon(weaponName, ammo)
        end)
    elseif type == 'item_standard' then
        TriggerEvent('esx_addoninventory:getSharedInventory', storing, function(inventory)
            local inventoryItem = inventory.getItem(itemName)

            if count > 0 and inventoryItem.count >= count then
                if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
                    TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
                else
                    inventory.removeItem(itemName, count)
                    xPlayer.addInventoryItem(itemName, count)
                    TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
                end
            else
                TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
            end
        end)
    end
end)


RegisterServerEvent('transistep:putStockItems')
AddEventHandler('transistep:putStockItems', function(type, itemName, count, storing)
    local xPlayer = ESX.GetPlayerFromId(source)
    local sourceItem = xPlayer.getInventoryItem(itemName)

    if type == 'item_standard' then
        TriggerEvent('esx_addoninventory:getSharedInventory', storing, function(inventory)
            local inventoryItem = inventory.getItem(itemName)

            if sourceItem.count >= count and count > 0 then
                xPlayer.removeInventoryItem(itemName, count)
                inventory.addItem(itemName, count)
                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
            else
                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
            end
        end)
    elseif type == 'item_weapon' then

        TriggerEvent('esx_datastore:getSharedDataStore', storing, function(store)
            local storeWeapons = store.get('weapons') or {}

            table.insert(storeWeapons, {
                name = itemName,
                ammo = count
            })

            store.set('weapons', storeWeapons)
            xPlayer.removeWeapon(itemName)
        end)

    end
end)


RegisterServerEvent('transistep:message')
AddEventHandler('transistep:message', function(target, msg)
    TriggerClientEvent('esx:showNotification', target, msg)
end)


RegisterServerEvent('transistep:registerConvoy')
AddEventHandler('transistep:registerConvoy', function(identifier, idConvoy)
    local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

    local result = MySQL.Sync.fetchAll('SELECT * FROM `convoy_registered_list` WHERE identifier = @identifier', {
        ['@identifier'] = identifier })
    if result[1] then
        MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `convoy_id`=@idConvoy WHERE identifier = @identifier', {
            ['@identifier'] = identifier,
            ['@idConvoy'] = idConvoy
        }, function(_)
        end)
    else
        MySQL.Async.execute('INSERT INTO `convoy_registered_list`(`identifier`, `is_trailer_stored`, `convoy_id`) VALUES (@identifier, false, @idConvoy)', {
            ['@identifier'] = identifier,
            ['@idConvoy'] = idConvoy
        }, function(_)
        end)
    end
end)


RegisterServerEvent('transistep:unregisterConvoy')
AddEventHandler('transistep:unregisterConvoy', function(identifier, idConvoy)
    local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

    local result = MySQL.Sync.fetchAll('SELECT * FROM `convoy_registered_list` WHERE identifier = @identifier AND convoy_id = @idConvoy', {
        ['@identifier'] = identifier,
        ['@idConvoy'] = idConvoy
    })
    if result[1] then
        MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `convoy_id`=@idConvoy WHERE identifier = @identifier', {
            ['@identifier'] = identifier,
            ['@idConvoy'] = 0
        }, function(_)
        end)
    else
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous êtes n\'êtes pas inscrit au convoi ' .. idConvoy .. '.')
    end
end)


RegisterServerEvent('transistep:storeTrailer')
AddEventHandler('transistep:storeTrailer', function(identifier)
    MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `is_trailer_stored`=true WHERE identifier = @identifier', {
        ['@identifier'] = identifier,
    }, function(_)
    end)

    TriggerEvent('esx_addoninventory:getSharedInventory', 'society_transistep_warehouse', function(inventory)
        local item
        for _ = 1, Config.numberItemsPerTrailerStored do
            item = math.random(1, #Config.itemsList)
            inventory.addItem(Config.itemsList[item], math.random(1, 10))
        end
    end)
end)


RegisterServerEvent('transistep:popTrailer')
AddEventHandler('transistep:popTrailer', function(identifier)
    MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `is_trailer_stored`=false WHERE identifier = @identifier', {
        ['@identifier'] = identifier,
    }, function(_)
    end)
end)


RegisterServerEvent('transistep:getPaidJob')
AddEventHandler('transistep:getPaidJob', function(identifier, convoy)
    local quantity = MySQL.Sync.fetchScalar('SELECT count(`is_trailer_stored`) FROM `convoy_registered_list` WHERE `convoy_id` = @idConvoy AND `is_trailer_stored` = true', {
        ['@idConvoy'] = convoy
    })

    local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
    xPlayer.addAccountMoney('bank', Config.Pay[quantity].EarnPlayer)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_transistep', function(tsAccount)

        if tsAccount ~= nil then
            tsAccount.addMoney(Config.Pay[quantity].EarnSociety)
        end
    end)
    MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `is_paid`=true WHERE identifier = @identifier', {
        ['@identifier'] = identifier,
    }, function(_)
    end)
end)


RegisterServerEvent('transistep:checkIfConvoyEnded')
AddEventHandler('transistep:checkIfConvoyEnded', function(convoy)
    local quantityStored = MySQL.Sync.fetchScalar('SELECT count(`is_trailer_stored`) FROM `convoy_registered_list` WHERE `convoy_id` = @idConvoy AND `is_trailer_stored` = true', {
        ['@idConvoy'] = convoy
    })
    local quantityPaid = MySQL.Sync.fetchScalar('SELECT count(`is_paid`) FROM `convoy_registered_list` WHERE `convoy_id` = @idConvoy AND `is_paid` = true', {
        ['@idConvoy'] = convoy
    })

    if quantityPaid == quantityStored then
        MySQL.Sync.execute('UPDATE `convoy_registered_list` SET `is_paid`=false, `is_trailer_stored`=false, `convoy_id`=0 WHERE convoy_id = @convoiId', { ['@convoiId'] = convoy }, function(_)
        end)
    end
end)


ESX.RegisterServerCallback('transistep:getConvoys', function(_, cb)
    local convoys_list = {}
    local result = MySQL.Sync.fetchAll('SELECT * FROM `convoy_list`')
    if result[1] and #result > 0 then
        for _, v in pairs(result) do
            local name = v.id
            local quantity = MySQL.Sync.fetchScalar('SELECT count(`convoy_id`) FROM `convoy_registered_list` WHERE `convoy_id` = @idConvoy', {
                ['@idConvoy'] = name
            })
            table.insert(convoys_list, { name = name, quantity = quantity })
        end
    end
    cb(convoys_list)
end)
