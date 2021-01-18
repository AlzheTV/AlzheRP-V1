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

scanId = 0
cityRobbery = false
local myspawns = {}
CCTVCamLocations = {
	[1] =  { ['x'] = 92.17,['y'] = -1923.14,['z'] = 29.5,['h'] = 205.95, ['info'] = ' Ballas', ["recent"] = false },
	[2] =  { ['x'] = -176.26,['y'] = -1681.15,['z'] = 47.43,['h'] = 313.29, ['info'] = ' Famillies', ["recent"] = false },
	[3] =  { ['x'] = 285.95,['y'] = -2003.95,['z'] = 35.0,['h'] = 226.0, ['info'] = ' Vagos', ["recent"] = false },
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
	  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	  Citizen.Wait(0)
	  PlayerData = ESX.GetPlayerData()
	end
  end)

RegisterCommand("policetv", function (source, args, rawCommand)

	local cam = args[1]

	local xPlayer = ESX.GetPlayerData()
	local job = xPlayer.job
	local jobname = xPlayer.job.name
	if job and jobname == 'police' then
		TriggerEvent('cctv:camera', cam)
	end

end)

inCam = false
cctvCam = 0
RegisterNetEvent("cctv:camera")
AddEventHandler("cctv:camera", function(camNumber)
	camNumber = tonumber(camNumber)
	if inCam then
		inCam = false
		PlaySoundFrontend(-1, "HACKING_SUCCESS", false)
		-- TriggerEvent('animation:tablet',false)
		Wait(250)
		ClearPedTasks(GetPlayerPed(-1))
	else
		if camNumber > 0 and camNumber < #CCTVCamLocations+1 then
			PlaySoundFrontend(-1, "HACKING_SUCCESS", false)
			TriggerEvent("cctv:startcamera",camNumber)
		else
			exports['mythic_notify']:SendAlert('error', "This camera appears to be faulty")
		end
	end
end)

RegisterNetEvent("cctv:startcamera")
AddEventHandler("cctv:startcamera", function(camNumber)

	-- TriggerEvent('animation:tablet',true)
	local camNumber = tonumber(camNumber)
	local x = CCTVCamLocations[camNumber]["x"]
	local y = CCTVCamLocations[camNumber]["y"]
	local z = CCTVCamLocations[camNumber]["z"]
	local h = CCTVCamLocations[camNumber]["h"]

	print("starting cam")
	inCam = true

	SetTimecycleModifier("heliGunCam")
	SetTimecycleModifierStrength(1.0)
	local scaleform = RequestScaleformMovie("TRAFFIC_CAM")
	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(0)
	end

	local lPed = GetPlayerPed(-1)
	cctvCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
	SetCamCoord(cctvCam,x,y,z+1.2)						
	SetCamRot(cctvCam, -15.0,0.0,h)
	SetCamFov(cctvCam, 110.0)
	RenderScriptCams(true, false, 0, 1, 0)
	PushScaleformMovieFunction(scaleform, "PLAY_CAM_MOVIE")
	SetFocusArea(x, y, z, 0.0, 0.0, 0.0)
	PopScaleformMovieFunctionVoid()

	while inCam do
		SetCamCoord(cctvCam,x,y,z+1.2)						
		-- SetCamRot(cctvCam, -15.0,0.0,h)
		PushScaleformMovieFunction(scaleform, "SET_ALT_FOV_HEADING")
		PushScaleformMovieFunctionParameterFloat(GetEntityCoords(h).z)
		PushScaleformMovieFunctionParameterFloat(1.0)
		PushScaleformMovieFunctionParameterFloat(GetCamRot(cctvCam, 2).z)
		PopScaleformMovieFunctionVoid()
		DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
		Citizen.Wait(1)
	end
	ClearFocus()
	ClearTimecycleModifier()
	RenderScriptCams(false, false, 0, 1, 0)
	SetScaleformMovieAsNoLongerNeeded(scaleform)
	DestroyCam(cctvCam, false)
	SetNightvision(false)
	SetSeethrough(false)	

end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		if inCam then

			local rota = GetCamRot(cctvCam, 2)

			if IsControlPressed(1, Keys['N4']) then
				SetCamRot(cctvCam, rota.x, 0.0, rota.z + 0.7, 2)
			end

			if IsControlPressed(1, Keys['N6']) then
				SetCamRot(cctvCam, rota.x, 0.0, rota.z - 0.7, 2)
			end

			if IsControlPressed(1, Keys['N8']) then
				SetCamRot(cctvCam, rota.x + 0.7, 0.0, rota.z, 2)
			end

			if IsControlPressed(1, Keys['N5']) then
				SetCamRot(cctvCam, rota.x - 0.7, 0.0, rota.z, 2)
			end
		end
	end
end)