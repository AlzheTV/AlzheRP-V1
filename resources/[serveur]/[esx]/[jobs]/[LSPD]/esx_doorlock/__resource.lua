resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX door lock'

version '1.3.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/de.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/de.lua',
	'config.lua',
	'client/main.lua'
}

dependency 'es_extended'

ui_page('ui/ui.html')

files {
    'ui/ui.html',
    'ui/numField.css',
	'ui/numField.js',
	'ui/numField.mp3',
	'ui/numField.png'
}
