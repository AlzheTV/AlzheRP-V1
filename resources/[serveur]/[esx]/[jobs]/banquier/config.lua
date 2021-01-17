Config                      = {}
Config.DrawDistance         = 100.0
Config.BankSavingPercentage = 10.5
Config.Locale               = 'fr'

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.PriceResell                = {billet = 10,}

Config.AuthorizedVehicles = {
	{ name = 'baller3',  label = 'Véhicule de vente (Blanc)' },
    { name = 'stockade',  label = 'Véhicule de transport' },
    { name = 'xls2',  label = 'Véhicule blindé' },
    { name = 'oracle2',  label = 'Véhicule Entreprise' },
}

  Config.Blips = {

    Blip = {
      Pos     = { x = 254.246, y = 218.363, z = 106.501 },
     Sprite  = 108,
      Display = 4,
     Scale   = 1.2,
    Colour  = 0,
    },

 }

Config.Zones = {

	BankActions = {
		Pos   = { x = 260.130, y = 204.308, z = 109.287 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 102, g = 102, b = 204 },
		Type  = 1
	},

	Cloakrooms = {
        Pos   = { x = 264.111, y = 213.221, z = 109.588 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 27,
    },

    Vaults = {
        Pos   = { x = 255.406, y = 228.753, z = 105.588 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = { x = 255.177, y = 278.757, z = 105.371 },
        SpawnPoint   = { x = 247.436, y = 281.095, z = 104.926 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 0, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = 248.203, y = 284.573, z = 105.196 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 1,
    },

	BFarm = {
        Pos   = { x = 2705.128, y = 3455.310, z = 55.109 },
        Size  = { x = 3.0001, y = 3.0001, z = 1.0001 },
        Color = { r = 0, g = 255, b = 0, a = 0},
        Type  = 0,
    },

	BResell = {
        Pos   = { x = 267.952, y = 270.665, z = 105.134 },
        Size  = { x = 3.0001, y = 3.0001, z = 1.0001 },
        Color = { r = 0, g = 255, b = 0, a = 160},
        Type  = 0,
    },

}

Config.Banque = {
  banquier_outfit = {
		male = {
			['tshirt_1'] = 11,  ['tshirt_2'] = 0,
			['torso_1'] = 4,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 2,
			['arms'] = 12,
			['pants_1'] = 10,   ['pants_2'] = 0,
			['shoes_1'] = 11,   ['shoes_2'] = 12,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['glasses_1'] = 7,	['glasses_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 7,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 7,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 6,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['glasses_1'] = 24,	['glasses_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
  }
}
