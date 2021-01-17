ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('Alzhe Roleplay', 'main', RageUI.CreateMenu("Superette 24/7", "~b~Apu~w~: Que puis-je faire pour vous ?"))
RMenu.Add('Alzhe Roleplay', 'boisson', RageUI.CreateSubMenu(RMenu:Get('Alzhe Roleplay', 'main'), "Boissons", "Une petite soif ?"))
RMenu.Add('Alzhe Roleplay', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('Alzhe Roleplay', 'main'), "Nourritures", "Un petit creu ?"))
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Alzhe Roleplay', 'main'), true, true, true, function()
            RageUI.Button("Boisson", "Du soda, de l'eau...", {RightLabel = "+"},true, function()
            end, RMenu:Get('Alzhe Roleplay', 'boisson'))
            RageUI.Button("Nourriture", "Du pain, des hotdogs...", {RightLabel = "+"},true, function()
            end, RMenu:Get('Alzhe Roleplay', 'nourriture'))
        end, function()
        end)
        RageUI.IsVisible(RMenu:Get('Alzhe Roleplay', 'boisson'), true, true, true, function()
            RageUI.Button("Lipton Ice-Tea", "Retirez le meilleur du thé.", {RightLabel = "~g~10$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                  TriggerServerEvent('powx_tuto:BuyIceTea')
                end
            end)
                    RageUI.Button("Eau", "Promis, c'est votre eau.", {RightLabel = "~g~10$"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('powx_tuto:BuyEau')
                end
            end)
        end, function()
        end)
            RageUI.IsVisible(RMenu:Get('Alzhe Roleplay', 'nourriture'), true, true, true, function()
                RageUI.Button("HotDog", "Du pain, de la saucisse et une sauce au choix.", {RightLabel = "~g~10$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('powx_tuto:BuyHotDog')
                    end
                end)
                RageUI.Button("Sandwich", "Un petit sandwich.", {RightLabel = "~g~10$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('powx_tuto:BuyPain')
                    end
                end)    
            end, function()
            end, 1)
            Citizen.Wait(0)
        end
    end)
    local position = {
        {x = 25.67 , y = -1346.37, z = 29.49, },
        {x = 270.19641113282 , y = -980.04681396484, z = 29.369606018066, },
        {x = 2556.4505859375 , y = 382.10852050782, z = 108.62298583984, },
        {x = -3039.9597167968, y = 585.55432128906, z = 7.9089317321778, },
        {x = -3242.5688476562, y = 1001.2889404296, z = 12.830706596374 },
        {x = 547.87591552734, y = 2670.6474609375, z = 42.156494140625 },
        {x = 1960.8127441406, y = 3741.1262207032, z = 32.343788146972},
        {x = 2677.7900390625, y = 3280.9223632812, z = 55.241130828858},
        {x = 1729.3013916016, y = 6415.2841796875, z = 35.03722000122},
        {x = 1135.7453613282, y = -982.87957763672, z = 46.41580581665},
        {x = -1222.3515625, y = -906.87957763672, z = 12.326348304748},
        {x = -1487.3352050782, y = -378.98593139648, z = 40.163410186768},
        {x = -2967.8498535156, y = 391.43347167968, z = 15.043313026428},
        {x = 1165.3764648438, y = 2709.3469238282, z = 38.15768814087},
        {x = 1392.5499267578, y = 3604.9829101562, z = 34.980884552002},
        {x = -48.074787139892, y = -1757.5148925782, z = 29.421005249024},
        {x = 1163.5596923828, y = -323.66516113282, z = 69.205101013184},
        {x = -707.35266113282, y = -914.3833618164, z = 19.215599060058},
        {x = -1820.54296875, y = 792.7728881836, z = 138.11082458496},
        {x = 1698.0483398438, y = 4924.4916992188, z = 42.06362915039}
    }    

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            for k in pairs(position) do
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
                if dist <= 1.0 then
                   RageUI.Text({
                        message = "[E] Parler à Apu.",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('Alzhe Roleplay', 'main'), not RageUI.Visible(RMenu:Get('Alzhe Roleplay', 'main')))
                    end
                end
            end
        end
    end)