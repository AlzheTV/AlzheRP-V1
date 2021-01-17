Config = {}
Config.DrawDistance = 100.0
Config.Locale = 'fr'
Config.MaxInService = 8
Config.MarkerColor = { r = 73, g = 51, b = 0 }
Config.EnablePlayerManagement = true
Config.EnableESXIdentity = true
Config.EnableLicenses = true

Config.Blip = {
    Pos = { x = -62.83, y = -2509.34, z = 11.34 },
}

Config.Cloakrooms = {
    Cloakroom = {
        Pos = { x = -56.56, y = -2520.37, z = 7.40 },
        Size = { x = 1.0, y = 1.0, z = 1.0 },
        Type = 20
    },
}

Config.Zones = {
    CarGarage = {
        Pos = { x = -116.64, y = -2516.10, z = 6.09 },
        Size = { x = 1.0, y = 1.0, z = 1.0 },
        Type = 36,
        InsideShop = vector3(228.5, -993.5, -99.5),
        SpawnPoints = {
            { coords = vector3(-108.51, -2534.14, 5.999), heading = 90.0, radius = 6.0 },
        }
    },
    BossActions = {
        Pos = { x = -61.48, y = -2517.24, z = 7.40 },
        Size = { x = 1.0, y = 1.0, z = 1.0 },
        Type = 22
    },
    ConvoyRegister = {
        Pos = { x = -52.56, y = -2523.92, z = 7.40 },
        Size = { x = 1.0, y = 1.0, z = 1.0 },
        Type = 30,
        BlipType = 477,
        BlipColour = 20,
        BlipDesc = 'Enregistrement convoi'
    },
    PopTrailer = {
        Pos = { x = 92.84, y = 6334.78, z = 31.37 },
        Size = { x = 1.5, y = 1.5, z = 1.0 },
        Type = -1,
        BlipType = 479,
        BlipColour = 20,
        BlipDesc = 'Remorque'
    },
    StoreTrailer = {
        Pos = { x = -147.57, y = -2478.24, z = 6.02 },
        Size = { x = 3.0, y = 3.0, z = 1.0 },
        Type = -1,
        BlipType = 478,
        BlipColour = 20,
        BlipDesc = 'Entrepôt'
    },
    GetPaid = {
        Pos = { x = -105.99, y = -2496.54, z = 6.00 },
        Size = { x = 3.0, y = 3.0, z = 1.0 },
        Type = -1,
        BlipType = 500,
        BlipColour = 2,
        BlipDesc = 'Paie'
    },
    StorageWarehouse = {
        Pos = { x = -126.99, y = -2530.46, z = 6.00 },
        Size = { x = 1.0, y = 1.0, z = 1.0 },
        Type = 30,
        BlipType = 0
    }
}

Config.Uniforms = {
    recruit_wear = {
        male = {
            ['tshirt_1'] = 76, ['tshirt_2'] = 4,
            ['torso_1'] = 157, ['torso_2'] = 0,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 2,
            ['pants_1'] = 102, ['pants_2'] = 3,
            ['shoes_1'] = 38, ['shoes_2'] = 3,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = -1, ['ears_2'] = 0
        },
        female = {
            ['tshirt_1'] = 45, ['tshirt_2'] = 4,
            ['torso_1'] = 181, ['torso_2'] = 0,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 15,
            ['pants_1'] = 73, ['pants_2'] = 1,
            ['shoes_1'] = 38, ['shoes_2'] = 3,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = -1, ['ears_2'] = 0
        }
    },

    carrier_wear = {
        male = {
            ['tshirt_1'] = 76, ['tshirt_2'] = 0,
            ['torso_1'] = 156, ['torso_2'] = 0,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 74, ['pants_2'] = 0,
            ['shoes_1'] = 37, ['shoes_2'] = 1,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = -1, ['ears_2'] = 0
        },
        female = {
            ['tshirt_1'] = 46, ['tshirt_2'] = 16,
            ['torso_1'] = 234, ['torso_2'] = 11,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 6,
            ['pants_1'] = 0, ['pants_2'] = 0,
            ['shoes_1'] = 38, ['shoes_2'] = 3,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = -1, ['ears_2'] = 0
        }
    },

    boss_wear = {
        male = {
            ['tshirt_1'] = 26, ['tshirt_2'] = 12,
            ['torso_1'] = 192, ['torso_2'] = 0,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 1,
            ['pants_1'] = 20, ['pants_2'] = 0,
            ['shoes_1'] = 38, ['shoes_2'] = 0,
            ['helmet_1'] = 13, ['helmet_2'] = 3,
            ['chain_1'] = 20, ['chain_2'] = 2,
            ['ears_1'] = -1, ['ears_2'] = 0
        },
        female = {
            ['tshirt_1'] = 2, ['tshirt_2'] = 0,
            ['torso_1'] = 59, ['torso_2'] = 2,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['arms'] = 3,
            ['pants_1'] = 38, ['pants_2'] = 2,
            ['shoes_1'] = 24, ['shoes_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = -1, ['ears_2'] = 0
        }
    },
}

Config.AuthorizedVehicles = {
    Shared = {
        { model = 'benson', label = 'Benson', price = 35000 },
        { model = 'mule', label = 'Mule', price = 35000 },
        { model = 'pounder2', label = 'Pounder', price = 35000 },
        { model = 'biff', label = 'Biff', price = 35000 },
        { model = 'packer', label = 'Packer', price = 50000 },
        { model = 'phantom', label = 'Phantom', price = 50000 },
        { model = 'phantom3', label = 'Phantom Speed', price = 50000 }
    },
    boss = {}
}

Config.Trailer = {
    Name = 'trailers2',
    Pos = { x = 83.75, y = 6330.009, z = 31.22 },
    Heading = 10.0
}

Config.Pay = {
    {
        EarnPlayer = 600,
        EarnSociety = 600
    },
    {
        EarnPlayer = 800,
        EarnSociety = 800
    },
    {
        EarnPlayer = 1000,
        EarnSociety = 1000
    },
    {
        EarnPlayer = 1200,
        EarnSociety = 1200
    },
    {
        EarnPlayer = 1400,
        EarnSociety = 1400
    },
    {
        EarnPlayer = 1800,
        EarnSociety = 1800
    },
    {
        EarnPlayer = 2200,
        EarnSociety = 2200
    },
    {
        EarnPlayer = 3000,
        EarnSociety = 3000
    },
}

Config.numberItemsPerTrailerStored = 50

Config.itemsList = {
    'bread',
    'water'
}
