local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData                = {}
local GUI                       = {}
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local OnJob                     = false
local CurrentCustomer           = nil
local CurrentCustomerBlip       = nil
local DestinationBlip           = nil
local IsNearCustomer            = false
local CustomerIsEnteringVehicle = false
local CustomerEnteredVehicle    = false
local TargetCoords              = nil

ESX                             = nil
GUI.Time                        = 0

local blips = {
     {title="Juge", colour=54, id=408, x = -317.71398770508, y = -604.15972900391, z = 33.558193206787},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.4)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)




Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('0c42e4b8-0ba7-4241-b956-4caa34fd8478', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

function DrawSub(msg, time)
  ClearPrints()
  SetTextEntry_2("STRING")
  AddTextComponentString(msg)
  DrawSubtitleTimed(time, 1)
end

function ShowLoadingPromt(msg, time, type)
  Citizen.CreateThread(function()
    Citizen.Wait(0)
    N_0xaba17d7ce615adbf("STRING")
    AddTextComponentString(msg)
    N_0xbd12f8228410d9b4(type)
    Citizen.Wait(time)
    N_0x10d373323e5b9c0d()
  end)
end

-- function GetRandomWalkingNPC()

  -- local search = {}
  -- local peds   = ESX.Game.GetPeds()

  -- for i=1, #peds, 1 do
    -- if IsPedHuman(peds[i]) and IsPedWalking(peds[i]) and not IsPedAPlayer(peds[i]) then
      -- table.insert(search, peds[i])
    -- end
  -- end

  -- if #search > 0 then
    -- return search[GetRandomIntInRange(1, #search)]
  -- end

  -- print('Using fallback code to find walking ped')

  -- for i=1, 250, 1 do

    -- local ped = GetRandomPedAtCoord(0.0,  0.0,  0.0,  math.huge + 0.0,  math.huge + 0.0,  math.huge + 0.0,  26)

    -- if DoesEntityExist(ped) and IsPedHuman(ped) and IsPedWalking(ped) and not IsPedAPlayer(ped) then
      -- table.insert(search, ped)
    -- end

  -- end

  -- if #search > 0 then
    -- return search[GetRandomIntInRange(1, #search)]
  -- end

-- end

-- function ClearCurrentMission()

  -- if DoesBlipExist(CurrentCustomerBlip) then
    -- RemoveBlip(CurrentCustomerBlip)
  -- end

  -- if DoesBlipExist(DestinationBlip) then
    -- RemoveBlip(DestinationBlip)
  -- end

  -- CurrentCustomer           = nil
  -- CurrentCustomerBlip       = nil
  -- DestinationBlip           = nil
  -- IsNearCustomer            = false
  -- CustomerIsEnteringVehicle = false
  -- CustomerEnteredVehicle    = false
  -- TargetCoords              = nil

-- end

-- function StartBrewerJob()

  -- ShowLoadingPromt(_U('taking_service') .. 'Brasseur', 5000, 3)
  -- ClearCurrentMission()

  -- OnJob = true

-- end

-- function StopBrewerJob()

  -- local playerPed = GetPlayerPed(-1)

  -- if IsPedInAnyVehicle(playerPed, false) and CurrentCustomer ~= nil then
    -- local vehicle = GetVehiclePedIsIn(playerPed,  false)
    -- TaskLeaveVehicle(CurrentCustomer,  vehicle,  0)

    -- if CustomerEnteredVehicle then
      -- TaskGoStraightToCoord(CurrentCustomer,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z,  1.0,  -1,  0.0,  0.0)
    -- end

  -- end

  -- ClearCurrentMission()

  -- OnJob = false

  -- DrawSub(_U('mission_complete'), 5000)

-- end

function OpenjugeActionsMenu()

  local elements = {
	{label = _U('work_wear'), value = 'cloakroom'},
    {label = _U('civ_wear'), value = 'cloakroom2'},
    {label = _U('spawn_veh'), value = 'spawn_vehicle'},
    {label = _U('deposit_stock'), value = 'put_stock'},
    {label = _U('take_stock'), value = 'get_stock'}
  }

  if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
    table.insert(elements, {label = _U('boss_actions'), value = 'boss_actions'})
  end

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'juge_actions',
    {
      title    = 'Juge',
      elements = elements
    },
    function(data, menu)

      if data.current.value == 'put_stock' then
        OpenPutStocksMenu()
      end

      if data.current.value == 'get_stock' then
        OpenGetStocksMenu()
      end
	  
	  if data.current.value == 'cloakroom' then
        menu.close()
        ESX.TriggerServerCallback('a68a239f-cb15-4809-95ea-165c87c8c180', function(skin, jobSkin)

            if skin.sex == 0 then
                TriggerEvent('77ab518b-7787-4fe8-bf09-056fa9ce5e4c', skin, jobSkin.skin_male)
            else
                TriggerEvent('77ab518b-7787-4fe8-bf09-056fa9ce5e4c', skin, jobSkin.skin_female)
            end

        end)
      end

      if data.current.value == 'cloakroom2' then
        menu.close()
        ESX.TriggerServerCallback('a68a239f-cb15-4809-95ea-165c87c8c180', function(skin, jobSkin)

            TriggerEvent('a3497914-dce3-4ef6-b6e7-e7c6bffecfdb', skin)

        end)
	  end

      if data.current.value == 'spawn_vehicle' then

        if Config.EnableSocietyOwnedVehicles then

          local elements = {}

          ESX.TriggerServerCallback('079b768d-1343-4853-9242-4bd4fad0ad21', function(vehicles)

            for i=1, #vehicles, 1 do
              table.insert(elements, {label = GetDisplayNameFromVehicleModel(vehicles[i].model) .. ' [' .. vehicles[i].plate .. ']', value = vehicles[i]})
            end

            ESX.UI.Menu.Open(
              'default', GetCurrentResourceName(), 'vehicle_spawner',
              {
                title    = _U('spawn_veh'),
                align    = 'top-left',
                elements = elements,
              },
              function(data, menu)

                menu.close()

                local vehicleProps = data.current.value

                ESX.Game.SpawnVehicle(vehicleProps.model, Config.Zones.VehicleSpawnPoint.Pos, 270.0, function(vehicle)
                  ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
                  local playerPed = GetPlayerPed(-1)
                  TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
				  local plate = GetVehicleNumberPlateText(vehicle)
				  TriggerServerEvent("ls:mainCheck", plate, vehicle, true)
                end)

                TriggerServerEvent('5f4d7aac-a032-4160-a2a3-06df03de2bdc', 'Baller4', vehicleProps)

              end,
              function(data, menu)
                menu.close()
              end
            )

          end, 'Baller4')

        else

          menu.close()

          if Config.MaxInService == -1 then

            local playerPed = GetPlayerPed(-1)
            local coords    = Config.Zones.VehicleSpawnPoint.Pos

            ESX.Game.SpawnVehicle('Baller4', coords, 225.0, function(vehicle)
              TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
			  local plate = GetVehicleNumberPlateText(vehicle)
			  TriggerServerEvent("ls:mainCheck", plate, vehicle, true)
            end)

          else

            ESX.TriggerServerCallback('0c78f1dd-12d0-44d7-86dd-e65be2b1cf72', function(canTakeService, maxInService, inServiceCount)

              if canTakeService then

                local playerPed = GetPlayerPed(-1)
                local coords    = Config.Zones.VehicleSpawnPoint.Pos

                ESX.Game.SpawnVehicle('Baller4', coords, 225.0, function(vehicle)
				  SetVehicleNumberPlateText(vehicle, "juge")
                  TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
				  local plate = GetVehicleNumberPlateText(vehicle)
				  TriggerServerEvent("ls:mainCheck", plate, vehicle, true)
                end)

              else

                ESX.ShowNotification(_U('full_service') .. inServiceCount .. '/' .. maxInService)

              end

            end, 'Baller4')

          end

        end

      end

      if data.current.value == 'boss_actions' then
        TriggerEvent('db05efc7-26f4-41fc-8e7e-bcb59905b84e', 'juge', function(data, menu)
          menu.close()
        end)
      end

    end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'juge_actions_menu'
      CurrentActionMsg  = _U('press_to_open')
      CurrentActionData = {}

    end
  )

end

function OpenMobilejugeActionsMenu()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'mobile_juge_actions',
    {
      title    = 'Juge',
      elements = {
        {label = _U('billing'), value = 'billing'}
      }
    },
    function(data, menu)

      if data.current.value == 'billing' then

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'billing',
          {
            title = _U('invoice_amount')
          },
          function(data, menu)

            local amount = tonumber(data.value)

            if amount == nil then
              ESX.ShowNotification(_U('amount_invalid'))
            else

              menu.close()

              local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

              if closestPlayer == -1 or closestDistance > 3.0 then
                ESX.ShowNotification(_U('no_players_near'))
              else
                TriggerServerEvent('61fc3973-05dd-4440-8c8c-91de6eb9b1d9', GetPlayerServerId(closestPlayer), 'society_juge', 'juge', amount)
              end

            end

          end,
          function(data, menu)
            menu.close()
          end
        )

      end

    end,
    function(data, menu)
      menu.close()
    end
  )

end

function OpenGetStocksMenu()

  ESX.TriggerServerCallback('59dccdc7-2a7a-4e0f-a5d1-f92a9e190d17', function(items)

    print(json.encode(items))

    local elements = {}

    for i=1, #items, 1 do
      table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = 'Juge Stock',
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('quantity_invalid'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('c30fdd9a-4f52-48f8-bff0-68f56c324399', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutStocksMenu()

  ESX.TriggerServerCallback('de7238fc-8172-4ab0-99d3-075533a48588', function(inventory)

    local elements = {}

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('inventory'),
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('quantity_invalid'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('18e578fe-0ce5-4b77-899b-d453720e22a3', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end


RegisterNetEvent('96f6fd6c-528c-4acf-af92-6c251530e48e')
AddEventHandler('96f6fd6c-528c-4acf-af92-6c251530e48e', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('5d0a7803-59d0-4c85-9f09-6647aae43b6d')
AddEventHandler('5d0a7803-59d0-4c85-9f09-6647aae43b6d', function(job)
  PlayerData.job = job
end)

AddEventHandler('fe40674c-de85-4c8a-afde-bb59f6c4b6ef', function(zone)

  if zone == 'jugeActions' then
    CurrentAction     = 'juge_actions_menu'
    CurrentActionMsg  = _U('press_to_open')
    CurrentActionData = {}
  end

  -- if zone == 'VehicleDeleter' then

		-- local playerPed = GetPlayerPed(-1)
		-- local coords    = GetEntityCoords(playerPed)
	
		-- if IsPedInAnyVehicle(playerPed,  false) then

			-- local vehicle = GetVehiclePedIsIn(playerPed, false)

			-- if DoesEntityExist(vehicle) then
				-- CurrentAction     = 'delete_vehicle'
				-- CurrentActionMsg  = _U('store_vehicle')
				-- CurrentActionData = {vehicle = vehicle}
			-- end

		-- end

  -- end

end)

AddEventHandler('59285a8a-f95b-445c-988a-2711c7284d5d', function(zone)
  ESX.UI.Menu.CloseAll()
  CurrentAction = nil
end)

-- RegisterNetEvent('6e2d8193-0221-491f-ba2e-8763ff6d4944')
-- AddEventHandler('6e2d8193-0221-491f-ba2e-8763ff6d4944', function(phoneNumber, contacts)

  -- local specialContact = {
    -- name       = 'OasisFish',
    -- number     = 'fisherman',
    -- base64Icon ="data:image/jpeg;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAHCAcIDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDwGiiikaBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRV/R9F1LxBqMen6VZy3d1J0jjHQepPQD3PFfQPgn9n/T7AR3viuVb656iziYiFD/tHgufyH1oE2eH+G/BHiPxc7jRdLluUT70pISMH03sQM+2c10n/CjvH/8A0B4//AyH/wCKr6c1DXND8K2aW7GGBY1xFaW6AED0CjgD8hUvh/X4/ENq91BaXEMKttVpgBvPfGCelaeyny89tDD6xT9p7NP3ux8ty/BPx5BC8sulQRxopZ3a9hAUDkkndwK8+IwSK+lvj544°l…(ÅU  °l…(ÅU                   ¡(ÅU          Rr(ÅU  m…(ÅU          Ðl…(ÅU   @      Ðl…(ÅU          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°l…(ÅU  °l…(ÅU                   ¡(ÅU          Rr(ÅU  m…(ÅU          Ðl…(ÅU   @      Ðl…(ÅU          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geRVdvbY2G/Sn33gjw/fctp6Qt/egJj/AEHH6V8SVu6P408TaAFXS9cvraNTkRLKTHn/AHDlf0q4VJQ1i7GVShTqK00n6n05d/Cu3Yk2epyp6LNGG/UYrKf4XauCdl5ZMPUlh/7Ka8x039oLxlZ4F2mn369zLBsb80IH6V0MX7S12FHneGIXPcpeFf5oa6o4+uupwzyjCyd+W3ozsLf4Waizj7Rf2sadzGGc/kQK6/QvA+k6I6z7WubpeRLNj5T/ALI6D69a8buv2lNRdCLTw5axP2M1y0g/IBf51wXiX4reL/FMT295qZgtHBDW1ovlIwPY4+Zh7EmoqYytUVm9DShlmHovmjHXz1PaviZ8aLHw9DNpPh2aO71c5R51w0Vsfr0Zx6dAevTB+ZLi4muriW4uJXlmlYvJI7FmdickknqSajorlPQSsFFFFAwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD/2Q==",
	-- }

  -- TriggerEvent('26d6ad5e-2ba4-4617-87cc-d5cc085109e1', specialContact.name, specialContact.number, specialContact.base64Icon)

-- end)

-- Create Blips
-- Citizen.CreateThread(function()

  -- local blip = AddBlipForCoord(Config.Zones.BrewerActions.Pos.x, Config.Zones.BrewerActions.Pos.y, Config.Zones.BrewerActions.Pos.z)

  -- SetBlipSprite (blip, 499)
  -- SetBlipDisplay(blip, 4)
  -- SetBlipScale  (blip, 1.0)
  -- SetBlipColour (blip, 46)
  -- SetBlipAsShortRange(blip, true)

  -- BeginTextCommandSetBlipName("STRING")
  -- AddTextComponentString("The Santa'Bar")
  -- EndTextCommandSetBlipName(blip)

-- end)

-- Display markers
Citizen.CreateThread(function()
  while true do

    Wait(0)

    if PlayerData.job ~= nil and PlayerData.job.name == 'juge' then

      local coords = GetEntityCoords(GetPlayerPed(-1))

      for k,v in pairs(Config.Zones) do
        if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
          DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
        end
      end

    end

  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
  while true do

    Wait(0)

    if PlayerData.job ~= nil and PlayerData.job.name == 'juge' then

      local coords      = GetEntityCoords(GetPlayerPed(-1))
      local isInMarker  = false
      local currentZone = nil

      for k,v in pairs(Config.Zones) do
        if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
          isInMarker  = true
          currentZone = k
        end
      end

      if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
        HasAlreadyEnteredMarker = true
        LastZone                = currentZone
        TriggerEvent('fe40674c-de85-4c8a-afde-bb59f6c4b6ef', currentZone)
      end

      if not isInMarker and HasAlreadyEnteredMarker then
        HasAlreadyEnteredMarker = false
        TriggerEvent('59285a8a-f95b-445c-988a-2711c7284d5d', LastZone)
      end

    end

  end
end)

-- Brewer Job
-- Citizen.CreateThread(function()

  -- while true do

    -- Citizen.Wait(0)

    -- local playerPed = GetPlayerPed(-1)

    -- if OnJob then

      -- if CurrentCustomer == nil then

        -- DrawSub(_U('drive_search_pass'), 5000)

        -- if IsPedInAnyVehicle(playerPed,  false) and GetEntitySpeed(playerPed) > 0 then

          -- local waitUntil = GetGameTimer() + GetRandomIntInRange(30000,  45000)

          -- while OnJob and waitUntil > GetGameTimer() do
            -- Citizen.Wait(0)
          -- end

          -- if OnJob and IsPedInAnyVehicle(playerPed,  false) and GetEntitySpeed(playerPed) > 0 then

            -- CurrentCustomer = GetRandomWalkingNPC()

            -- if CurrentCustomer ~= nil then

              -- CurrentCustomerBlip = AddBlipForEntity(CurrentCustomer)

              -- SetBlipAsFriendly(CurrentCustomerBlip, 1)
              -- SetBlipColour(CurrentCustomerBlip, 2)
              -- SetBlipCategory(CurrentCustomerBlip, 3)
              -- SetBlipRoute(CurrentCustomerBlip,  true)

              -- SetEntityAsMissionEntity(CurrentCustomer,  true, false)
              -- ClearPedTasksImmediately(CurrentCustomer)
              -- SetBlockingOfNonTemporaryEvents(CurrentCustomer, 1)

              -- local standTime = GetRandomIntInRange(60000,  180000)

              -- TaskStandStill(CurrentCustomer, standTime)

              -- ESX.ShowNotification(_U('customer_found'))

            -- end

          -- end

        -- end

      -- else

        -- if IsPedFatallyInjured(CurrentCustomer) then

          -- ESX.ShowNotification(_U('client_unconcious'))

          -- if DoesBlipExist(CurrentCustomerBlip) then
            -- RemoveBlip(CurrentCustomerBlip)
          -- end

          -- if DoesBlipExist(DestinationBlip) then
            -- RemoveBlip(DestinationBlip)
          -- end

          -- SetEntityAsMissionEntity(CurrentCustomer,  false, true)

          -- CurrentCustomer           = nil
          -- CurrentCustomerBlip       = nil
          -- DestinationBlip           = nil
          -- IsNearCustomer            = false
          -- CustomerIsEnteringVehicle = false
          -- CustomerEnteredVehicle    = false
          -- TargetCoords              = nil

        -- end

        -- if IsPedInAnyVehicle(playerPed,  false) then

          -- local vehicle          = GetVehiclePedIsIn(playerPed,  false)
          -- local playerCoords     = GetEntityCoords(playerPed)
          -- local customerCoords   = GetEntityCoords(CurrentCustomer)
          -- local customerDistance = GetDistanceBetweenCoords(playerCoords.x,  playerCoords.y,  playerCoords.z,  customerCoords.x,  customerCoords.y,  customerCoords.z)

          -- if IsPedSittingInVehicle(CurrentCustomer,  vehicle) then

            -- if CustomerEnteredVehicle then

              -- local targetDistance = GetDistanceBetweenCoords(playerCoords.x,  playerCoords.y,  playerCoords.z,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z)

              -- if targetDistance <= 10.0 then

                -- TaskLeaveVehicle(CurrentCustomer,  vehicle,  0)

                -- ESX.ShowNotification(_U('arrive_dest'))

                -- TaskGoStraightToCoord(CurrentCustomer,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z,  1.0,  -1,  0.0,  0.0)
                -- SetEntityAsMissionEntity(CurrentCustomer,  false, true)

                -- TriggerServerEvent('84a036d1-27ad-4067-81f8-4e764973f37e')

                -- RemoveBlip(DestinationBlip)

                -- local scope = function(customer)
                  -- ESX.SetTimeout(60000, function()
                    -- DeletePed(customer)
                  -- end)
                -- end

                -- scope(CurrentCustomer)

                -- CurrentCustomer           = nil
                -- CurrentCustomerBlip       = nil
                -- DestinationBlip           = nil
                -- IsNearCustomer            = false
                -- CustomerIsEnteringVehicle = false
                -- CustomerEnteredVehicle    = false
                -- TargetCoords              = nil

              -- end

              -- if TargetCoords ~= nil then
                -- DrawMarker(1, TargetCoords.x, TargetCoords.y, TargetCoords.z - 1.0, 0, 0, 0, 0, 0, 0, 4.0, 4.0, 2.0, 178, 236, 93, 155, 0, 0, 2, 0, 0, 0, 0)
              -- end

            -- else

              -- RemoveBlip(CurrentCustomerBlip)

              -- CurrentCustomerBlip = nil

              -- TargetCoords = Config.JobLocations[GetRandomIntInRange(1,  #Config.JobLocations)]

              -- local street = table.pack(GetStreetNameAtCoord(TargetCoords.x, TargetCoords.y, TargetCoords.z))
              -- local msg    = nil

              -- if street[2] ~= 0 and street[2] ~= nil then
                -- msg = string.format(_U('take_me_to_near', GetStreetNameFromHashKey(street[1]),GetStreetNameFromHashKey(street[2])))
              -- else
                -- msg = string.format(_U('take_me_to', GetStreetNameFromHashKey(street[1])))
              -- end

              -- ESX.ShowNotification(msg)

              -- DestinationBlip = AddBlipForCoord(TargetCoords.x, TargetCoords.y, TargetCoords.z)

              -- BeginTextCommandSetBlipName("STRING")
              -- AddTextComponentString("Destination")
              -- EndTextCommandSetBlipName(blip)

              -- SetBlipRoute(DestinationBlip,  true)

              -- CustomerEnteredVehicle = true

            -- end

          -- else

            -- DrawMarker(1, customerCoords.x, customerCoords.y, customerCoords.z - 1.0, 0, 0, 0, 0, 0, 0, 4.0, 4.0, 2.0, 178, 236, 93, 155, 0, 0, 2, 0, 0, 0, 0)

            -- if not CustomerEnteredVehicle then

              -- if customerDistance <= 30.0 then

                -- if not IsNearCustomer then
                  -- ESX.ShowNotification(_U('close_to_client'))
                  -- IsNearCustomer = true
                -- end

              -- end

              -- if customerDistance <= 100.0 then

                -- if not CustomerIsEnteringVehicle then

                  -- ClearPedTasksImmediately(CurrentCustomer)

                  -- local seat = 0

                  -- for i=4, 0, 1 do
                    -- if IsVehicleSeatFree(vehicle,  seat) then
                      -- seat = i
                      -- break
                    -- end
                  -- end

                  -- TaskEnterVehicle(CurrentCustomer,  vehicle,  -1,  seat,  2.0,  1)

                  -- CustomerIsEnteringVehicle = true

                -- end

              -- end

            -- end

          -- end

        -- else

          -- DrawSub(_U('return_to_veh'), 5000)

        -- end

      -- end

    -- end

  -- end
-- end)

-- Key Controls
Citizen.CreateThread(function()
  while true do

    Citizen.Wait(0)

    if CurrentAction ~= nil then

      SetTextComponentFormat('STRING')
      AddTextComponentString(CurrentActionMsg)
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)

      if IsControlPressed(0,  Keys['E']) and PlayerData.job ~= nil and PlayerData.job.name == 'juge' and (GetGameTimer() - GUI.Time) > 300 then

        if CurrentAction == 'juge_actions_menu' then
          OpenjugeActionsMenu()
        end

        if CurrentAction == 'delete_vehicle' then

          local playerPed = GetPlayerPed(-1)

          if Config.EnableSocietyOwnedVehicles then
            local vehicleProps = ESX.Game.GetVehicleProperties(CurrentActionData.vehicle)
            TriggerServerEvent('592377a5-7e73-4bf3-bfe2-0a092050276e', 'juge', vehicleProps)
          else
            if GetEntityModel(CurrentActionData.vehicle) == GetHashKey('juge') then
              if Config.MaxInService ~= -1 then
                TriggerServerEvent('689b9e08-8078-4be4-a6d6-566e45457521', 'juge')
              end
            end
          end

          ESX.Game.DeleteVehicle(CurrentActionData.vehicle)

        end

        CurrentAction = nil
        GUI.Time      = GetGameTimer()

      end

    end

    if IsControlPressed(0,  Keys['F6']) and Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == 'juge' and (GetGameTimer() - GUI.Time) > 150 then
      OpenMobilejugeActionsMenu()
      GUI.Time = GetGameTimer()
    end

    -- if IsControlPressed(0,  Keys['DELETE']) and (GetGameTimer() - GUI.Time) > 150 then

      -- if OnJob then
        -- StopBrewerJob()
      -- else

        -- if PlayerData.job ~= nil and PlayerData.job.name == 'fisherman' then

          -- local playerPed = GetPlayerPed(-1)

          -- if IsPedInAnyVehicle(playerPed,  false) then

            -- local vehicle = GetVehiclePedIsIn(playerPed,  false)

            -- if PlayerData.job.grade >= 3 then
              -- StartBrewerJob()
            -- else
              -- if GetEntityModel(vehicle) == GetHashKey('fisherman') then
                -- StartBrewerJob()
              -- else
                -- ESX.ShowNotification(_U('must_in_fisherman'))
              -- end
            -- end

          -- else

            -- if PlayerData.job.grade >= 3 then
              -- ESX.ShowNotification(_U('must_in_vehicle'))
            -- else
              -- ESX.ShowNotification(_U('must_in_fisherman'))
            -- end

          -- end

        -- end

      -- end

      -- GUI.Time = GetGameTimer()

    -- end

  end
end)
