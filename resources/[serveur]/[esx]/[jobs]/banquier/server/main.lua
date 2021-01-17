ESX = nil
local PlayersHarvestingBil    = {}
local PlayersSellingBil	  = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone:registerNumber', 'banker', _('bank_customer'), false, false)
TriggerEvent('esx_society:registerSociety', 'banker', 'Banquier', 'society_banker', 'society_banker', 'society_banker', {type = 'public'})

RegisterServerEvent('esx_bankerjob:customerDeposit')
AddEventHandler('esx_bankerjob:customerDeposit', function (target, amount)
	local xPlayer = ESX.GetPlayerFromId(target)

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_banker', function (account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)

			TriggerEvent('esx_addonaccount:getAccount', 'bank_savings', xPlayer.identifier, function (account)
				account.addMoney(amount)
			end)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	end)
end)

RegisterServerEvent('esx_bankerjob:customerWithdraw')
AddEventHandler('esx_bankerjob:customerWithdraw', function (target, amount)
	local xPlayer = ESX.GetPlayerFromId(target)

	TriggerEvent('esx_addonaccount:getAccount', 'bank_savings', xPlayer.identifier, function (account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)

			TriggerEvent('esx_addonaccount:getSharedAccount', 'society_banker', function (account)
				account.addMoney(amount)
			end)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	end)
end)

ESX.RegisterServerCallback('esx_bankerjob:getCustomers', function (source, cb)
	local xPlayers  = ESX.GetPlayers()
	local customers = {}

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		TriggerEvent('esx_addonaccount:getAccount', 'bank_savings', xPlayer.identifier, function(account)
			table.insert(customers, {
				source      = xPlayer.source,
				name        = xPlayer.name,
				bankSavings = account.money
			})
		end)
	end

	cb(customers)
end)

function CalculateBankSavings(d, h, m)
	local asyncTasks = {}

	MySQL.Async.fetchAll('SELECT * FROM addon_account_data WHERE account_name = @account_name', {
		['@account_name'] = 'bank_savings'
	}, function(result)
		local bankInterests = 10

		for i=1, #result, 1 do
			local xPlayer = ESX.GetPlayerFromIdentifier(result[i].owner)

			if xPlayer then
				TriggerEvent('esx_addonaccount:getAccount', 'bank_savings', xPlayer.identifier, function(account)
					local interests = math.floor(account.money / 100 * Config.BankSavingPercentage)
					bankInterests   = bankInterests + interests

					table.insert(asyncTasks, function(cb)
						account.addMoney(interests)
					end)
				end)
			else
				local interests = math.floor(result[i].money / 100 * Config.BankSavingPercentage)
				local newMoney  = result[i].money + interests
				bankInterests   = bankInterests + interests

				local scope = function(newMoney, owner)
					table.insert(asyncTasks, function(cb)
						MySQL.Async.execute('UPDATE addon_account_data SET money = @money WHERE owner = @owner AND account_name = @account_name',
						{
							['@money']        = newMoney,
							['@owner']        = owner,
							['@account_name'] = 'bank_savings',
						}, function(rowsChanged)
							cb()
						end)
					end)
				end

				scope(newMoney, result[i].owner)
			end
		end

		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_banker', function(account)
			account.addMoney(bankInterests)
		end)

		Async.parallelLimit(asyncTasks, 5, function(results)
			print('[BANK] Calculated interests')
		end)

	end)
end

TriggerEvent('cron:runAt', 19, 0, CalculateBankSavings)

-----Farm

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'banker', Config.MaxInService)
end



---Billet
local function HarvestBil(source)

  SetTimeout(2500, function()

    if PlayersHarvestingBil[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)

      local b = xPlayer.getInventoryItem('bil')
	  local BQuantity = xPlayer.getInventoryItem('bil').count

      if BQuantity >= 25 then
        TriggerClientEvent('esx:showNotification', source, _U('inv_full'))
      else
        xPlayer.addInventoryItem('bil', 1)
        HarvestBil(source)
      end

    end
  end)
end

RegisterServerEvent('esx_bankerjob:startHarvestBil')
AddEventHandler('esx_bankerjob:startHarvestBil', function()

  local _source = source

  PlayersHarvestingBil[_source] = true

  TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

  HarvestBil(_source)

end)

RegisterServerEvent('esx_bankerjob:stopHarvestBil')
AddEventHandler('esx_bankerjob:stopHarvestBil', function()

  local _source = source

  PlayersHarvestingBil[_source] = false

end)

local function SellBil(source)

  SetTimeout(3000, function()

  	local societyAccount = nil

  	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_banker', function(account)
  		societyAccount = account
  	end)

    if PlayersSellingBil[source] == true and societyAccount ~= nil then

      local xPlayer  = ESX.GetPlayerFromId(source)

      local BQuantity = xPlayer.getInventoryItem('bil').count

      if BQuantity == 0 then
        TriggerClientEvent('esx:showNotification', source, _U('no_bil_sale'))
      else
        xPlayer.removeInventoryItem('bil', 1)
        xPlayer.addMoney(Config.PriceResell.billet)
        societyAccount.addMoney(Config.PriceResell.billet * 2.0)
        TriggerClientEvent('esx:showNotification', source, _U('sold_one_bil'))
		TriggerClientEvent('esx:showNotification', source, _U('earn_bil'))
		TriggerClientEvent('esx:showNotification', source, _U('earn_soci'))

        SellBil(source)
      end

    end
  end)
end

RegisterServerEvent('esx_bankerjob:startSellBil')
AddEventHandler('esx_bankerjob:startSellBil', function()

  local _source = source

  PlayersSellingBil[_source] = true

  TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

  SellBil(_source)

end)

RegisterServerEvent('esx_bankerjob:stopSellBil')
AddEventHandler('esx_bankerjob:stopSellBil', function()

  local _source = source

  PlayersSellingBil[_source] = false

end)

RegisterServerEvent('esx_bankerjob:getStockItem')
AddEventHandler('esx_bankerjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_bankerjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_bankerjob:putStockItems')
AddEventHandler('esx_bankerjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_bankerjob:getFridgeStockItem')
AddEventHandler('esx_bankerjob:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_bankerjob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_bankerjob:putFridgeStockItems')
AddEventHandler('esx_bankerjob:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_banker', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_bankerjob:getVaultWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_banker', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_bankerjob:addVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_banker', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = weapons[i].count + 1
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 1
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_bankerjob:removeVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_banker', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 0
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

--[[

RegisterServerEvent('esx_bankerjob:announce')
AddEventHandler('esx_bankerjob:announce', function(result)
  local _source  = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local xPlayers = ESX.GetPlayers()
  local text     = result
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_bankerjob:announce', xPlayers[i],text)
  end

  Wait(5000)

  local xPlayers = ESX.GetPlayers()
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_bankerjob:announcestop', xPlayers[i])
  end

end)

--]]

ESX.RegisterServerCallback('esx_bankerjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)


RegisterServerEvent('AnnounceBanqueOuverte')
AddEventHandler('AnnounceBanqueOuverte', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Banque', '~b~Annonce banque', 'La banque vient d\'ouvrir! Venez stockez votre argent!', 'CHAR_BANK_MAZE', 8)
	end
end)

RegisterServerEvent('AnnounceBanqueFerme')
AddEventHandler('AnnounceBanqueFerme', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Banque', '~b~Annonce banque', 'La banque vient de fermer, passer plus tard.', 'CHAR_BANK_MAZE', 8)
	end
end)
