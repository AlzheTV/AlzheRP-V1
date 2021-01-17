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





local blips = {



    {title="Epicerie", colour=4, id=52, x = 269.010,   y = -979.790,  z = 28.369},



    {title="Epicerie", colour=4, id=52, x = 25.742, y = -1345.741, z = 28.497},



    {title="Epicerie", colour=4, id=52, x = 373.875, y = -1345.741, z = 28.497},



    {title="Epicerie", colour=4, id=52, x = 2557.458, y = 382.282, z = 107.622},



    {title="Epicerie", colour=4, id=52, x = -3038.939, y = 585.954, z = 6.97},



    {title="Epicerie", colour=4, id=52, x = -3241.927, y = 1001.462, z = 11.850},



    {title="Epicerie", colour=4, id=52, x = 547.431, y = 2671.710, z = 41.176},



    {title="Epicerie", colour=4, id=52, x = 1961.464, y = 3740.672, z = 31.363},



    {title="Epicerie", colour=4, id=52, x = 2678.916, y = 3280.671, z = 54.261},



    {title="Epicerie", colour=4, id=52, x = 1729.216, y = 6414.131, z = 34.057},



    {title="Epicerie", colour=4, id=52, x = 1135.808, y = -982.281, z = 45.45},



    {title="Epicerie", colour=4, id=52, x = -1222.93, y = -906.99, z = 11.35},



    {title="Epicerie", colour=4, id=52, x = -1487.553, y = -379.107, z = 39.163},



    {title="Epicerie", colour=4, id=52, x = -2968.243, y = 390.910, z = 14.054},



    {title="Epicerie", colour=4, id=52, x = 1166.024, y = 2708.930, z = 37.167},



    {title="Epicerie", colour=4, id=52, x = 1392.562, y = 3604.684, z = 33.995},



    {title="Epicerie", colour=4, id=52, x = -1393.409, y = -606.624, z = 29.319},



    {title="Epicerie", colour=4, id=52, x = -48.519, y = -1757.514, z = 28.47},



    {title="Epicerie", colour=4, id=52, x = 1163.373, y = -323.801, z = 68.27},



    {title="Epicerie", colour=4, id=52, x = -707.67, y = -914.22, z = 18.26},



    {title="Epicerie", colour=4, id=52, x = -1820.523, y = 792.518, z = 137.20},



    {title="Epicerie", colour=4, id=52, x = 1698.388, y = 4924.404, z = 41.083},



}







Citizen.CreateThread(function()



    for _, info in pairs(blips) do



        info.blip = AddBlipForCoord(info.x, info.y, info.z)



        SetBlipSprite(info.blip, info.id)



        SetBlipDisplay(info.blip, 4)



        SetBlipScale(info.blip, 0.9)



        SetBlipColour(info.blip, info.colour)



        SetBlipAsShortRange(info.blip, true)



        BeginTextCommandSetBlipName("STRING")



        AddTextComponentString(info.title)



        EndTextCommandSetBlipName(info.blip)



    end



end)






