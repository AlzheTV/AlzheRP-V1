resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX FakeID'

version '1.0'

dependency 'NativeUI'

client_script '@NativeUI/NativeUI.lua'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/sp_server.lua'
}

client_scripts {
	'config.lua',
	'client/sp_client.lua',
	'client/sp_ped.lua'
}