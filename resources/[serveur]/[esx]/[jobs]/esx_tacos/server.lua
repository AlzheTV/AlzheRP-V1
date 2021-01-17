--Copyright ZAUB1

--N'hesitez pas a rejoindre mon discord : https://discord.gg/yFuSEGj

--Et a me contacter directement pour tout bug ou suggestions



--ESX INIT--



ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



--EVENTS--



RegisterServerEvent('tacos:pourboire') --Paie a la livraison d'une tacos + pourboire eventuel

AddEventHandler('tacos:pourboire', function(pourboire)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addMoney(pourboire)

end)



RegisterServerEvent("tacos:paiefinale") --Paie "bonus" lors de la fin de service

AddEventHandler("tacos:paiefinale", function()

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)



	local flouzefin = math.random(10, 100)



	xPlayer.addMoney(flouzefin)



	TriggerClientEvent("pNotify:SendNotification", source, {

		text = "Voici votre petit bonus final : " .. flouzefin .. "$",

		type = "success",

		queue = "global",

		timeout = 4000,

		layout = "bottomRight"

	})

end)



RegisterServerEvent("tacos:itemadd") --Ajout temporaire de l'item "tacos"

AddEventHandler("tacos:itemadd", function(nbPizza)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('tacos', tonumber(nbPizza))

end)



RegisterServerEvent("tacos:itemrm") --Rm de l'item "tacos"

AddEventHandler("tacos:itemrm", function()

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.removeInventoryItem('tacos', 1)

end)



RegisterServerEvent("tacos:deleteAllPizz") --Rm de l'item "tacos"

AddEventHandler("tacos:deleteAllPizz", function()

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

		

	local tacosnbr = xPlayer.getInventoryItem('tacos').count

	

	xPlayer.removeInventoryItem('tacos', tacosnbr)

end)

