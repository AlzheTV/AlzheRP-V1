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

ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
    PlayerData = ESX.GetPlayerData()
  end
end)

local chasePed = nil
local chaseVehicle =  nil
local chasePed2 = nil
local chaseVehicle2 = nil

function SpawnVehicle1()
  local playerPed = PlayerPedId()
  local PedPosition = GetEntityCoords(playerPed)
  hashKey = GetHashKey(config.ped1)
  pedType = GetPedType(hashKey)
  RequestModel(hashKey)
  while not HasModelLoaded(hashKey) do
    RequestModel(hashKey)
    Citizen.Wait(100)
  end
  chasePed = CreatePed(pedType, hashKey, PedPosition.x + 2,  PedPosition.y,  PedPosition.z, 250.00, 1, 1)
  ESX.Game.SpawnVehicle(config.vehicle2, {
    x = PedPosition.x + 10 ,
    y = PedPosition.y,
    z = PedPosition.z
  },120, function(callback_vehicle)
    chaseVehicle = callback_vehicle
    local vehicle = GetVehiclePedIsIn(PlayerPed, true)
    SetVehicleUndriveable(chaseVehicle, false)
    SetVehicleEngineOn(chaseVehicle, true, true)
    while not chasePed do Citizen.Wait(100) end;
    PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1)
    TaskWarpPedIntoVehicle(chasePed, chaseVehicle, -1)
    TaskVehicleFollow(chasePed, chaseVehicle, playerPed, 50.0, 1, 5)
    SetDriveTaskDrivingStyle(chasePed, 786468)
    SetVehicleSiren(chaseVehicle, true)
  end)
end


function SpawnVehicle2()
  local playerPed = PlayerPedId()
  local PedPosition = GetEntityCoords(playerPed)
  hashKey2 = GetHashKey(config.ped2)
  pedType2 = GetPedType(hashKey)
  RequestModel(hashKey2)
  while not HasModelLoaded(hashKey2) do
    RequestModel(hashKey2)
    Citizen.Wait(100)
  end
  chasePed2 = CreatePed(pedType2, hashKey2, PedPosition.x + 4,  PedPosition.y,  PedPosition.z, 250.00, 1, 1)
  ESX.Game.SpawnVehicle(config.vehicle2, {
    x = PedPosition.x + 15 ,
    y = PedPosition.y,
    z = PedPosition.z
  },120, function(callback_vehicle2)
    chaseVehicle2 = callback_vehicle2
    local vehicle = GetVehiclePedIsIn(PlayerPed, true)
    SetVehicleUndriveable(chaseVehicle2, false)
    SetVehicleEngineOn(chaseVehicle2, true, true)
    while not chasePed2 do Citizen.Wait(100) end;
    while not chaseVehicle2 do Citizen.Wait(100) end;
    PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1)
    TaskWarpPedIntoVehicle(chasePed2, chaseVehicle2, -1)
    TaskVehicleFollow(chasePed2, chaseVehicle2, playerPed, 50.0, 1, 5)
    SetDriveTaskDrivingStyle(chasePed2, 786468)
    SetVehicleSiren(chaseVehicle2, true)
  end)
end

RegisterCommand("security", function ()
  local xPlayer = ESX.GetPlayerData()
  local job = xPlayer.job
  local jobname = xPlayer.job.name
  if config.usejob and jobname == config.jobname then
    OpenPoliceBackupMenu()
  elseif not config.usejob then
    OpenPoliceBackupMenu()
  end
end, false)

function OpenPoliceBackupMenu()
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'securitymenu',
  {
    title    = '📛 Assistance policière',
    elements = {
      {label = '👮 Escorte x1', value = 'spawn'},	
      {label = '👮 Escore x2', value = 'spawn2'},  
      {label = '🔫 Armer l\'escorte', value = 'giveweapons'},
      {label = '🗡️ Donner l\'ordre d\'attaquer', value = 'playerattack'},
      {label = '🚘 Réparer véhicules escorte', value = 'fix'},
      {label = '🛫 Laisser partir l\'escorte', value = 'wander'},
      {label = '🔊 Suivez-moi !', value = 'follow'},
      {label = '🗑️ Supprimer l\'escorte', value = 'delete'},
      {label = '⬅️ Quitter l\'interface', value = 'exit'},
    }
  },
  
  function(data, menu)
    if data.current.value == 'spawn' then
      SpawnVehicle1()  
    elseif data.current.value == 'spawn2' then
      SpawnVehicle1() 
      SpawnVehicle2()	  
    elseif data.current.value == 'getout' then
      TaskLeaveVehicle(chasePed, chaseVehicle, 0);
      TaskLeaveVehicle(chasePed2, chaseVehicle2, 0);
      PlayAmbientSpeech1(chasePed, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      PlayAmbientSpeech1(chasePed2, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
    elseif data.current.value  == 'giveweapons' then
      GiveWeaponToPed(chasePed, config.weapon1, 250, false, true)
      GiveWeaponToPed(chasePed2, config.weapon2, 250, false, true)
    elseif data.current.value == 'playerattack' then
      closestPlayer = ESX.Game.GetClosestPlayer()
      target = GetPlayerPed(closestPlayer)
      TaskShootAtEntity(chasePed, target, 60, 0xD6FF6D61);
      TaskCombatPed(chasePed, target, 0, 16)
      SetEntityAsMissionEntity(chasePed, true, true)
      SetPedHearingRange(chasePed, 15.0)
      SetPedSeeingRange(chasePed, 15.0)
      SetPedAlertness(chasePed, 15.0)
      SetPedFleeAttributes(chasePed, 0, 0)
      SetPedCombatAttributes(chasePed, 46, true)
      SetPedFleeAttributes(chasePed, 0, 0)
      TaskShootAtEntity(chasePed2, target, 60, 0xD6FF6D61);
      TaskCombatPed(chasePed2, target, 0, 16)
      SetEntityAsMissionEntity(chasePed2, true, true)
      SetPedHearingRange(chasePed2, 15.0)
      SetPedSeeingRange(chasePed2, 15.0)
      SetPedAlertness(chasePed2, 15.0)
      SetPedFleeAttributes(chasePed2, 0, 0)
      SetPedCombatAttributes(chasePed2, 46, true)
      SetPedFleeAttributes(chasePed2, 0, 0)
    elseif data.current.value  == 'fix' then
      SetVehicleFixed(chaseVehicle)
      SetVehicleFixed(chaseVehicle2)
      SetVehicleUndriveable(chaseVehicle, false)
      SetVehicleUndriveable(chaseVehicle2, false)
    elseif data.current.value == 'come' then
      local playerPed = PlayerPedId()
      local PedPosition = GetEntityCoords(playerPed)
      PlayAmbientSpeech1(chasePed, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      PlayAmbientSpeech1(chasePed2, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      TaskGoStraightToCoord(chasePed, PedPosition.x, PedPosition.y, PedPosition.z, 2.0, 20, 180.0, 0);
      TaskGoStraightToCoord(chasePed2, PedPosition.x, PedPosition.y, PedPosition.z, 2.0, 20, 180.0, 0);
    elseif data.current.value ==  'wander' then
      TaskVehicleDriveWander(chasePed, chaseVehicle, 50.0, 1)
      TaskVehicleFollow(chasePed2, chaseVehicle2, chasePed, 50.0, 1, 5)
      PlayAmbientSpeech1(chasePed, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      PlayAmbientSpeech1(chasePed2, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
    elseif data.current.value ==  'wp' then
      if GetFirstBlipInfoId( 8 ) ~= 0 then
        local waypointBlip = GetFirstBlipInfoId( 8 )
        local coord = Citizen.InvokeNative( 0xFA7C7F0AADF25D09, waypointBlip, Citizen.ResultAsVector( ) )
        local x  = coord.x
        local y = coord.y
        local z = coord.z
        TaskVehicleDriveToCoordLongrange(chasePed, chaseVehicle, x, y, z, 35.00, 1, 10.0)
        TaskVehicleDriveToCoordLongrange(chasePed2, chaseVehicle2, x, y, z, 35.00, 1, 10.0)
        PlayAmbientSpeech1(chasePed, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
        PlayAmbientSpeech1(chasePed2, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      end
    elseif data.current.value ==  'delete' then
      DeleteVehicle(chaseVehicle)
      DeletePed(chasePed)
      DeleteVehicle(chaseVehicle2)
      DeletePed(chasePed2)
    elseif data.current.value ==  'follow' then
      local playerPed = PlayerPedId()
      TaskVehicleFollow(chasePed, chaseVehicle, playerPed, 50.0, 1, 5)
      TaskVehicleFollow(chasePed2, chaseVehicle2, playerPed, 50.0, 1, 5)
      PlayAmbientSpeech1(chasePed, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
      PlayAmbientSpeech1(chasePed2, "Chat_Resp", "SPEECH_PARAMS_FORCE", 1)
    elseif data.current.value ==  'exit' then
      menu.close()
    end
  end,
  
  function(data, menu)
    menu.close()
  end
)
end 

  Citizen.CreateThread(function()
	  while true do
		  Citizen.Wait(10)
  
		  if IsControlJustReleased(0, Keys['F3']) and not IsDead and PlayerData.job ~= nil and PlayerData.job.name == 'police' then
			  OpenPoliceBackupMenu()
		  end
  

	  end
  end)
