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

local PlayerData = {}
ESX = nil
local blips = {}

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

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
     PlayerData.job = job
end)

local coordsX = {}
local coordsY = {}
local coordsZ = {}
local alerteEnCours = false
local AlertePrise = false


Citizen.CreateThread( function()
     while true do
          Citizen.Wait(0)
          if IsPedShooting(GetPlayerPed(-1)) then
               local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
               TriggerServerEvent('TireEntenduServeur', plyPos.x, plyPos.y, plyPos.z)
               alerteEnCours = true
          end
     end
end)


RegisterNetEvent('TireEntendu')
AddEventHandler('TireEntendu', function(gx, gy, gz)
     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
          PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 0)
          ESX.ShowAdvancedNotification(
               'CENTRALE LSPD', 
               '911 - Appel d\'urgence', 
               'Des coups de feu sont entendus.\n~g~Y~s~ Pour prendre l\'appel\n~r~X~s~ Pour ignorer.', 'CHAR_CHAT_CALL', 8)
          coordsX = gx
          coordsY = gy
          coordsZ = gz
          Citizen.Wait(1000)
          alerteEnCours = true
          PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 0)
     end
end)

RegisterNetEvent('TireEntenduBlips')
AddEventHandler('TireEntenduBlips', function(gx, gy, gz)
     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
          if AlertePrise then
               blipId = AddBlipForCoord(gx, gy, gz)
               SetBlipSprite(blipId, 310)
               SetBlipScale(blipId, 1.0)
               SetBlipColour(blipId, 1)
               SetBlipRoute(blipId,  true)
               BeginTextCommandSetBlipName("STRING")
               AddTextComponentString('COUP DE FEU')
               EndTextCommandSetBlipName(blipId)
               SetBlipAsShortRange(blipId, true)
               table.insert(blips, blipId)
               Citizen.Wait(60000)
               AlertePrise = false
               for i, blipId in pairs(blips) do 
                    RemoveBlip(blipId)
               end
          end
     end
end)

Citizen.CreateThread(function()
     while true do
          Citizen.Wait(0)
          if AlertePrise then
               print(json.encode(blips))
               for k,v in pairs(blips) do
                    local dist = Vdist2(GetBlipCoords(v),GetEntityCoords(GetPlayerPed(-1)))
                    print(dist)
                    if dist < 1500.0 then
                         AlertePrise = false
                         RemoveBlip(v)
                         table.remove( blips, k )
                    end
               end
          end
     end
end)

RegisterNetEvent('PriseAppel')
AddEventHandler('PriseAppel', function(name)
     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
          PlaySoundFrontend(-1, "1st_Person_Transition", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 0)
          PlaySoundFrontend(-1, "On_Call_Player_Join", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
          PlaySoundFrontend(-1, "On_Call_Player_Join", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
          PlaySoundFrontend(-1, "On_Call_Player_Join", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
          ESX.ShowNotification('~w~L\'agent ~g~'..name..'~w~ prend l\'appel.')
     end
end)

Citizen.CreateThread(function()
     while true do
          Citizen.Wait(1)
          if IsControlJustPressed(1, 246) and alerteEnCours then
               if PlayerData.job ~= nil and PlayerData.job.name == 'police' and AlertePrise == false then
                    TriggerServerEvent('PriseAppelServeur')
                    AlertePrise = true
                    TriggerEvent('TireEntenduBlips', coordsX, coordsY, coordsZ)
                    alerteEnCours = false
               else
                    ESX.ShowNotification('Vous avez déjà un appel en cours.')
               end
          elseif IsControlJustPressed(1, 73) and alerteEnCours then
               AlertePrise = false
               alerteEnCours = false
               ESX.ShowNotification('Vous avez ignoré l\'appel.')
          end
     end
end)