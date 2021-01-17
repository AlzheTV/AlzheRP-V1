Config = {}
Config.Locale = 'fr'
Config.DebugLog = true
Config.LimitToAmbulanceJob = false
Config.AmbulanceModel = 'AMBULANCE'

Config.ActivationKey = 51
Config.ActivationKeyText = 'INPUT_CONTEXT'

Config.InitialSeconds = 120
Config.MaxPatientsPerTrip = 3
Config.MaxLevels = 5

Config.Formulas = {
    moneyPerLevel               = function(level)                   return 100 * level * level end,
    additionalTimeForPickup     = function(distanceFromHospital)    return math.floor(distanceFromHospital / 15) end,
    additionalTimeForDropOff    = function(numberOfPatients)        return 15 * numberOfPatients end,
    timeLostForDamage           = function(damage)                  return math.floor(damage) end,
}

Config.PedEndInvincibilityDistance = 30.0
Config.PedPickupDistance = 10.0
Config.EnterVehicleTimeout = 10000
Config.Markers = {
    Size = 10.0,
}

Config.Sounds = {
    failedMission = {
        audioRef = 'MissionFailedSounds', 
        audioName = 'ScreenFlash'
    },
    passedMission = {
        audioRef = 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',
        audioName = 'Mission_Pass_Notify'
    },
    timeAdded = {
        audioRef = 'DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',
        audioName = 'Hack_Success'
    },
    timeRemoved = {
        audioRef = 'DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',
        audioName = 'Hack_Failed'
    }
}

Config.MaxSpawnPointDistanceAllowedFromHospital = 1300 -- used to check that you didn't forget a - in a coordinate below or accidentally enter a paleto spawn location in for metro los santos :|

Config.Hospitals = {
    {
        name = 'east los santos',
        x = 1152.081,
        y = -1506.815,
        z = 34.461,
        spawnPoints = {
            {x = 958.112, y = -1425.157, z = 30.915},   {x = 969.391, y = -1625.081, z = 29.791},
            {x = 1278.963, y = -1543.797, z = 46.447},  {x = 1396.469, y = -1619.400, z = 57.305},
            {x = 1295.155, y = -1728.321, z = 53.479},  {x = 1017.461, y = -2068.399, z = 30.802},
            {x = 1089.672, y = -1821.737, z = 36.098},  {x = 913.915, y = -2443.911, z = 27.785},
            {x = 1103.675, y = -2170.702, z = 30.412},  {x = 1201.035, y = -1875.930, z = 36.044},
            {x = 1355.089, y = -1803.911, z = 57.819},  {x = 1334.746, y = -1637.099, z = 51.387},
            {x = 1181.176, y = -1286.096, z = 34.134},  {x = 1246.799, y = -1134.925, z = 37.465},
            {x = 1120.036, y = -944.992, z = 47.721},   {x = 985.299, y = -1016.927, z = 41.332},
            {x = 721.840, y = -982.642, z = 23.430},    {x = 722.283, y = -744.715, z = 24.961},
            {x = 697.080, y = -393.864, z = 40.850},    {x = 1899.997, y = -1022.248, z = 75.572},  
            {x = 981.109, y = -224.136, z = 69.190},    {x = 1117.835, y = -2373.443, z = 30.481},
            {x = 1143.472, y = -983.311, z = 46.069}
        }
    },
    {
        name = 'metro los santos',
        x = 304.457,
        y = -1439.970,
        z = 29.572,
        spawnPoints = {
            {x = 455.148, y = -1434.771, z = 29.270},   {x = 529.353, y = -1322.915, z = 29.416}, 
            {x = 376.725, y = -1224.665, z = 32.230},   {x = 141.945, y = -1278.416, z = 28.583},
            {x = -55.191, y = -1320.071, z = 28.472},   {x = -183.571, y =-1266.675, z = 30.623},
            {x = -204.727, y = -2006.234, z = 27.391},  {x = -102.446, y = -1852.370, z = 5.337},
            {x = 117.078, y = -1937.778, z = 20.470},   {x = 43.865, y = -1747.390, z = 29.219},
            {x = 165.984, y = -1630.758, z = 29.060},   {x = 155.274, y = -1498.712, z = 28.958},
            {x = 184.608, y = -2030.632, z = 18.007},   {x = 322.528, y = -2089.125, z = 17.511},
            {x = 368.431, y = -1982.595, z = 23.975},   {x = 411.120, y = -1925.250, z = 24.666},
            {x = 143.840, y = -1727.633, z = 29.098},   {x = -467.233, y = -1719.668, z = 18.442},
            {x = -612.119, y = -1605.311, z = 26.520},  {x = -355.487, y = -1515.940, z = 27.488},
            {x = 4.835, y = -1404.481, z = 29.038},     {x = 60.385, y = -1571.942, z = 29.298},
            {x = 231.045, y = -1766.820, z = 27.936},   {x = 564.322, y = -1752.549, z = 28.428},
            {x = 352.905, y = -1563.948, z = 28.574},   {x = 22.880, y = -1521.602, z = 28.573},
            {x = -133.247, y = -1595.400, z = 31.426},  {x = -190.950, y = -1429.452, z = 30.788},
            {x = -226.221, y = -1298.315, z = 30.606},
            {x = 499.356, y = -1514.784, z = 28.571},   {x = 488.992, y = -1293.825, z = 28.698},
        }
    },
    {
        name = 'pillbox hill',
        x = 364.548,
        y = -591.692,
        z = 27.970,
        spawnPoints = {
            {x = 458.589, y = -1095.726, z = 29.019},   {x = 461.959, y = -759.552, z = 27.357},
            {x = 491.081, y = -1027.671, z = 27.463},   {x = 366.173, y = -1110.612, z = 28.689},
            {x = 225.969, y = -977.022, z = 28.586},    {x = 382.460, y = -949.812, z = 28.717},
            {x = 89.500, y = -616.480, z = 29.999},     {x = 110.533, y = -777.832, z = 30.721},
            {x = 65.277, y = -738.520, z = 43.503},     {x = -138.246, y = -970.003, z = 26.570},
            {x = -181.091, y = -1114.129, z = 21.479},  {x = -239.206, y = -978.455, z = 28.571},
            {x = -270.239, y = -845.513, z = 30.989},   {x = -243.677, y = -767.255, z = 31.994},
            {x = -175.557, y = -671.907, z = 33.514},   {x = -303.110, y = -613.485, z = 32.842},
        }
    },
    {
        name = 'mount zonah',
        x = -467.502,
        y = -338.981,
        z = 34.139,
        spawnPoints = {
            {x = -619.477, y = 7.845, z = 41.500},      {x = -745.623, y = 10.295, z = 38.521},
            {x = -855.726, y = -128.696, z = 37.522},   {x = -816.203, y = -282.651, z = 37.230},
            {x = -759.410, y = -409.540, z = 34.997},   {x = -510.177, y = -392.851, z = 34.306},
            {x = -249.899, y = -312.638, z = 29.454},   {x = -181.197, y = -164.411, z = 43.316},
            {x = -356.906, y = -116.915, z = 37.980},   {x = -428.975, y = -24.150, z = 45.511},
            {x = -530.070, y = -45.250, z = 41.563},    {x = -894.158, y = -2.862, z = 42.618},
            {x = -695.527, y = 42.610, z = 42.487},     {x = -664.291, y = 234.952, z = 81.244},
            {x = -563.723, y = 274.037, z = 82.302},    {x = -365.332, y = 262.846, z = 84.128},
            {x = -530.789, y = 142.809, z = 62.328},    {x = -398.675, y = 138.798, z = 64.720},
            {x = -73.520, y = 62.166, z = 71.143},      {x = -58.774, y = -93.663, z = 57.077},
            {x = -136.546, y = -258.168, z = 42.553},   {x = -227.910, y = -449.993, z = 31.928},
            {x = -946.390, y = -336.165, z = 37.512},   {x = -1060.703, y = -283.550, z = 36.984},
            {x = -1216.623, y = -192.602, z = 38.459},  {x = -1098.151, y = -321.378, z = 37.107},
            {x = -965.013, y = -184.597, z = 37.083},   {x = -861.802, y = -233.739, z = 38.927},
            {x = -634.887, y = -235.888, z = 37.262},   {x = -708.851, y = -126.112, z = 37.083}
        }
    }
}

Config.PedModels = {
    'a_f_m_beach_01',
    'a_f_m_bevhills_01',
    'a_f_m_bevhills_02',
    'a_f_m_bodybuild_01',
    'a_f_m_business_02',
    'a_f_m_downtown_01',
    'a_f_m_eastsa_01',
    'a_f_m_eastsa_02',
    'a_f_m_fatbla_01',
    'a_f_m_fatwhite_01',
    'a_f_m_ktown_01',
    'a_f_m_ktown_02',
    'a_f_m_prolhost_01',
    'a_f_m_salton_01',
    'a_f_m_skidrow_01',
    'a_f_m_soucent_01',
    'a_f_m_soucent_02',
    'a_f_m_soucentmc_01',
    'a_f_m_tourist_01',
    'a_f_m_tramp_01',
    'a_f_m_trampbeac_01',
    'a_f_o_genstreet_01',
    'a_f_o_indian_01',
    'a_f_o_ktown_01',
    'a_f_o_salton_01',
    'a_f_o_soucent_01',
    'a_f_o_soucent_02',
    'a_f_y_beach_01',
    'a_f_y_bevhills_01',
    'a_f_y_bevhills_02',
    'a_f_y_bevhills_03',
    'a_f_y_bevhills_04',
    'a_f_y_business_01',
    'a_f_y_business_02',
    'a_f_y_business_03',
    'a_f_y_business_04',
    'a_f_y_eastsa_01',
    'a_f_y_eastsa_02',
    'a_f_y_eastsa_03',
    'a_f_y_epsilon_01',
    'a_f_y_fitness_01',
    'a_f_y_fitness_02',
    'a_f_y_genhot_01',
    'a_f_y_golfer_01',
    'a_f_y_hiker_01',
    'a_f_y_hippie_01',
    'a_f_y_hipster_02',
    'a_f_y_hipster_03',
    'a_f_y_hipster_04',
    'a_f_y_indian_01',
    'a_f_y_juggalo_01',
    'a_f_y_runner_01',
    'a_f_y_rurmeth_01',
    'a_f_y_scdressy_01',
    'a_f_y_skater_01',
    'a_f_y_soucent_01',
    'a_f_y_soucent_02',
    'a_f_y_soucent_03',
    'a_f_y_tennis_01',
    'a_f_y_tourist_01',
    'a_f_y_tourist_02',
    'a_f_y_vinewood_01',
    'a_f_y_vinewood_02',
    'a_f_y_vinewood_03',
    'a_f_y_vinewood_04',
    'a_f_y_yoga_01',
    'a_m_m_afriamer_01',
    'a_m_m_beach_01',
    'a_m_m_beach_02',
    'a_m_m_bevhills_01',
    'a_m_m_bevhills_02',
    'a_m_m_business_01',
    'a_m_m_eastsa_01',
    'a_m_m_eastsa_02',
    'a_m_m_farmer_01',
    'a_m_m_fatlatin_01',
    'a_m_m_genfat_01',
    'a_m_m_genfat_02',
    'a_m_m_golfer_01',
    'a_m_m_hasjew_01',
    'a_m_m_hillbilly_01',
    'a_m_m_hillbilly_02',
    'a_m_m_indian_01',
    'a_m_m_ktown_01',
    'a_m_m_malibu_01',
    'a_m_m_mexcntry_01',
    'a_m_m_mexlabor_01',
    'a_m_m_og_boss_01',
    'a_m_m_paparazzi_01',
    'a_m_m_polynesian_01',
    'a_m_m_prolhost_01',
    'a_m_m_rurmeth_01',
    'a_m_m_salton_01',
    'a_m_m_salton_02',
    'a_m_m_salton_03',
    'a_m_m_salton_04',
    'a_m_m_skater_01',
    'a_m_m_skidrow_01',
    'a_m_m_socenlat_01',
    'a_m_m_soucent_01',
    'a_m_m_soucent_02',
    'a_m_m_soucent_03',
    'a_m_m_soucent_04',
    'a_m_m_stlat_02',
    'a_m_m_tennis_01',
    'a_m_m_tourist_01',
    'a_m_m_tramp_01',
    'a_m_m_trampbeac_01',
    'a_m_m_tranvest_01',
    'a_m_m_tranvest_02',
    'a_m_o_acult_02',
    'a_m_o_beach_01',
    'a_m_o_genstreet_01',
    'a_m_o_ktown_01',
    'a_m_o_salton_01',
    'a_m_o_soucent_01',
    'a_m_o_soucent_02',
    'a_m_o_soucent_03',
    'a_m_o_tramp_01',
    'a_m_y_acult_01',
    'a_m_y_acult_02',
    'a_m_y_beach_01',
    'a_m_y_beach_02',
    'a_m_y_beach_03',
    'a_m_y_beachvesp_01',
    'a_m_y_beachvesp_02',
    'a_m_y_bevhills_01',
    'a_m_y_bevhills_02',
    'a_m_y_breakdance_01',
    'a_m_y_busicas_01',
    'a_m_y_business_01',
    'a_m_y_business_03',
    'a_m_y_cyclist_01',
    'a_m_y_dhill_01',
    'a_m_y_downtown_01',
    'a_m_y_eastsa_01',
    'a_m_y_eastsa_02',
    'a_m_y_epsilon_01',
    'a_m_y_epsilon_02',
    'a_m_y_gay_01',
    'a_m_y_gay_02',
    'a_m_y_genstreet_01',
    'a_m_y_genstreet_02',
    'a_m_y_golfer_01',
    'a_m_y_hasjew_01',
    'a_m_y_hiker_01',
    'a_m_y_hippy_01',
    'a_m_y_hipster_01',
    'a_m_y_hipster_02',
    'a_m_y_hipster_03',
    'a_m_y_indian_01',
    'a_m_y_jetski_01',
    'a_m_y_juggalo_01',
    'a_m_y_ktown_01',
    'a_m_y_ktown_02',
    'a_m_y_latino_01',
    'a_m_y_methhead_01',
    'a_m_y_mexthug_01',
    'a_m_y_motox_01',
    'a_m_y_motox_02',
    'a_m_y_musclbeac_01',
    'a_m_y_musclbeac_02',
    'a_m_y_polynesian_01',
    'a_m_y_roadcyc_01',
    'a_m_y_runner_01',
    'a_m_y_runner_02',
    'a_m_y_salton_01',
    'a_m_y_skater_01',
    'a_m_y_skater_02',
    'a_m_y_soucent_01',
    'a_m_y_soucent_02',
    'a_m_y_soucent_03',
    'a_m_y_soucent_04',
    'a_m_y_stbla_01',
    'a_m_y_stbla_02',
    'a_m_y_stlat_01',
    'a_m_y_stwhi_01',
    'a_m_y_stwhi_02',
    'a_m_y_sunbathe_01',
    'a_m_y_surfer_01',
    'a_m_y_vindouche_01',
    'a_m_y_vinewood_01',
    'a_m_y_vinewood_02',
    'a_m_y_vinewood_03',
    'a_m_y_vinewood_04',
    'a_m_y_yoga_01',
    'cs_amandatownley',
    'cs_andreas',
    'cs_ashley',
    'cs_bankman',
    'cs_barry',
    'cs_beverly',
    'cs_brad',
    'cs_carbuyer',
    'cs_casey',
    'cs_chengsr',
    'cs_chrisformage',
    'cs_clay',
    'cs_dale',
    'cs_davenorton',
    'cs_debra',
    'cs_denise',
    'cs_dom',
    'cs_dreyfuss',
    'cs_drfriedlander',
    'cs_fabien',
    'cs_fbisuit_01',
    'cs_floyd',
    'cs_guadalope',
    'cs_gurk',
    'cs_hunter',
    'cs_janet',
    'cs_jewelass',
    'cs_jimmyboston',
    'cs_jimmydisanto',
    'cs_joeminuteman',
    'cs_johnnyklebitz',
    'cs_josef',
    'cs_josh',
    'cs_lamardavis',
    'cs_lazlow',
    'cs_lestercrest',
    'cs_lifeinvad_01',
    'cs_magenta',
    'cs_manuel',
    'cs_marnie',
    'cs_martinmadrazo',
    'cs_maryann',
    'cs_michelle',
    'cs_milton',
    'cs_molly',
    'cs_movpremf_01',
    'cs_movpremmale',
    'cs_mrk',
    'cs_mrs_thornhill',
    'cs_mrsphillips',
    'cs_natalia',
    'cs_nervousron',
    'cs_nigel',
    'cs_old_man1a',
    'cs_old_man2',
    'cs_omega',
    'cs_orleans',
    'cs_paper',
    'cs_patricia',
    'cs_priest',
    'cs_prolsec_02',
    'cs_russiandrunk',
    'cs_siemonyetarian',
    'cs_solomon',
    'cs_stevehains',
    'cs_stretch',
    'cs_tanisha',
    'cs_taocheng',
    'cs_taostranslator',
    'cs_tenniscoach',
    'cs_terry',
    'cs_tom',
    'cs_tomepsilon',
    'cs_tracydisanto',
    'cs_wade',
    'cs_zimbor',
    'csb_abigail',
    'csb_anita',
    'csb_anton',
    'csb_ballasog',
    'csb_bride',
    'csb_burgerdrug',
    'csb_car3guy1',
    'csb_car3guy2',
    'csb_chef',
    'csb_chin_goon',
    'csb_cletus',
    'csb_customer',
    'csb_denise_friend',
    'csb_fos_rep',
    'csb_g',
    'csb_groom',
    'csb_grove_str_dlr',
    'csb_hugh',
    'csb_imran',
    'csb_janitor',
    'csb_maude',
    'csb_mweather',
    'csb_ortega',
    'csb_oscar',
    'csb_porndudes',
    'csb_prologuedriver',
    'csb_prolsec',
    'csb_ramp_gang',
    'csb_ramp_hic',
    'csb_ramp_hipster',
    'csb_ramp_marine',
    'csb_ramp_mex',
    'csb_reporter',
    'csb_roccopelosi',
    'csb_screen_writer',
    'csb_tonya',
    'csb_trafficwarden',
    'csb_vagspeak',
    'g_f_y_ballas_01',
    'g_f_y_families_01',
    'g_f_y_lost_01',
    'g_f_y_vagos_01',
    'g_m_importexport_01',
    'g_m_m_armboss_01',
    'g_m_m_armgoon_01',
    'g_m_m_armlieut_01',
    'g_m_m_chemwork_01',
    'g_m_m_chiboss_01',
    'g_m_m_chicold_01',
    'g_m_m_chigoon_01',
    'g_m_m_chigoon_02',
    'g_m_m_korboss_01',
    'g_m_m_mexboss_01',
    'g_m_m_mexboss_02',
    'g_m_y_armgoon_02',
    'g_m_y_azteca_01',
    'g_m_y_ballaeast_01',
    'g_m_y_ballaorig_01',
    'g_m_y_ballasout_01',
    'g_m_y_famca_01',
    'g_m_y_famdnf_01',
    'g_m_y_famfor_01',
    'g_m_y_korean_01',
    'g_m_y_korean_02',
    'g_m_y_korlieut_01',
    'g_m_y_lost_01',
    'g_m_y_lost_02',
    'g_m_y_lost_03',
    'g_m_y_mexgang_01',
    'g_m_y_mexgoon_01',
    'g_m_y_mexgoon_02',
    'g_m_y_mexgoon_03',
    'g_m_y_pologoon_01',
    'g_m_y_pologoon_02',
    'g_m_y_salvaboss_01',
    'g_m_y_salvagoon_01',
    'g_m_y_salvagoon_02',
    'g_m_y_salvagoon_03',
    'g_m_y_strpunk_01',
    'g_m_y_strpunk_02',
    'hc_driver',
    'hc_gunman',
    'hc_hacker',
    'ig_abigail',
    'ig_amandatownley',
    'ig_andreas',
    'ig_ashley',
    'ig_ballasog',
    'ig_bankman',
    'ig_barry',
    'ig_benny',
    'ig_bestmen',
    'ig_beverly',
    'ig_brad',
    'ig_bride',
    'ig_car3guy1',
    'ig_car3guy2',
    'ig_casey',
    'ig_chef',
    'ig_chengsr',
    'ig_chrisformage',
    'ig_clay',
    'ig_claypain',
    'ig_cletus',
    'ig_dale',
    'ig_davenorton',
    'ig_denise',
    'ig_devin',
    'ig_dom',
    'ig_dreyfuss',
    'ig_drfriedlander',
    'ig_fabien',
    'ig_floyd',
    'ig_g',
    'ig_groom',
    'ig_hao',
    'ig_hunter',
    'ig_janet',
    'ig_jay_norris',
    'ig_jewelass',
    'ig_jimmyboston',
    'ig_jimmydisanto',
    'ig_josef',
    'ig_josh',
    'ig_kerrymcintosh',
    'ig_lamardavis',
    'ig_lazlow',
    'ig_lestercrest',
    'ig_lifeinvad_01',
    'ig_lifeinvad_02',
    'ig_magenta',
    'ig_malc',
    'ig_manuel',
    'ig_marnie',
    'ig_maryann',
    'ig_maude',
    'ig_michelle',
    'ig_milton',
    'ig_molly',
    'ig_mrk',
    'ig_mrs_thornhill',
    'ig_mrsphillips',
    'ig_natalia',
    'ig_nervousron',
    'ig_nigel',
    'ig_old_man1a',
    'ig_old_man2',
    'ig_omega',
    'ig_oneil',
    'ig_orleans',
    'ig_ortega',
    'ig_paper',
    'ig_patricia',
    'ig_priest',
    'ig_prolsec_02',
    'ig_ramp_gang',
    'ig_ramp_hic',
    'ig_ramp_hipster',
    'ig_ramp_mex',
    'ig_roccopelosi',
    'ig_russiandrunk',
    'ig_screen_writer',
    'ig_siemonyetarian',
    'ig_solomon',
    'ig_stevehains',
    'ig_stretch',
    'ig_talina',
    'ig_tanisha',
    'ig_taocheng',
    'ig_taostranslator',
    'ig_tenniscoach',
    'ig_terry',
    'ig_tomepsilon',
    'ig_tonya',
    'ig_tracydisanto',
    'ig_trafficwarden',
    'ig_tylerdix',
    'ig_vagspeak',
    'ig_wade',
    'ig_zimbor',
    'mp_f_boatstaff_01',
    'mp_f_cardesign_01',
    'mp_f_chbar_01',
    'mp_f_cocaine_01',
    'mp_f_counterfeit_01',
    'mp_f_deadhooker',
    'mp_f_execpa_01',
    'mp_f_forgery_01',
    'mp_f_freemode_01',
    'mp_f_helistaff_01',
    'mp_f_meth_01',
    'mp_f_weed_01',
    'mp_g_m_pros_01',
    'mp_headtargets',
    'mp_m_boatstaff_01',
    'mp_m_cocaine_01',
    'mp_m_exarmy_01',
    'mp_m_execpa_01',
    'mp_m_famdd_01',
    'mp_m_fibsec_01',
    'mp_m_freemode_01',
    'mp_m_g_vagfun_01',
    'mp_m_meth_01',
    'mp_m_securoguard_01',
    'mp_m_shopkeep_01',
    'mp_m_waremech_01',
    'mp_m_weed_01',
    'mp_s_m_armoured_01',
    's_f_m_fembarber',
    's_f_m_shop_high',
    's_f_m_sweatshop_01',
    's_f_y_airhostess_01',
    's_f_y_bartender_01',
    's_f_y_baywatch_01',
    's_f_y_factory_01',
    's_f_y_hooker_01',
    's_f_y_hooker_02',
    's_f_y_hooker_03',
    's_f_y_migrant_01',
    's_f_y_movprem_01',
    's_f_y_scrubs_01',
    's_f_y_shop_low',
    's_f_y_shop_mid',
    's_f_y_sweatshop_01',
    's_m_m_ammucountry',
    's_m_m_armoured_01',
    's_m_m_armoured_02',
    's_m_m_autoshop_01',
    's_m_m_autoshop_02',
    's_m_m_bouncer_01',
    's_m_m_chemsec_01',
    's_m_m_ciasec_01',
    's_m_m_cntrybar_01',
    's_m_m_dockwork_01',
    's_m_m_doctor_01',
    's_m_m_gaffer_01',
    's_m_m_gardener_01',
    's_m_m_gentransport',
    's_m_m_hairdress_01',
    's_m_m_highsec_01',
    's_m_m_highsec_02',
    's_m_m_janitor',
    's_m_m_lathandy_01',
    's_m_m_lifeinvad_01',
    's_m_m_linecook',
    's_m_m_lsmetro_01',
    's_m_m_mariachi_01',
    's_m_m_migrant_01',
    's_m_m_movalien_01',
    's_m_m_movprem_01',
    's_m_m_movspace_01',
    's_m_m_paramedic_01',
    's_m_m_pilot_01',
    's_m_m_pilot_02',
    's_m_m_postal_01',
    's_m_m_postal_02',
    's_m_m_scientist_01',
    's_m_m_strperf_01',
    's_m_m_strpreach_01',
    's_m_m_strvend_01',
    's_m_m_trucker_01',
    's_m_m_ups_01',
    's_m_m_ups_02',
    's_m_o_busker_01',
    's_m_y_airworker',
    's_m_y_ammucity_01',
    's_m_y_barman_01',
    's_m_y_baywatch_01',
    's_m_y_chef_01',
    's_m_y_clown_01',
    's_m_y_construct_01',
    's_m_y_construct_02',
    's_m_y_dealer_01',
    's_m_y_devinsec_01',
    's_m_y_dockwork_01',
    's_m_y_doorman_01',
    's_m_y_dwservice_01',
    's_m_y_dwservice_02',
    's_m_y_factory_01',
    's_m_y_fireman_01',
    's_m_y_garbage',
    's_m_y_grip_01',
    's_m_y_mime',
    's_m_y_pestcont_01',
    's_m_y_pilot_01',
    's_m_y_shop_mask',
    's_m_y_strvend_01',
    's_m_y_uscg_01',
    's_m_y_valet_01',
    's_m_y_waiter_01',
    's_m_y_winclean_01',
    's_m_y_xmech_01',
    's_m_y_xmech_02',
    's_m_y_xmech_02_mp',
    'u_f_m_corpse_01',
    'u_f_m_miranda',
    'u_f_m_promourn_01',
    'u_f_o_moviestar',
    'u_f_o_prolhost_01',
    'u_f_y_bikerchic',
    'u_f_y_comjane',
    'u_f_y_corpse_01',
    'u_f_y_hotposh_01',
    'u_f_y_jewelass_01',
    'u_f_y_mistress',
    'u_f_y_poppymich',
    'u_f_y_princess',
    'u_f_y_spyactress',
    'u_m_m_aldinapoli',
    'u_m_m_bankman',
    'u_m_m_bikehire_01',
    'u_m_m_fibarchitect',
    'u_m_m_filmdirector',
    'u_m_m_glenstank_01',
    'u_m_m_griff_01',
    'u_m_m_jesus_01',
    'u_m_m_jewelsec_01',
    'u_m_m_jewelthief',
    'u_m_m_markfost',
    'u_m_m_partytarget',
    'u_m_m_prolsec_01',
    'u_m_m_promourn_01',
    'u_m_m_rivalpap',
    'u_m_m_spyactor',
    'u_m_m_willyfist',
    'u_m_o_finguru_01',
    'u_m_o_taphillbilly',
    'u_m_o_tramp_01',
    'u_m_y_abner',
    'u_m_y_antonb',
    'u_m_y_babyd',
    'u_m_y_baygor',
    'u_m_y_burgerdrug_01',
    'u_m_y_chip',
    'u_m_y_cyclist_01',
    'u_m_y_fibmugger_01',
    'u_m_y_guido_01',
    'u_m_y_gunvend_01',
    'u_m_y_hippie_01',
    'u_m_y_imporage',
    'u_m_y_mani',
    'u_m_y_militarybum',
    'u_m_y_paparazzi',
    'u_m_y_party_01',
    'u_m_y_pogo_01',
    'u_m_y_proldriver_01',
    'u_m_y_rsranger_01',
    'u_m_y_staggrm_01',
    'u_m_y_tattoo_01',
    'u_m_y_zombie_01'
}

-- https://gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227
Config.PedDamagePacks = {
    "BigHitByVehicle",
    "SCR_Torture",
    "SCR_Franklin_finb2",
    "Explosion_Med",
    "Useful_Bits",
    "Explosion_Large",
    "Burnt_Ped_Head_Torso",
    "Car_Crash_Heavy",
    "Fall",
    "HitByVehicle",
    "BigRunOverByVehicle",
    "RunOverByVehicle",
    "SCR_Cougar",
    "TD_SHOTGUN_FRONT_KILL",
    "TD_SHOTGUN_REAR_KILL",
}
