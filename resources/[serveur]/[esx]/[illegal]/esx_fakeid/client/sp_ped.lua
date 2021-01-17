--###################################--
--########### by  SP#004   ##########--
--###################################--

Citizen.CreateThread(function()
    local hash = GetHashKey("ig_dale")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "ig_dale", -70.58, 359.22, 111.455, 150.0, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)
