resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts{
    '@es_extended/locale.lua',
    'locales/cs.lua',
    'locales/en.lua',
    'locales/de.lua',
    'config.lua',
    'client/main.lua',
}

server_scripts{
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/cs.lua',
    'locales/en.lua',
    'locales/de.lua',
    'config.lua',
    'server/main.lua',
}