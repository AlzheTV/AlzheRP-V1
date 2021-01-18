ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_illegals:getInventory', function(source, cb)
  local xPlayer = ESX.GetPlayerFromId(source)
  local items   = xPlayer.inventory
  local accounts =  nil
  local data  = nil

  cb({items = items})

end)

RegisterServerEvent("esx_illegals:depositItems")
AddEventHandler("esx_illegals:depositItems", function(item, count)
  local xPlayer = ESX.GetPlayerFromId(source)
if count > 0 then
        xPlayer.removeInventoryItem(item, count)
        giveMoney(count * Config.CountMoney)
        giveBonus(count * Config.BonusMoney)
      else
        TriggerClientEvent('esx:showNotification', _source, "Invalid Quantity")
      end
end)

RegisterServerEvent("esx_illegals:checkInventory")
AddEventHandler("esx_illegals:checkInventory", function()
  if hasItems() then
    TriggerClientEvent("esx_illegals:openInventory", source)
  else
    TriggerClientEvent('chat:addMessage', source, {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(30, 30, 100, 0.5); border-radius: 7px;"><i class="fas fa-exclamation-t">Aucun objet saisissable.</i></div>',
      args = { fal, msg }
})
    end
end)

function giveMoney(money)
  ESX.GetPlayerFromId(source).addMoney(money)
end

function giveBonus(bonus)
    ESX.GetPlayerFromId(source).addMoney(bonus)
end

function hasItems()
  local xPlayer = ESX.GetPlayerFromId(source)
  local drugs = false

  for i,v in ipairs(Config.Items) do
    if xPlayer.getInventoryItem(v).count > 0 then
      drugs = true
    end
  end

  if drugs then
    return true
  else
    return false
  end
end
