ESX = nil

TriggerEvent('65c3e614-8d62-438c-aab9-c08481a4d769', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('1fc19069-15a9-47fd-8f7b-44490ccb8fdd', 'juge', Config.MaxInService)
end

 TriggerEvent('f2b108aa-4175-4078-a1eb-bfac09ac404d', 'juge', _U('fisherman_client'), true, true)
TriggerEvent('64de4702-7541-4db6-bf7f-87ce2693603a', 'juge', 'juge', 'society_juge', 'society_juge', 'society_juge', {type = 'private'})

 RegisterServerEvent('84a036d1-27ad-4067-81f8-4e764973f37e')
  AddEventHandler('84a036d1-27ad-4067-81f8-4e764973f37e', function()

   math.randomseed(os.time())

   local xPlayer        = ESX.GetPlayerFromId(source)
  local total          = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);
   local societyAccount = nil

   if xPlayer.job.grade >= 3 then
     total = total * 2
   end

   TriggerEvent('50155dcf-bbfa-47ec-9acf-6179de44318e', 'society_juge', function(account)
     societyAccount = account
   end)

   if societyAccount ~= nil then

     local playerMoney  = math.floor(total / 100 * 30)
     local societyMoney = math.floor(total / 100 * 70)

     xPlayer.addMoney(playerMoney)
     societyAccount.addMoney(societyMoney)

     TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('have_earned') .. playerMoney)
     TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('comp_earned') .. societyMoney)

   else

     xPlayer.addMoney(total)
     TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('have_earned') .. total)

   end

 end)

RegisterServerEvent('c30fdd9a-4f52-48f8-bff0-68f56c324399')
AddEventHandler('c30fdd9a-4f52-48f8-bff0-68f56c324399', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('62ba8054-ebac-4b97-b629-22b533a98a7f', 'society_juge', function(inventory)

 local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
	  TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)
    else
      TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('invalid_quantity'))
    end
  end)
end)

ESX.RegisterServerCallback('59dccdc7-2a7a-4e0f-a5d1-f92a9e190d17', function(source, cb)

  TriggerEvent('62ba8054-ebac-4b97-b629-22b533a98a7f', 'society_juge', function(inventory)
    cb(inventory.items)
  end)
end)

RegisterServerEvent('18e578fe-0ce5-4b77-899b-d453720e22a3')
AddEventHandler('18e578fe-0ce5-4b77-899b-d453720e22a3', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('62ba8054-ebac-4b97-b629-22b533a98a7f', 'society_juge', function(inventory)

    local item = inventory.getItem(itemName)
	local countinventoryitem = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= countinventoryitem then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
	  TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)
    else
      TriggerClientEvent('3b4b1153-7fe2-4569-af72-ef31ddffba5a', xPlayer.source, _U('invalid_quantity'))
    end
  end)
end)


ESX.RegisterServerCallback('de7238fc-8172-4ab0-99d3-075533a48588', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)
