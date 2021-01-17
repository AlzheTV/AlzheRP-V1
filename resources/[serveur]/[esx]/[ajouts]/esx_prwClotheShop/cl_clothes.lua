ESX                  = nil

_menuPool = NativeUI.CreatePool()

_menuPool:RefreshIndex()

local MaskTab  = {}

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

RegisterNetEvent('parow:SyncAccess')

AddEventHandler('parow:SyncAccess', function()

    ESX.TriggerServerCallback("parow:getMask", function(result)

        MaskTab = result

    end)

end)

local HasAlreadyEnteredMarker = false

local LastZone                = nil

local CurrentAction6           = nil

local CurrentAction6Msg        = ''

local CurrentAction6Data       = {}

local IsInShopMenu            = false

local Categories              = {}

local Vehicles                = {}

local LastVehicles            = {}

local CurrentVehicleData      = nil

local MenuOn = false

local curSex = 0

function ClotheShopAdd(menu)



	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, _)

		curSex = skin.sex

		--TriggerEvent('skinchanger:loadSkin', skin)

	end)

	playerPed = GetPlayerPed(-1)

	local tenues = NativeUI.CreateItem("👔 ~b~Mes ~r~tenues","")

	menu:AddItem(tenues)

	local haut = _menuPool:AddSubMenu(menu, "👕 ~b~Haut","",true,true)

	local bras = _menuPool:AddSubMenu(menu, "🙋 ~y~Bras","",true,true)

	local tsh = _menuPool:AddSubMenu(menu, "👕 ~b~T-shirt","",true,true)

	local bas = _menuPool:AddSubMenu(menu, "👖 ~b~Pantalon","",true,true)

	local chaussure = _menuPool:AddSubMenu(menu, "👟 ~r~Chaussure","",true,true)

	local lunette = _menuPool:AddSubMenu(menu, "😎 ~y~Lunette","",true,true)

	local chapeau = _menuPool:AddSubMenu(menu, "🎩 ~p~Chapeau","",true,true)

	local gil = _menuPool:AddSubMenu(menu, "👮 ~b~Gillet par balles","",true,true)

	local sac = _menuPool:AddSubMenu(menu, "🎒~r~Sac","",true,true)

	local montre = _menuPool:AddSubMenu(menu, "~y~Montre","",true,true)

	local chain = _menuPool:AddSubMenu(menu, "🔣 ~b~Autres","",true,true)

	local boucle = _menuPool:AddSubMenu(menu, "👂 ~y~Boucle d'oreille","",true,true)



 	chaussureFct(chaussure)

 	gilFct(gil)

 	basFct(bas)

 	casqueFct(chapeau)

	torsomenu(bras)

	tshirtmenu(tsh)

 	lunetteFct(lunette)

	montreMenu(montre)

 	sacFct(sac)

 	boucleFct(boucle)

 	hautFct(haut)

	chainFct(chain)

	 

	menu.OnItemSelect = function(_,_,ind)

		if ind == 1 then

			_menuPool:CloseAllMenus()

			local clotheShop2 = NativeUI.CreateMenu("", "Magasin", 5, 100,"shopui_title_midfashion","shopui_title_midfashion")

			_menuPool:Add(clotheShop2)

			SavedTenues(clotheShop2)

			clotheShop2:Visible(not clotheShop2:Visible())

		end



	end



	menu.OnMenuClosed = function(_, _, _)



		RecupTenues()

		MenuOn = false

		

	end



end

function refreshthisshit()

	_menuPool:CloseAllMenus(



	)

	local clotheShop2 = NativeUI.CreateMenu("", "Magasin", 5, 100,"shopui_title_midfashion","shopui_title_midfashion")

	_menuPool:Add(clotheShop2)

	SavedTenues(clotheShop2)

	clotheShop2:Visible(not clotheShop2:Visible())

end

function SavedTenues(menu)

	p = NativeUI.CreateItem("Sauvegarder cette tenue","")

	menu:AddItem(p)

	local sqk = nil

	menu.OnItemSelect = function(_,ix,ind)

		sqk = ind - 1

		if ind == 1 then

			k = gettxt2("Tenue")

			if k ~= nil then

				if tostring(k) ~= nil and tostring(k) ~= "" then



					ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)

						TriggerServerEvent("parow:SaveTenueS",k,skin)

					end)

					Wait(550)

					refreshthisshit()

				end

			end

		end

	end

	ESX.TriggerServerCallback('parow:GetTenues', function(skin)

		if #skin == 0 then

			menu:AddItem(NativeUI.CreateItem("Vide",""))

		end

		for i = 1, #skin,1 do

			local m = _menuPool:AddSubMenu(menu, skin[i].label,"",true,true)

			p = NativeUI.CreateItem("Équiper","")

			k = NativeUI.CreateItem("Renommer","")

			l = NativeUI.CreateItem("Supprimer","")

			m:AddItem(p)

			m:AddItem(k)

			m:AddItem(l)

			



			m.OnItemSelect = function(_,ix,v)

				clothes = skin[i]



				for k,v in pairs(clothes) do

					if k == "tenue" then

					clothes = v

					break

					end

				end

				if v == 1 then



					TriggerEvent('skinchanger:getSkin', function(skin)



					TriggerEvent('skinchanger:loadClothes', skin, json.decode(clothes))

					TriggerEvent('esx_skin:setLastSkin', skin)

  

					TriggerEvent('skinchanger:getSkin', function(skin)

					  TriggerServerEvent('esx_skin:save', skin)

					end)

					_menuPool:CloseAllMenus()

				end)

				end

				if v == 2 then

					kx = gettxt2(skin[i].label)

					if tostring(kx) ~= nil then

						TriggerServerEvent('parow:RenameTenue', skin[i].id,kx)

						Wait(550)

						refreshthisshit()

					end

				end

				if v == 3 then

					TriggerServerEvent('parow:DeleteTenue', skin[i].id)

					Wait(550)

					refreshthisshit()

				end

			end

		end

		_menuPool:RefreshIndex()

	end)



end



function gettxt2(txtt)

    AddTextEntry('FMMC_MPM_NA', "Texte")

    DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", txtt, "", "", "", 100)

    while (UpdateOnscreenKeyboard() == 0) do

        DisableAllControlActions(0);

        Wait(0);

    end

    if (GetOnscreenKeyboardResult()) then

		local result = GetOnscreenKeyboardResult()

		if tonumber(result) ~= nil then

			if tonumber(result) >= 1 then



				return tonumber(result)

			else

				

			end

		else

		return result

		end

    end



end

function montreMenu(menu)



	for i = -1,19,1 do

		--

		chapeauItem = {}

		local amount = {}

		local ind = i+2

		for c = 1, GetNumberOfPedPropTextureVariations(playerPed, 6, i+1), 1 do



			amount[c] = c 

			

		end



		v = NativeUI.CreateListItem("Montre #"..ind, amount, 1, "",5)

	

		menu:AddItem(v)

		



	end

	--chapeauItem= {}

	_menuPool:RefreshIndex()

	

	menu.OnIndexChange = function(menu,index6)

		local index2 = 1

		

		playerPed = GetPlayerPed(-1)

		SetPedPropIndex(playerPed, 6, index6-1, 0, 2)

		menu.OnListSelect = function(_, _, _)

			ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

				if result then

			

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

				clothesSkin = {



				   ['montre'] = index6-1,

				   ['montre2'] = index2-1,

				   





			   }

			   TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

			   

		   

		   

	   end)



	   TriggerEvent('skinchanger:getSkin', function(skin)



		   

		   TriggerServerEvent('esx_skin:save', skin)

		   

	   

	   

	   end)

	end

	end)



		end

		menu.OnListChange = function(_, _, index26)

			index2 = index26

			SetPedPropIndex(playerPed, 6, index6-1, index26-1, 2)

		end

	end



end



function RecupTenues()

    --("ou")



	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, _)

--		curSex = skin.sex

		TriggerEvent('skinchanger:loadSkin', skin)

	end)



end

function chainFct(menu)







	for i = -1,GetNumberOfPedDrawableVariations(playerPed,7),1 do

		--

		chapeauItem = {}

		local amount = {}

		local ind = i+2

		for c = 1, GetNumberOfPedTextureVariations(playerPed, 7, i+1), 1 do



			amount[c] = c 

			

		end



		v = NativeUI.CreateListItem("Chaine #"..ind, amount, 1, "",5)

	

		menu:AddItem(v)

		



	end

	--chapeauItem= {}

	_menuPool:RefreshIndex()

	

	menu.OnIndexChange = function(menu,index6)

		local index2 = 1

		

		playerPed = GetPlayerPed(-1)

		SetPedComponentVariation(playerPed,7, index6-1, 0, 2)

		menu.OnListSelect = function(_, _, _)

			ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

				if result then

			

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

				clothesSkin = {



				   ['chain_1'] = index6-1,

				   ['chain_2'] = index2-1,

				   





			   }

			   TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

			   

		   

		   

	   end)



	   TriggerEvent('skinchanger:getSkin', function(skin)



		   

		   TriggerServerEvent('esx_skin:save', skin)

		   

	   

	   

	   end)

	end

	end)



		end

		menu.OnListChange = function(_, _, index26)

			index2 = index26

			SetPedComponentVariation(playerPed, 7, index6-1, index26-1, 2)

		end

	end



end



function torsomenu(menu)



	for i = 0,GetNumberOfPedDrawableVariations(playerPed,8)-1,1 do

		--		Citizen.Wait(2)

				local amount = {}

				local ind = i+1

				for c = 1, GetNumberOfPedTextureVariations(playerPed, 8, i), 1 do

		

					amount[c] = c 

					

				end



				x = NativeUI.CreateItem("Bras #"..i,"")

			

				menu:AddItem(x)

				

		

	end

		

	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)



		local index2 = 1



		

--		SetPedComponentVariation(playerPed,3, brasInd[index6], 0, 2)

--		SetPedComponentVariation(playerPed,8, sousTorse[index6], 0, 2)



		SetPedComponentVariation(playerPed,3, index6-1, 0, 2)

		menu.OnItemSelect = function(menu, _, _)

			

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

					 clothesSkin = {



						['arms'] = index6-1





					}

					print(json.encode(skin))

					print(json.encode(clothesSkin))

					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

					

				

				

			end)



			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

				TriggerServerEvent('esx_skin:save', skin)

				

			

			

			end)

			menu.OnMenuClosed = function(_)

				gilItem= {}

				sousTorse = {}

			end

		end



	end







end

function tshirtmenu(menu)



	for i = 0,GetNumberOfPedDrawableVariations(playerPed,8)-1,1 do

		--		Citizen.Wait(2)

				local amount = {}

				local ind = i+1

				for c = 1, GetNumberOfPedTextureVariations(playerPed, 8, i), 1 do

		

					amount[c] = c 

					

				end



				x = NativeUI.CreateListItem("Sous haut #"..i, amount, 1, "",5)

			

				menu:AddItem(x)

				

		

	end

		

	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)



		local index2 = 1



		

--		SetPedComponentVariation(playerPed,3, brasInd[index6], 0, 2)

--		SetPedComponentVariation(playerPed,8, sousTorse[index6], 0, 2)



		SetPedComponentVariation(playerPed,8, index6-1, 0, 2)

		menu.OnListSelect = function(menu, _, _)

			ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

				if result then

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

					 clothesSkin = {



						['tshirt_1'] =index6-1, ['tshirt_2'] = index2-1,





					}

					print(json.encode(skin))

					print(json.encode(clothesSkin))

					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

					

				

				

			end)



			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

				TriggerServerEvent('esx_skin:save', skin)

				

			

			

			end)

		end

		end)

			menu.OnMenuClosed = function(_)

				gilItem= {}

				sousTorse = {}

			end

		end

		menu.OnListChange = function(_, _, index24)

			index2 = index24

			SetPedComponentVariation(playerPed,8, index6-1, index24-1, 2)



			



		end

	end



end



function hautFct(menu)







	playerPed = GetPlayerPed(-1)



	 if curSex == 0 then

		--hautItems = {"T-shirt","T-shirt","Maillot de basket","Survêtement","Veste","Débardeur","Veste en cuir","Veste capuche","Sweat","Polo","Costard","Chemise","Chemise","Chemise","Chemise à carreaux","Torse nu","T-shirt","Débardeur","T-shirt noël","Veste classe","Veste classe","s"}

		sousTorse = {15,15,15,1,1,15,2,1,15,15,10,6 ,15,15,15,15,15,15,15,6,4,13,7,15,1,4,6,15,4,4,31,31,31,31,15,15,4 ,15,2,15,15,6,15,15,15,15,6,0}

		brasInd =   {0 ,0 ,2 ,0,1,5 ,1,1,8 ,0 ,1 ,11,6 ,11 ,1  ,15 ,0 ,5 ,0,1,1,11,0,1,1,11,11,1,1,1,1,1,1,0,0,1		,5 ,1,8 ,0 ,0,1 ,11,11,0, 0,1}

	hautItems = {"T-shirt","T-shirt","Maillot de basket","Veste de survêtement","Veste classique","Débardeur","Veste en cuir","Veste à capuche","Sweat","Polo","Veste de costard","Classe","Chemise longue","Chemise","Chemise à carreaux","Rien","T-shirt","Débardeur","T-shirt","Veste de costard","Veste de costard","Veste","T-shirt","Veste de costard","Veste de costard","Veste","Chemise","Veste de costard","Veste de costard","Veste de costard","Veste de costard","Veste de costard","Veste de costard","T-shirt","T-shirt","Veste de costard","Débardeur","Veste en cuir","Sweat","Polo","Veste","Chemise","Chemise avec bretelle","Chemise avec bretelle","T-shirt","Chemise","Veste de costard","T-shirt","Haut aviation","Pull","Pull","Pull de noël","Sweat de noël","Pull","Veste aviation","Haut police","T-shirt sale","Veste","Veste de costard","Veste de costard","Veste de costard","Gillet","Veste","Chemise","Veste en cuir","Veste bizarre","Veste bizarre","Haut en latex","","Veste","Veste avec fourrure","T-shirt","Veste longue","T-shirt","Veste luxe","Veste luxe","Veste longue","Veste longue","Pull de luxe","Veste collège","T-shirt long","T-shirt long","Polo long","T-shirt long","Pull street","Veste","Sweat à capuche","Veste collège","Veste collège","","Gillet","Rien","Veste","Polo","Polo","Chemise","Sweat à capuche","T-shirt","Haut commando","Veste de costard","Veste de costard","Veste de costard","Veste de costard","Veste de costard","Veste de costard","Chemise touriste","Veste luxe","Veste asiatique","Veste luxe","Débardeur étrange","Veste en cuir","Pull à col roulé","Veste longue","Veste","Tenue karaté","Veste longue","Haut père noël","Chemise","Veste","Veste de costard","Veste","Haut étrange","","Polo","Veste de pêcheur","Veste","Veste à carreaux","Veste à carreaux","T-shirt long","Veste de sécurité","","","","Chemise chill","Sweat à capuche","Veste luxe","Veste","Pull de vieux","Veste","Pull à col roulé","Veste longue","Veste","Veste longue","Veste","Pyjama","Pyjama","T-shirt","Veste aviation","Veste aviation","Veste cowboy","Veste asiatique","Veste en cuir","Haut de sport","Veste","Veste","Veste cowboy","Veste en cuir","Veste","Veste","Veste","","Veste en cuir","Veste","T-shirt","Haut spécial","Veste","Doudoune","Veste","Veste en jeans","Veste en jeans","Sweat à capuche","Veste en jeans","Veste en jeans","Veste en cuir","Veste en cuir","Veste","","Haut tron","Veste","Veste","Veste","Sweat","Veste de costard","Veste longue","Veste longue ouverte","Gillet spécial","Veste longue","Veste longue","Veste longue ouverte","Pull à motif","Veste","Veste longue","T-shirt","Pull de noël","Pull de noël","Pull de noël","Pull de noël","Veste noël","Veste de noël","Sweat à capuche","T-shirt lumineux","Pull à capuche","Sweat à capuche","Veste longue capuche","Pull à capuche","Veste camouflage","Veste camouflage capuche","T-shirt","Veste longue","Veste longue","Veste longue à capuche","","","Veste camouflage","Veste camouflage","Veste en camouflage","Veste longue","Veste longue capuche","Veste camouflage","Haut camouflage","Haut camouflage","T-shirt camouflage","Veste manche courte","Veste","T-shirt manche longue","T-shirt","Veste aviation","Veste aviation","Veste","Veste","Veste aviation","Polo","Polo","Débardeur","T-shirt manche très courte","Débardeur camouflage","Veste fourrure","Polo","Polo","Veste","Veste","Pull d'hiver","Pull super héro","Veste manche courte","Veste","Veste","Polo","Veste","Rien","Veste avec capuche","Haut pilote","Pull original","Veste original","Veste old school","Veste à losange","Pull spécial","T-shirt spécial","Veste spécial ouverte","Sweat à capuche","Sweat à capuche","Veste en cuir","Veste à carreaux","Veste à carreaux","Veste","Veste","Doudoune","Haut pilote","T-shirt"}



	for i = 0,GetNumberOfPedDrawableVariations(playerPed,11)-1,1 do

--		Citizen.Wait(2)

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedTextureVariations(playerPed, 11, i), 1 do



			amount[c] = c 

			

		end

		if hautItems[ind] == nil then

			hautItems[ind] = "Haut #"..i

		end

		x = NativeUI.CreateListItem(hautItems[ind], amount, 1, "",5)

	

		menu:AddItem(x)

		



	end









	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)



		local index2 = 1



		if brasInd[index6] == nil then

			brasInd[index6] = 1



		end

		if sousTorse[index6] == nil then

			sousTorse[index6] = 1



		end

		

--		SetPedComponentVariation(playerPed,3, brasInd[index6], 0, 2)

--		SetPedComponentVariation(playerPed,8, sousTorse[index6], 0, 2)



		SetPedComponentVariation(playerPed,11, index6-1, 0, 2)

		menu.OnListSelect = function(menu, _, _)

			ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

				if result then

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

					 clothesSkin = {

						['torso_1'] = index6-1, ['torso_2'] = index2-1,





					}

					print(json.encode(skin))

					print(json.encode(clothesSkin))

					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

					

				

				

			end)



			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

				TriggerServerEvent('esx_skin:save', skin)

				

			

			

			end)

		end

	end)

			menu.OnMenuClosed = function(_)

				gilItem= {}

				sousTorse = {}

			end

		end

		menu.OnListChange = function(_, _, index24)

			index2 = index24

			SetPedComponentVariation(playerPed,11, index6-1, index24-1, 2)



			



		end

	end

	gilItem={}

	_menuPool:RefreshIndex()

	

else

	

end

hautItems = {}

gilItem= {}

sousTorse = {}

end











function sacFct(menu)

	playerPed = GetPlayerPed(-1)

	n = NativeUI.CreateItem("Sac tactique","")

	menu:AddItem(n)

	c = NativeUI.CreateItem("Sac noir","")

	menu:AddItem(c)

	cx = NativeUI.CreateItem("Aucun sac","")

	menu:AddItem(cx)

	menu.OnItemSelect = function (_, _, index)

		if index == 1 then

			SetPedComponentVariation(playerPed, 5, 40, 0, 2)

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

				clothesSkin = {

				   ['bags_1'] = 40, ['torso_2'] = 0,





			   }



			   TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

			   

		   

		   

	   end)



	   TriggerEvent('skinchanger:getSkin', function(skin)



		   

		   TriggerServerEvent('esx_skin:save', skin)

		   

	   

	   

	   end)

	elseif index == 2 then

			SetPedComponentVariation(playerPed, 5, 44, 0, 2)

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

				clothesSkin = {

				   ['bags_1'] = 44, ['torso_2'] = 0,





				}

			   TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

			   

		   

		   

	   end)



	   TriggerEvent('skinchanger:getSkin', function(skin)



		   

		   TriggerServerEvent('esx_skin:save', skin)

		   

	   

	   

	   end)

	else



		SetPedComponentVariation(playerPed, 5, 0, 0, 2)

		TriggerEvent('skinchanger:getSkin', function(skin)



			



			clothesSkin = {

			   ['bags_1'] = 0, ['torso_2'] = 0,





			}

		   TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

		   

	   

	   

   end)



   TriggerEvent('skinchanger:getSkin', function(skin)



	   

	   TriggerServerEvent('esx_skin:save', skin)

	   

   

   

   end)

		end



	end





end







function gilFct(menu)





	playerPed = GetPlayerPed(-1)



	 if curSex == 0 then



		gilItem = {

			"Aucun","Gillet léger","Gillet moyen","Gillet","Gillet lourd","Gillet","Gillet large","Gillet large","/","/","Gillet large","Gillet large","Gillet large","Aucun","Aucun","Gillet lourd","Gillet très lourd","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré","Gillet coloré"



		}



	



	for i = 0,GetNumberOfPedDrawableVariations(playerPed,9)-1,1 do

		--

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedTextureVariations(playerPed, 9, i), 1 do



			amount[c] = c 

			

		end

		if gilItem[ind] == nil then

			gilItem[ind] =  "Gillet #"..i

		end

		x = NativeUI.CreateListItem(gilItem[ind], amount, 1, "",5)

	

		menu:AddItem(x)

		



	end



else

	

end

_menuPool:RefreshIndex()



	

	menu.OnIndexChange = function(menu,index)

		playerPed = GetPlayerPed(-1)

		SetPedComponentVariation(playerPed, 9, index-1, 0, 2)

		menu.OnListChange = function(menu, _, index2)

			SetPedComponentVariation(playerPed, 9, index-1, index2-1, 2)

			

			menu.OnListSelect = function(menu, _, _)

				TriggerEvent('skinchanger:getSkin', function(skin)

					TriggerServerEvent('esx_skin:save', skin)

				end)

				menu.OnMenuClosed = function(_)

					gilItem= {}

				end

			end

		end

	end

	gilItem={}

end





function basFct(menu)

	playerPed = GetPlayerPed(-1)



	 if curSex == 0 then



		botItem = {

			"Jeans",

			"Jeans",

			"Short",

			"Survetement",

			"Jeans",

			"Survetement large",

			"Short",

			"Jeans",

			"Pantalon chino",

			"Pantalon chino avec ceinture",

			"Jeans noir",

			"/",

			"Short","Jeans noir ceinture","Caleçon","Short","Short coloré","Short chino","Caleçon","Pantalon ceinture","Pantalon","Caleçon","Pantalon chino","Pantalon chino ceinture","Jeans noir","Jeans noir","Jeans motif","Pantalon coloré","Jeans noir","Pantalon spécial","Pantalon aviateur","Pantalon cours","Legging","Pantalon large","Pantalon opération","Pantalon classe","Pantalon ouvrier","Pantalon classe","Pantalon de papel","Pantalon de papel","Survetement cours","Pantalon aviateur","Short long","Jeans large","/","Survêtement","Pantalon de combat","Pantalon déterminé","Pantalon classe","Pantalon classe","Pantalon classe","Pantalon luxe","Pantalon luxe","Pantalon luxe","Short motif", "Survêtement","Jupe","Pantalon noël","Pantalon spécial","Pantalon de luttin","Pantalon à motif","Caleçon","Short long","Jeans","Survêtement","Pyjama","Pantalon chill","Pantalon parachutiste","Pantalon cowboy","Pantalon de la mort","Pantalon cowboy","Pantalon skinny","Pantalon skinny","Pantalon skinny","Pantalon skinny","Jeans","Jeans","Pantalon Tron","Survêtement","Pantalon cuir","Pantalon trop petit","Pantalon trop petit","Jeans","Pantalon latex","Pantalon Opération Spécial","Pantalon lumineux"





		}



	



	for i = 0,GetNumberOfPedDrawableVariations(playerPed,4)-1,1 do

		--

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedTextureVariations(playerPed, 4, i), 1 do



			amount[c] = c 

			

		end

		if botItem[ind] == nil then

			botItem[ind] = "Pantalon #"..i

		end

		x = NativeUI.CreateListItem(botItem[ind], amount, 1, "",5)

	

		menu:AddItem(x)

		



	end



else

		botItem = {"Jeans","Jeans Large","Jogging court","Pantalon Simple","Jeans à Ourlet","Short","Pantalon patte d’éléphant","Jupe de Travail","Jupe courte","Jupe courte a paillette","Short","Jeans Treillis","Jupe écolière","JE SUIS LE 13","Short 1","Culotte 1","Short 2","Culotte 2","Jupe Longue","Shorty","Porte Jartelle","Culotte","Porte Jartelle","Pantalon patte d’éléphant","Jupe Longue","Short","Jupe Courte","Slim","Jupe","Pantalon Aviateur","Treillis","Pantalon Mercenaire","Pantalon Large","Pantalon Eboueuse","Jupe Longue","Pantalon de Costume","Pantalon de Travail","Pantalon Travail 2","Pantalon Simple","Pantalon Costume","Pantalon d'aviateur","Pantalon Fermeture","Legging à trou","Pantalon de Travail","BUUUG","Pantalon de Costume","Pantalon Mercenaire","Pantalon Travail","Pantalon Patte Elephant","Slim","Pantalon Patte Elephant 1","Pantalon Patte Elephant 2","Slim 1","Slim 2","Culotte","Jupe Ouverte","Jogging","Pantalon Noel","Pantalon Noel patte elephant","Treillis","Shorty","Porte jartel","Pantalon Taille haute","Jogging","Pyjama","Pantalon Motard","Pantalon Motard 2","Pantalon Cow-Boy","Pantalon de competition","Pantalon Simple","Pantalon Cow-Boy 2","Slim Jeans","Slim Jeans 2","Slim 1","Slim 2","Slim 3","Collant Resille","Pantalon Motard","Jogging 1","Jogging 2","Jogging 3","Jogging 4","Jogging 5","jogging 6","Deguisement","Legging Militaire","Legging Illuminé","Pantalon Militaire","Pantalon Militaire rentré","Short Militaire","Pantalon Militaire large","Jeans Large","Competition Motard","Pantalon aviateur 1","Pantalon aviateur 2","Legging","Legging coloré","Pantalon Travail","Survetement rentré","Survetment","Legging","Pantalon large"}







	for i = 0,GetNumberOfPedDrawableVariations(playerPed,4)-1,1 do

		--

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedTextureVariations(playerPed, 4, i), 1 do



			amount[c] = c 

			

		end

		if botItem[ind] == nil then

			botItem[ind] = "Pantalon #"..i

		end

		x = NativeUI.CreateListItem(botItem[ind], amount, 1, "",5)



		menu:AddItem(x)

		



	end

end

_menuPool:RefreshIndex()





	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)

		SetPedComponentVariation(playerPed, 4, index6-1, 0, 2)

		local index2 = 1

		menu.OnListSelect = function(menu, _, _)

			ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

				if result then

			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

	

					 clothesSkin = {

						['pants_1'] = index6-1, ['pants_2'] = index2-1,





					}



					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

					

				

				

			end)



			TriggerEvent('skinchanger:getSkin', function(skin)

	

				

				TriggerServerEvent('esx_skin:save', skin)

				

			

			

			end)

		end

	end)

			menu.OnMenuClosed = function(_)

				gilItem= {}

				sousTorse = {}

			end

		end

		menu.OnListChange = function(_, _, index24)

			index2 = index24

			SetPedComponentVariation(playerPed, 4, index6-1, index24-1, 2)



		end

	end

	botItem={}

end







function chaussureFct(menu)

	--("s")

	playerPed = GetPlayerPed(-1)



	 if curSex == 0 then



						chaussureItem = {

							"Sneakers",

							"Chaussure basse",

							"Sneakers",

							"Chaussure luxieuse",

							"Chaussure classique",

							"Claquette",

							"Claquette chaussette",

							"Chaussure chaussette montante",

							"Chaussure chaussette montante",

							"Chaussure chaussette montante",

							"Chaussure luxe chaussette montante",

							"Chaussure luxe",

							"Chaussure aventurier",

							"/",

							"Chaussure aventurier",

							"Chaussure luxe",

							"Claquette",

							"Chaussure de lutin",

							"Chaussure luxe",

							"Chaussure luxe",

							"Chaussure luxe",

							"Chaussure luxe",

							"Chaussure classique",

							"Bottine",

							"Bottine",

							"Bottine",

							"Chaussure classique",

							"Bottine",

							"Chaussure extravagante",

							"Chaussure luxe",

							"Chaussure luxe",

							"Sneakers",

							"Chaussure street",

							"/",

							"Pied nu",

							"Bottine",

							"Chaussure luxe",

							"Botte",

							"Chaussure avec talon",

							"Botte",

							"Chaussure luxe",

							"Pantoufle",

							"Sneakers simple",

							"Chaussure classe",

							"Botte",

							"Chaussure basse",

							"Sneakers",

							"Botte",

							"Chaussure classique",

							

							"Chaussure classique",

							

							"Botte",

							"Chaussure de marche",

							"Chaussure",

							"Botte",

							"Chaussure de marche",

							"Chaussure de marche",

							"Chaussure de marche",

							"Chaussure de marche",

							"Chaussure Tron",

							"Chaussure",

							"Sneakers",

							"Pantoufle lumineuse"



						}



						for i = 0,GetNumberOfPedDrawableVariations(playerPed,6)-1,1 do

							--

							local amount = {}

							local ind = i+1

							for c = 1, GetNumberOfPedTextureVariations(playerPed, 6, i), 1 do



								amount[c] = c 

								

							end

							if chaussureItem[ind] == nil then

								chaussureItem[ind] = "Chaussures #"..i

							end

							x = NativeUI.CreateListItem(chaussureItem[ind], amount, 1, "",5)

						

							menu:AddItem(x)

							



						end



					_menuPool:RefreshIndex()



						

						menu.OnIndexChange = function(menu,index6)

							playerPed = GetPlayerPed(-1)

							SetPedComponentVariation(playerPed, 6, index6-1, 0, 2)

							local index2 = 1

							menu.OnListSelect = function(menu, _, index)

								print(index)

								ESX.TriggerServerCallback("parow:GetMoneyVet", function(result)

										if result then

												TriggerEvent('skinchanger:getSkin', function(skin)

										

													

										

														clothesSkin = {

															['shoes_1'] = index6-1, ['shoes_2'] = index2-1,





														}



														TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)

														

													

													

												end)



												TriggerEvent('skinchanger:getSkin', function(skin)

										

													

													TriggerServerEvent('esx_skin:save', skin)

													

												

												

												end)

											

											

										end	

									 				

										menu.OnMenuClosed = function(_)

											gilItem= {}

											sousTorse = {}

										end

								end)

							end

							

							menu.OnListChange = function(menu, _, index23)

							index2 = index23

								SetPedComponentVariation(playerPed, 6, index6-1, index23-1, 2)



									menu.OnMenuClosed = function(_)

										chaussureItem= {}

									end

								

							end

						end

	else

		chaussureItem= {"Talon","Chaussure de ville","Boots","Converse","Chaussure de sport","Tongs","Talon Aiguille a bout pointu","Bottines","Talon a bout ouvert","Cuissard","Chaussure de sport","Basket Montante","Pied Nu","Ballerine","Sandale � Talon","Sandale","Chaussure de lutin","Escarpin","Chaussure � talon","Talon Aiguille","Botte","Talon Aiguille 2","Escarpin","Botte de s�curit�","Botte de s�curit� 2","Bottine Us�","Chaussure de ville","Chaussure de sport","Chaussure de costume","Bottine","Chaussure Montante","Basket de Sport","Converse avec soulier","Pied Nu","Pied Nu 2","Botte de montagne","Mocassin","Botte Western","Chaussure de cow boy","Botte de costume","Escarpin","Talon 2","Botine a talon","talon aiguille 2","Botte Western 2","Chaussure Western","Chaussure de sport","Botte de ski","Converse 2","Converse 3","Botte Motard","Chaussure Motard","Bottine en cuir","Botte Motard 2","Chaussure Motard 2","Botte Motard 3","Chaussure Motard 3","Chaussure de sport illumin�","Chaussure en cuir","Baskte Montante","Pantoufle","Chaussure de s�curit�","Botte Montagne","Chaussure Montagne","Botte Montagne 2","Chaussure Montagne 2","Chaussure de Tennis","Chaussure Montante","Chaussure de ville","Palme","Pantoufle","Basket","Botte","Chaussure s�curit�","Botte Montagne","Chaussure de marche","Gros Talon"}

		for i = 0,#chaussureItem,1 do

			--

			local amount = {}

			local ind = i+1

			for c = 1, GetNumberOfPedTextureVariations(playerPed, 6, i), 1 do

	

				amount[c] = c 

				

			end

			if chaussureItem[ind] == nil then

				chaussureItem[ind] = "Chaussures #"..i

			end

			x = NativeUI.CreateListItem(chaussureItem[ind], amount, 1, "",5)

		

			menu:AddItem(x)

			

	

		end

	end

end





function boucleFct(menu)

	--("s")

	if curSex == 0 or 1 then

	playerPed = GetPlayerPed(-1)

	boucleItem = {

		"Oreillete",

		"Oreillete",

		"Oreillete",

		"Aucun",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",

		"Boucle d'oreille",



		"Boucle d'oreille",







	}

	for i = 0,36,1 do

		--

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedPropTextureVariations(playerPed, 2, i), 1 do



			amount[c] = c 

			

		end

		if boucleItem[i] == nil then

			boucleItem[i] = "Boucle #"..i

		end

		x = NativeUI.CreateListItem(boucleItem[ind], amount, 1, "",5)

	

		menu:AddItem(x)

		



	end

	--boucleItem= {}

	_menuPool:RefreshIndex()

	local index2 = 1

	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)

		SetPedPropIndex(playerPed, 2, index6-1, 0, 2)

		index2 = 1

		menu.OnListSelect = function(_, _, _)

			TriggerServerEvent("parow:SetNewMasque",index6-1,index2-1,"Boucle",boucleItem[index6],2)

		end

		menu.OnListChange = function(_, _, index26)

			index2 = index26

			SetPedPropIndex(playerPed, 2, index6-1, index26-1, 2)



		end

	end

end



end





function lunetteFct(menu)

	--("s")

	if curSex == 0 then

	playerPed = GetPlayerPed(-1)

	lunetteItem = {

		"Aucune",

		"Lunette sport",

		"Lunette de soleil",

		"Lunette old school",

		"Lunette moyen-age",

		"Lunette de soleil",

		"Aucune",

		"Lunette de soleil",

		"Lunette",

		"Lunette sport",

		"Lunette mafieux",

		"Aucune",

		"Lunette luxe",

		"Lunette de baron",

		"Aucune",

		"Lunette sport",

		"Lunette sport",

		"Lunette teinté",

		"Lunette",

		"Fausse lunette",

		"Lunette moderne",

		"Lunette america",

		"Lunette america",

		"Lunette sport",

		

		"Lunette aviateur",

		"Lunette aviateur"

	}





	for i = 0,25,1 do

		--

		local amount = {}

		local ind = i+1

		for c = 1, GetNumberOfPedPropTextureVariations(playerPed, 1, i), 1 do



			amount[c] = c 

			

		end

		if lunetteItem[i] == nil then

			lunetteItem[i] = "Lunette #"..i

		end

		x = NativeUI.CreateListItem(lunetteItem[ind], amount, 1, "",5)

	

		menu:AddItem(x)

		



	end

	_menuPool:RefreshIndex()

--	lunetteItem= {}

	local index2 = 1

	menu.OnIndexChange = function(menu,index6)

		playerPed = GetPlayerPed(-1)

		print(index2)

		index2 = 1

		SetPedPropIndex(playerPed, 1, index6-1, 0, 2)

		

		menu.OnListSelect = function(_, _, _)

			print(index2)

			TriggerServerEvent("parow:SetNewMasque",index6-1,index2-1,"Lunette",lunetteItem[index6],1)





		end

		menu.OnListChange = function(menu, _, index24)

			print(index2)

			

			index2 = index24

			print(index2)



			SetPedPropIndex(playerPed, 1, index6-1, index24-1, 2)

			



				menu.OnMenuClosed = function(_)

					

				end

			

		end

		

	end

end



end

Citizen.CreateThread(function()



    for i = 1, #ConfigclotheShop.Map, 1 do

        local blip = AddBlipForCoord(ConfigclotheShop.Map[i].x, ConfigclotheShop.Map[i].y, ConfigclotheShop.Map[i].z)

        SetBlipSprite(blip, ConfigclotheShop.Map[i].id)

        SetBlipDisplay(blip, 4)

        SetBlipColour(blip, ConfigclotheShop.Map[i].color)
        SetBlipAsShortRange(blip, true)

        SetBlipScale(blip, 0.4)

        BeginTextCommandSetBlipName("STRING")

        AddTextComponentString(ConfigclotheShop.Map[i].name)

        EndTextCommandSetBlipName(blip)

    end



end)

function casqueFct(menu)

	if curSex == 0 then

playerPed = GetPlayerPed(-1)

	

	

	local chapeauItem = {

		"Casque",

		"Bonnet d'âne",

		"Bonnet",

		"Bob",

		"Casquette LS",

		"Bonnet",

		"Casquette miliaire",

		"Beret",

		"",

		"Casquette à l'envers",

		"Casquette",

		"",

		"Chapeau",

		"Chapeau Cowboy",

		"Bandana",

		"Casque de musique",

		"Casque",

		"Casque",

		"Casque",

		"Casque de pilote",

		"Bob de pêcheur",

		"Chapeau chill",

		"Chapeau de noël",

		"Chapeau de lutin",

		"Corne de noël",

		"Chapeau",

		"Chapeau melon",

		"Chapeau haut",

		"Bonnet",

		"Chapeau",

		"Chapeau",

		"Chapeau USA",

		"Chapeau USA",

		"Chapeau USA",

		"Bonnet USA",

		"USA",

		"Entenne USA",

		"Casque à bière",

		"Casque aviation",

		"Casque d'intervention",

		"Chapeau noël",

		"Chapeau noël",

		"Chapeau noël",

		"Chapeau noël",

		"Casquette",

		"Casquette à l'envers",

		"Casquette LSPD",

		"Casque d'aviateur",

		"Casque",

		"Casque",

		"Casque",

		"Casque",

		"Casque",

		"Casque",

		"Casque",

		"Casquette",

		"Casquette",

		"Casquette",

		"Chapeau Alien",

		"Casquette",

		"Casque",

		"Casquette",

		"Chapeau",

		"Casque",

		"Chapeau",

		"Casquette"

		

	}









	for i = -1,GetNumberOfPedDrawableVariations(playerPed, 0),1 do

		--

		local amount = {}

		local ind = i+2

		for c = 1, GetNumberOfPedPropTextureVariations(playerPed, 0, i+1), 1 do



			amount[c] = c 

			

		end

		if chapeauItem[i] == nil then

			chapeauItem[i] = i

		end

		v = NativeUI.CreateListItem(chapeauItem[ind], amount, 1, "",5)

	

		menu:AddItem(v)

		



	end

	_menuPool:RefreshIndex()

	

	menu.OnIndexChange = function(menu,index6)

		local index2 = 1

		

		playerPed = GetPlayerPed(-1)

		SetPedPropIndex(playerPed, 0, index6-1, 0, 2)

		menu.OnListSelect = function(_, _, _)

			pdka = index2 - 1 

			TriggerServerEvent("parow:SetNewMasque",index6-1,pdka,	"Chapeau",chapeauItem[index6],0)

		end

		menu.OnListChange = function(_, _, index26)

			index2 = index26

			SetPedPropIndex(playerPed, 0, index6-1, index26-1, 2)

		end

	end

else



end 



end













local menuLoaded = false

local clotheShop = NativeUI.CreateMenu("", "Magasin", 5, 100,"shopui_title_midfashion","shopui_title_midfashion")

function OpenClotheShop()

	TriggerEvent("parow:exit")

	

	if menuLoaded == false  then

		

		_menuPool:Add(clotheShop)

		ClotheShopAdd(clotheShop)

		menuLoaded = true

	--	clotheShop:Visible(not clotheShop:Visible())

--	Citizen.Wait(200)

	_menuPool:RefreshIndex()

	clotheShop:Visible(not clotheShop:Visible())

	else

		_menuPool:CloseAllMenus()

		print("MENULOADED")

		clotheShop:Visible(not clotheShop:Visible())

		

end

	

	



end







_menuPool:RefreshIndex()























































-- function



Citizen.CreateThread(function()

	--OpenClotheShop()

	while ESX == nil do

		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

		Citizen.Wait(0)



	end

	

	TriggerEvent('parow:exit')

end)







AddEventHandler('clothesShop:hasEnteredMarker', function(zone)



	CurrentAction6     = 'shop_menu'

	CurrentAction6Msg  = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir la boutique'

	CurrentAction6Data = {zone = zone}



end)



AddEventHandler('clothesShop:hasExitedMarker', function(_)



	CurrentAction6 = nil

	CurrentAction6Msg = nil

	TriggerEvent("parow:exit")

	_menuPool:CloseAllMenus()

	if MenuOn then

		RecupTenues()

		MenuOn = false

	end

end)

 





-- Display markers

Citizen.CreateThread(function()

  while true do

	Wait(0)

	--print("oyo")

    local coords = GetEntityCoords(GetPlayerPed(-1))

    for _,v in pairs(ConfigclotheShop.Zones) do

      for i = 1, #v.Pos, 1 do

        if(ConfigclotheShop.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < ConfigclotheShop.DrawDistance) then

          DrawMarker(ConfigclotheShop.Type, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, ConfigclotheShop.Size.x, ConfigclotheShop.Size.y, ConfigclotheShop.Size.z, ConfigclotheShop.Color.r, ConfigclotheShop.Color.g, ConfigclotheShop.Color.b, 100, false, true, 2, false, false, false, false)

        end

      end

    end

  end

end)

-- Enter / Exit marker events

Citizen.CreateThread(function()

	while true do

		Wait(1000)

		local coords      = GetEntityCoords(GetPlayerPed(-1))

		local isInMarker  = false

		local currentZone = nil



		for k,v in pairs(ConfigclotheShop.Zones) do

			for i = 1, #v.Pos, 1 do

				if(GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < 1.5) then

					isInMarker  = true

					ShopItems   = v.Items

					currentZone = k

					LastZone    = k

				end

			end

		end

		if isInMarker and not HasAlreadyEnteredMarker then

			HasAlreadyEnteredMarker = true

			TriggerEvent('clothesShop:hasEnteredMarker', currentZone)

		end

		if not isInMarker and HasAlreadyEnteredMarker then

			HasAlreadyEnteredMarker = false

			TriggerEvent('clothesShop:hasExitedMarker', LastZone)

			--("s")

		end

	end

end)



-- Key controls

Citizen.CreateThread(function()

	while true do

	  Citizen.Wait(0)

	  

	  if CurrentAction6 ~= nil then

		SetTextComponentFormat('STRING')

		AddTextComponentString(CurrentAction6Msg)

		DisplayHelpTextFromStringLabel(0, 0, 1, -1)

  

		if IsControlJustReleased(0, 38) then

		--	TriggerEvent("onClientMaspStart")

		

			

			OpenClotheShop()

			recp()

			MenuOn = true

	--	  CurrentAction6 = nil

  

		end

  

	  end

	end

  end)





  function recp()

	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)

		TriggerEvent('skinchanger:loadSkin', skin)

	end)

  end



  Citizen.CreateThread(function()



    while true do



        Citizen.Wait(0)

        _menuPool:ProcessMenus()

        if (IsControlJustReleased(0, Keys["K"])) then

            _menuPool:CloseAllMenus()

            OpenAccessMenus()

		end

    end

end)

local mainMenu = nil

function OpenAccessMenus()

    _menuPool:CloseAllMenus()

    mainMenu = NativeUI.CreateMenu("Mes accessoires", "Accessoires disponibles", 5, 200)

    _menuPool:Add(mainMenu)

    RefreshData()







end

function RefreshData()

    ESX.TriggerServerCallback("parow:getMask", function(result)

		MaskTab = result

		maskMenu(mainMenu)

    end)

end

function maskMenu(menu)

    local accessories = { "Masque", "Chapeau", "Lunette", "Boucles d'oreille", "Gilet par balles" }

    local accessoriesIndex = { "mask", "hat", "glasses", "ears", "gilet" }

    xss = NativeUI.CreateListItem("Enlever", accessories, 1, "")

    menu:AddItem(xss)

    menu.OnListSelect = function(m, item, index)

        if item == xss then

            accessory = accessoriesIndex[index]



            if accessory == "mask" then

                SetPedComponentVariation(playerPed, 1, 0, 0, 2)

            end

            if accessory == "glasses" then

                ClearPedProp(playerPed, 1)





            end

            if accessory == "hat" then

                ClearPedProp(playerPed, 0)



            end

            if accessory == "ears" then

                ClearPedProp(playerPed, 2)





            end

        end





    end

        result = MaskTab

        --(json.encode(result))

        if #result == 0 then

            u = NativeUI.CreateItem("Vide", "")

            menu:AddItem(u)

        else



            for i = 1, #result, 1 do

				menumbk = menu

				_menuPool:RefreshIndex()

                local xfvde = _menuPool:AddSubMenu(menu, result[i].label, "", 5, 200)



                xl = NativeUI.CreateItem("Équiper", "")

                xc = NativeUI.CreateItem("Renommer", "")

                xv = NativeUI.CreateItem("Donner", "")

                xb = NativeUI.CreateItem("Jeter", "")

                xfvde:AddItem(xl)

                xfvde:AddItem(xc)

                xfvde:AddItem(xv)

                xfvde:AddItem(xb)

                xfvde.OnItemSelect = function(menu, _, index)

                 --   i = i+1

                    if index == 1 then

                        k = json.decode(result[i].mask)

                        ped = GetPlayerPed(-1)

                        uno = k.mask_1

                        dos = k.mask_2

                        typos = result[i].type

                        --(typos)

                        if typos == "Masque" then



                            if ped then

                                local dict = 'missfbi4'

                                local myPed = PlayerPedId()

                                RequestAnimDict(dict)



                                while not HasAnimDictLoaded(dict) do

                                    Citizen.Wait(0)

                                end



                                local animation = ''

                                local flags = 0 -- only play the animation on the upper body

                                animation = 'takeoff_mask'

                                TaskPlayAnim(myPed, dict, animation, 8.0, -8.0, -1, 50, 0, false, false, false)

                                Citizen.Wait(1000)

                                SetEntityCollision(GetPlayerPed(-1), true, true)

                                playerPed = GetPlayerPed(-1)

                                SetPedComponentVariation(playerPed, 1, k.mask_1, k.mask_2, 2)

                                Citizen.Wait(200)

                                ClearPedTasks(playerPed)

                            end

                        elseif typos == "Lunette" then



                            if ped then

                                local dict = 'clothingspecs'

                                local myPed = PlayerPedId()

                                RequestAnimDict(dict)



                                while not HasAnimDictLoaded(dict) do

                                    Citizen.Wait(0)

                                end



                                local animation = ''

                                local flags = 0 -- only play the animation on the upper body

                                animation = 'try_glasses_positive_a'

                                TaskPlayAnim(myPed, dict, animation, 8.0, -8.0, -1, 50, 0, false, false, false)

                                Citizen.Wait(1000)

                                SetEntityCollision(GetPlayerPed(-1), true, true)

                                playerPed = GetPlayerPed(-1)

                                SetPedPropIndex(playerPed, 1, k.mask_1, k.mask_2, 2)

                                Citizen.Wait(200)

                                ClearPedTasks(playerPed)

                            end



                        elseif typos == "Chapeau" then



                            if ped then

                                local dict = 'missheistdockssetup1hardhat@'

                                local myPed = PlayerPedId()

                                RequestAnimDict(dict)



                                while not HasAnimDictLoaded(dict) do

                                    Citizen.Wait(0)

                                end



                                local animation = ''

                                local flags = 0 -- only play the animation on the upper body

                                animation = 'put_on_hat'

                                TaskPlayAnim(myPed, dict, animation, 8.0, -8.0, -1, 50, 0, false, false, false)

                                Citizen.Wait(1000)

                                SetEntityCollision(GetPlayerPed(-1), true, true)

                                playerPed = GetPlayerPed(-1)

                                SetPedPropIndex(playerPed, 0, k.mask_1, k.mask_2, 2)

                                Citizen.Wait(200)

                                ClearPedTasks(playerPed)

                            end

                        elseif typos == "Boucle" then



                            if ped then

                                local dict = 'mp_masks@standard_car@rps@'

                                local myPed = PlayerPedId()

                                RequestAnimDict(dict)



                                while not HasAnimDictLoaded(dict) do

                                    Citizen.Wait(0)

                                end



                                local animation = ''

                                local flags = 0 -- only play the animation on the upper body

                                animation = 'put_on_mask'

                                TaskPlayAnim(myPed, dict, animation, 8.0, -8.0, -1, 50, 0, false, false, false)

                                Citizen.Wait(1000)

                                SetEntityCollision(GetPlayerPed(-1), true, true)

                                playerPed = GetPlayerPed(-1)

                                SetPedPropIndex(playerPed, 2, k.mask_1, k.mask_2, 2)

                                Citizen.Wait(200)

                                ClearPedTasks(playerPed)

                            end





                        end

                    end

                    if index == 2 then

                        typos = result[i].type

                        txt = gettxt2(result[i].label)

                        txt = tostring(txt)

                        if txt ~= nil then

                            TriggerServerEvent("parow:RenameMasque", result[i].id, txt, typos)

                          --  _menuPool:CloseAllMenus()

                          k = menumbk:GetItemAt(i+1)

                          k:UpdateText(txt)

                          menu:GoBack()

                          result[i].label = txt



                        end



                    end

                    if index == 3 then

                        local myPed = PlayerPedId()

                        if result[i].index == 99 then

                            SetPedComponentVariation(playerPed, 1, 0, 0, 2)

                        else

                            ClearPedProp(myPed, result[i].index)

                        end

                        local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                        local closestPed = GetPlayerPed(closestPlayer)



                        if IsPedSittingInAnyVehicle(closestPed) then

                            ESX.ShowNotification('~r~Impossible de donner un objet dans un véhicule')

                            return

                        end



                        if closestPlayer ~= -1 and closestDistance < 3.0 then



                            TriggerServerEvent('prw:GiveAccessories', GetPlayerServerId(closestPlayer), result[i].id, result[i].label)





                            menu:GoBack()



                          --  _menuPool:RefreshIndex()

                            table.remove( MaskTab, i  )

                            menumbk:RemoveItemAt(i+1)



                        else

                            ESX.ShowNotification("~r~Aucun joueurs proche")



                        end





                    end

                    if index == 4 then

                        TriggerServerEvent('prw:Delclo', result[i].id, result[i].label,result[i])



                        menu:GoBack()



                        --_menuPool:RefreshIndex()

                        table.remove( MaskTab, i  )

                        menumbk:RemoveItemAt(i+1)



                    end

                end

                --    menu:AddItem(psp)

                -- _menuPool:RefreshIndex()

            end

		end

		menu:Visible(true)

end





