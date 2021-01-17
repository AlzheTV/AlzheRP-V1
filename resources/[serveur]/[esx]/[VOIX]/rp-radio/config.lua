radioConfig = {
    Controls = {
        Activator = {
            Name = "INPUT_SPECIAL_ABILITY_SECONDARY",
            Key = 289, -- f2
        },
        Secondary = {
            Name = "INPUT_SPRINT",
            Key = 21,
            Enabled = false,
        },
        Toggle = {
            Name = "INPUT_CONTEXT",
            Key = 51, -- E
        },
        Increase = {
            Name = "INPUT_CELLPHONE_RIGHT",
            Key = 175,
            Pressed = false,
        },
        Decrease = { -- Decrease Frequency
            Name = "INPUT_CELLPHONE_LEFT", -- Control name
            Key = 174, -- Left Arrow
            Pressed = false,
        },
        Input = { -- Choose Frequency
            Name = "INPUT_FRONTEND_ACCEPT", -- Control name
            Key = 201, -- Enter
            Pressed = false,
        },
        Broadcast = {
            Name = "INPUT_FRONTEND_SELECT", -- Control name
            Key = 217, -- Caps Lock
        },
        ToggleClicks = { -- Toggle radio click sounds
            Name = "INPUT_SELECT_WEAPON", -- Control name
            Key = 37, -- Tab
        }
    },
    Frequency = {
        Private = { -- List of private frequencies
            [1] = true, -- Make 1 a private frequency
        }, -- List of private frequencies
        Current = 1, -- Don't touch
        CurrentIndex = 1, -- Don't touch
        Min = 1, -- Minimum frequency
        Max = 1000, -- Max number of frequencies
        List = {}, -- Frequency list, Don't touch
        Access = {}, -- List of freqencies a player has access to
    },
    AllowRadioWhenClosed = true -- Allows the radio to be used when not open (uses police radio animation) 
}