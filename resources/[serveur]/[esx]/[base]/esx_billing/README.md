# esx_billing

## Usage
Press `[F7]` To show the billing menu

When payment trigger is called , pass a boolean at the end to convert payment into split payment.
Config file has defined global variable with % that is sent to issuer.
```lua
TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_mechanic', _U('mechanic'), amount, true)
```

```lua
local amount                         = 100
local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

if closestPlayer == -1 or closestDistance > 3.0 then
	ESX.ShowNotification('There\'s no players nearby!')
else
	TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_taxi', 'Taxi', amount)
end
```
