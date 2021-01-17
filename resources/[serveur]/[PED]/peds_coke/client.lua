local jostick = {
        {x = -1560.6101074218, y = -413.54296875, z = 38.095569610596},
    }

local v1 = vector3(-1560.6101074218, -413.54296875, 38.095569610596)
function Draw3DText(x, y, z, text)
local onScreen, _x, _y = World3dToScreen2d(x, y, z)
local p = GetGameplayCamCoords()
local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
local scale = (1 / distance) * 2
local fov = (1 / GetGameplayCamFov()) * 100
local scale = scale * fov
if onScreen then
    SetTextScale(0.0, 0.35)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    end
end

local distance = 20
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Inconnu")
        end
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("ig_g")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", "ig_g",-1560.6101074218,-413.54296875,37.095569610596, 476.161, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)