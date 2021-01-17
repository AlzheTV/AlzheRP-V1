ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_billing:sendBill')
AddEventHandler('esx_billing:sendBill', function(playerId, sharedAccountName, label, amount, split)
	if split == nil then
			split = false
	end

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(playerId)
	amount        = ESX.Math.Round(amount)

	TriggerEvent('esx_addonaccount:getSharedAccount', sharedAccountName, function(account)

		if amount < 0 then
			print(('esx_billing: %s attempted to send a negative bill!'):format(xPlayer.identifier))
		elseif account == nil then

			if xTarget ~= nil then
				MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount, split, paid) VALUES (@identifier, @sender, @target_type, @target, @label, @amount, @split, @paid)',
				{
					['@identifier']  = xTarget.identifier,
					['@sender']      = xPlayer.identifier,
					['@target_type'] = 'player',
					['@target']      = xPlayer.identifier,
					['@label']       = label,
					['@amount']      = amount,
					['@split']		 = split,
					['@paid']		 = false
				}, function(rowsChanged)
					TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
				end)
			end

		else

			if xTarget ~= nil then
				MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount, split, paid) VALUES (@identifier, @sender, @target_type, @target, @label, @amount, @split, @paid)',
				{
					['@identifier']  = xTarget.identifier,
					['@sender']      = xPlayer.identifier,
					['@target_type'] = 'society',
					['@target']      = sharedAccountName,
					['@label']       = label,
					['@amount']      = amount,
					['@split']		 = split,
					['@paid']		 = false
				}, function(rowsChanged)
					TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
				end)
			end

		end
	end)

end)

ESX.RegisterServerCallback('esx_billing:getBills', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM billing WHERE identifier = @identifier AND paid = false', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		local bills = {}
		for i=1, #result, 1 do
			table.insert(bills, {
				id         = result[i].id,
				identifier = result[i].identifier,
				sender     = result[i].sender,
				targetType = result[i].target_type,
				target     = result[i].target,
				label      = result[i].label,
				amount     = result[i].amount
			})
		end

		cb(bills)
	end)
end)

ESX.RegisterServerCallback('esx_billing:getTargetBills', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	MySQL.Async.fetchAll('SELECT * FROM billing WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		local bills = {}
		for i=1, #result, 1 do
			table.insert(bills, {
				id         = result[i].id,
				identifier = result[i].identifier,
				sender     = result[i].sender,
				targetType = result[i].target_type,
				target     = result[i].target,
				label      = result[i].label,
				amount     = result[i].amount
			})
		end

		cb(bills)
	end)
end)


ESX.RegisterServerCallback('esx_billing:payBill', function(source, cb, id)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
		['@id'] = id
	}, function(result)

		local sender     = result[1].sender
		local targetType = result[1].target_type
		local target     = result[1].target
		local amount     = result[1].amount

		local xTarget = ESX.GetPlayerFromIdentifier(sender)

		if targetType == 'player' then

			if xTarget ~= nil then

				if xPlayer.getMoney() >= amount then

					MySQL.Async.execute('UPDATE billing SET paid = true WHERE id = @id', {
						['@id'] = id
					}, function()
						xPlayer.removeMoney(amount)
						xTarget.addAccountMoney('bank', amount)
						TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
						TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))

						cb()
					end)

				elseif xPlayer.getBank() >= amount then
					MySQL.Async.execute('UPDATE billing SET paid = true WHERE id = @id', {
						['@id'] = id
					}, function(rowsChanged)
						MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
							['@id'] = id
						}, function(result)
							if result[1].split == true then
								print('Society paid invoice with split')
								local percent = 0.05
								xPlayer.removeMoney('bank', amount)
								xTarget.addAccountMoney('bank', amount*(1-percent))
								local worker = ESX.GetPlayerFromIdentifier(result[1].sender)
								worker.addAccountMoney('bank', amount*percent)
							else
								xPlayer.removeAccountMoney('bank', amount)
								xTarget.addAccountMoney('bank', amount)
							end
						end)


						TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
						TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))

						cb()
					end)

				else
					TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
					TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))

					cb()
				end

			else
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('player_not_online'))
				cb()
			end

		else
			TriggerEvent('esx_addonaccount:getSharedAccount', target, function(account)

				if xPlayer.getMoney() >= amount then
					MySQL.Async.execute('UPDATE billing SET paid = true WHERE id = @id', {
						['@id'] = id
					}, function(rowsChanged)
						MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
							['@id'] = id
						}, function(result)
							if result[1].split == true then
								xPlayer.removeMoney(amount)
								account.addMoney(amount*(1-Config.Percent))
								local worker = ESX.GetPlayerFromIdentifier(result[1].sender)
								worker.addAccountMoney('bank', amount*Config.Percent)
							else
								xPlayer.removeMoney(amount)
								account.addAccountMoney('bank', amount)
							end
						end)
						TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
						if xTarget ~= nil then
							TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
						end

						cb()
					end)

				elseif xPlayer.getBank() >= amount then
					MySQL.Async.execute('UPDATE billing SET paid = true WHERE id = @id', {
						['@id'] = id
					}, function(rowsChanged)
						MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
							['@id'] = id
						}, function(result)
							if result[1].split == true then
								xPlayer.removeMoney(amount)
								account.addMoney(amount*(1-Config.Percent))
								local worker = ESX.GetPlayerFromIdentifier(result[1].sender)
								worker.addAccountMoney('bank', amount*Config.Percent)
							else
								xPlayer.removeMoney(amount)
								account.addAccountMoney('bank', amount)
							end
						end)

						TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
						if xTarget ~= nil then
							TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
						end

						cb()
					end)

				else
					TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))

					if xTarget ~= nil then
						TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
					end

					cb()
				end
			end)

		end

	end)
end)



function dump(o)
	if type(o) == "table" then
		local s = "{ "
		for k, v in pairs(o) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(o)
	end
end