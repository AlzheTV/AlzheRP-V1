Citizen.CreateThread(function()
	while true do
	local count = 0
local text = {
"Serious RP",
"Venez découvrir le serveur",
"Serious Staff"
}

		for _, __ in pairs(text) do 
			count = count + 1
		end
		local presence  = math.random(1, count)
		local player = GetPlayerPed(-1)
	
		SetDiscordAppId('784972652561170443')

		SetDiscordRichPresenceAsset('aucun')

		SetDiscordRichPresenceAssetText('Alzhe Roleplay')

		SetDiscordRichPresenceAssetSmall('')

		SetDiscordRichPresenceAssetSmallText('discord.gg/MtaABx5Fmj')

		

		while true do

        Citizen.Wait(1500)

        players = {}

        for i = 0, 128 do

            if NetworkIsPlayerActive( i ) then

                table.insert( players, i )

            end

        end

        SetRichPresence("‍"..GetPlayerName(PlayerId()) .. "")

	end


		SetDiscordRichPresenceAssetText('discord.gg/MtaABx5Fmj')

		print('Rich Presence up to date.')

		Citizen.Wait(300000) -- 5 minutes 

	end

end)