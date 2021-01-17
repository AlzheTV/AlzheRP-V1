companyName = "LSPD - FOURRIÈRE" 
companyIcon = "CHAR_PROPERTY_TOWING_IMPOUND" -- https://wiki.gtanet.work/index.php?title=Notification_Pictures
spawnRadius = 500                            -- Default value: 500
drivingStyle = 786603                        -- Change the driving behaviour of the truck: https://vespura.com/drivingstyle/
towTruckModels = {        
            
                ['flatbeds'] = { 
                    model = 'flatbed',                                                 -- Change the model here (https://wiki.gtanet.work/index.php?title=Vehicle_Models)
                        ['offset'] = {['x'] = -0.5, ['y'] = -5.0, ['z'] = 1.0},},      -- Edit the offset of where the vehicle gets attached
                } 

towTruckDrivers = {

                [1] = {name = "Fourrière", icon = "CHAR_MP_ARMY_CONTACT", ped = "S_M_M_TRUCKER_01", colour = 88, 
                                [1] = {"~b~DISPATCH~n~ La fourrière arrive dès que possible.",}},
                }