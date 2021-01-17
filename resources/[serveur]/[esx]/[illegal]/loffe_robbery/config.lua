	Config = {}

Translation = {}



Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped

Config.Locale = 'en' -- 'en', 'sv' or 'custom'



Config.Shops = {

    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}

    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},

    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
  
    {coords = vector3(270.59365844726, -978.7631225586, 28.369617462158), heading = 155.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},

    {coords = vector3(-47.342906951904, -1758.7307128906, 28.42101097107), heading = 50.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},

    {coords = vector3(-1221.373413086, -907.96826171875, 11.326355934144), heading = 50.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},

    {coords = vector3(1164.9733886718, -323.9496459961, 68.205101013184), heading = 95.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},

    {coords = vector3(1959.271118164, 3741.4821777344, 31.343742370606), heading = 295.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
  
    {coords = vector3(-2966.3288574218, 391.45349121094, 14.043303489686), heading = 90.0, money = {7500, 11000}, cops = 1, blip = true, name = 'Braquage épicerie', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false}             
   
}



Translation = {

    ['en'] = {

        ['shopkeeper'] = 'Commerçant :',

        ['robbed'] = "Désolé ! Je n'ai plus rien, quelqu'un y a pensé plus tôt.",

        ['cashrecieved'] = 'Ton butin s\'élève à',

        ['currency'] = '$',

        ['scared'] = '(appeuré)',

        ['no_cops'] = 'Pas assez de policier, c\'est pas fairplay.',

        ['cop_msg'] = 'Caméra de sécurité - Photo du suspect.',

        ['set_waypoint'] = 'Mettre un point GPS.',

        ['hide_box'] = 'Fermer cette notification.',

        ['robbery'] = 'BRAQUAGE EN COURS !',

        ['walked_too_far'] = 'Braquage abandonné.'

    },

    ['sv'] = {

        ['shopkeeper'] = 'butiksbiträde',

        ['robbed'] = 'Jag blev precis rånad och har inga pengar kvar!',

        ['cashrecieved'] = 'Du fick:',

        ['currency'] = 'SEK',

        ['scared'] = 'Rädd:',

        ['no_cops'] = 'Det är inte tillräckligt med poliser online!',

        ['cop_msg'] = 'Vi har skickat en bild på rånaren från övervakningskamerorna!',

        ['set_waypoint'] = 'Sätt GPS punkt på butiken',

        ['hide_box'] = 'Stäng denna rutan',

        ['robbery'] = 'Pågående butiksrån',

        ['walked_too_far'] = 'Du gick för långt bort!'

    },

    ['custom'] = { -- edit this to your language

        ['shopkeeper'] = '',

        ['robbed'] = '',

        ['cashrecieved'] = '',

        ['currency'] = '',

        ['scared'] = '',

        ['no_cops'] = '',

        ['cop_msg'] = '',

        ['set_waypoint'] = '',

        ['hide_box'] = '',

        ['robbery'] = '',

        ['walked_too_far'] = ''

    }

}