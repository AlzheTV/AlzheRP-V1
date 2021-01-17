Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.StateStations = {

  State = {

    Blip = {
      Pos     = { x = -540.79, y = -207.31, z = 37.65 },
      Sprite  = 419,
      Display = 4,
      Scale   = 0.7,
    },
	
    AuthorizedWeapons = {
    { name = 'WEAPON_FLASHLIGHT',       price = 100 },
	  { name = 'WEAPON_NIGHTSTICK',       price = 100 },
    { name = 'WEAPON_COMBATPISTOL',     price = 100 },
	  { name = 'WEAPON_FIREEXTINGUISHER', price = 100 },
	  { name = 'WEAPON_SPECIALCARBINE', price = 350 },
	  { name = 'WEAPON_SNIPERRIFLE',       price = 350 },	
    },

	  AuthorizedVehicles = {
		  { name = 'stretch',  label = 'Limousine' },
		  { name = 'baller6',   label = 'Escorte Montagne' },
		  { name = 'fbi2',       label = 'Escorte Policière' },
			
	  },

    Cloakrooms = {
      { x = -572.67, y = -201.88, z = 41.7 },
	  Heading    = 314.63,
    },

    Armories = {
      { x = -573.75, y = -199.72, z = 41.7 },
	  Heading    = 299.28,
    },

    Vehicles = {
      {
        Spawner    = { x = -568.59, y = -144.72, z = 36.77 },
        SpawnPoint = { x = -570.9, y = -143.82, z = 37.52 },
        Heading    = 205.21,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -499.62, y =  -324.43, z = 73.17 },
        SpawnPoint = { x = -504.75, y = -311.62, z = 73.17 },
        Heading    = 25.28,
      }
    },

    VehicleDeleters = {
      { x = -421.068, y = 1197.910, z = 324.641 },
    },

    BossActions = {
      { x = -549.34, y = -198.45, z = 56.29 },
	  Heading    = 21.14,
    },

  },
  
}

Config.PublicZones = {
  EnterBuilding = {
    Pos       = { x = -505.05, y = -294.01, z = 35.43 },
    Size      = { x = 2.0, y = 2.0, z = 1.5 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 34,
    Blip      = false,
    Name      = "Entrer dans le bâtiment",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans l'immeuble.",
    Teleport  = { x = -499.62, y =  -324.43, z = 73.17 }
  },
  
}
