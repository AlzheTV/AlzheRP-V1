local logs = "https://discord.com/api/webhooks/797720742833291265/dSOJORd__ElZPGdm2cjiglv77aOXckuUD14mNXH8ZIotVXOFVZapdYXPU8Itx3TPA_FB"
local communityname = "🕋 Alzhay"
local communtiylogo = "https://cdn.discordapp.com/attachments/790477067740643349/796215090323521546/ARP_GLOW.png"

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "0000FF",
            ["title"] = "Connexion au serveur",
            ["description"] = "Pseudonyme : **"..name.."**\nIP: **"..ip.."**\n Steam Hex : **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Logger", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "0000FF",
            ["title"] = "Déconnexion",
            ["description"] = "Pseudonyme : **"..name.."** \nRaison : **"..reason.."**\nIP: **"..ip.."**\n Steam Hex : **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Logger", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)
