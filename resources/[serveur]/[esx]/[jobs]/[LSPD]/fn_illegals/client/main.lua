local PlayerData = {}

ESX       = nil 

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
		PlayerData.job = job
end)

--[[
  ### MAIN CODE ###
]]

Citizen.CreateThread(function()
	while true do
    Wait(0)
    
    for _, v in pairs(Config.Zones) do 

      local coords = GetEntityCoords(GetPlayerPed(-1))
      local dist   = Vdist(coords.x, coords.y, coords.z, v.x, v.y, v.z)

      if PlayerData.job ~= nil and PlayerData.job.name == Config.JobName then
        DrawMarker(v.type, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.501, 1.5001, 0.5001, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
        
        if dist <= 1.5 then
          ESX.ShowHelpNotification(_U('marker_do_txt'))

          if IsControlJustPressed(0, 38) then
            TriggerServerEvent("esx_illegals:checkInventory")
          end
        end
      end
    end
  end
end)

RegisterNetEvent("esx_illegals:openInventory")
AddEventHandler("esx_illegals:openInventory", function()
  openInventory()
end)

--[[
  ### INVENTORY FUNCTION ###
]]

function openInventory()
	local elements = {}
    local elements2 = {}

    ESX.TriggerServerCallback('esx_illegals:getInventory', function(result)

        table.insert(elements, {label = "Deposit", value = "deposit"})

        for i=1, #result.items, 1 do
        
            local invitem = result.items[i]
      		
      		for k,v in ipairs(Config.Items) do
      			if invitem.count > 0 and invitem.name == v then
                	table.insert(elements2, { label = invitem.label .. ' | ' .. invitem.count .. ' in your inventory', type = "item_standard", count = invitem.count, value = invitem.name})
            	end
      		end
        end    

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'items_show', {title= "Illegals", align = 'right', elements = elements},
            function(data, menu)
                if data.current.value == "deposit" then
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'items_deposit', {title= "Items", align = 'right', elements = elements2},
                        function(data2, menu2)
                            if data2.current.type then

                                ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'deposit_items',
					{
						align = "right",
						title = _U('dialog_title')
					},
					function(data, menu)

						local amount = tonumber(data.value)
						local item   = data2.current.value
                        local itemName = data2.current.value
                        local invcount = data2.current.count

						if invcount ~= nil and amount > invcount and hasItems then
                                        ESX.ShowNotification('~r~You can\'t sell more than you own')
						else
							TriggerServerEvent('esx_illegals:depositItems', item, amount)
							menu.close()
							menu2.close()
							ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'items_show')
                        end
                                end, 
                                function(data3, menu3)
                                    menu3.close()
                                end)
                            end
                        end, function(data2, menu2)
                        menu2.close()
                    end)
                else       
                end
            end,function(data, menu) menu.close() 
        end)
    end)
end