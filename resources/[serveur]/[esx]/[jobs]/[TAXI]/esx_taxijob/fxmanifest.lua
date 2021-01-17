fx_version 'adamant'

game 'gta5'

description 'ESX Taxi Job'

version '1.0.2'

client_scripts {
    "dependencies/Wrapper/Utility.lua",

    "dependencies/UIElements/UIVisual.lua",
    "dependencies/UIElements/UIResRectangle.lua",
    "dependencies/UIElements/UIResText.lua",
    "dependencies/UIElements/Sprite.lua",
}

client_scripts {
    "dependencies/UIMenu/elements/Badge.lua",
    "dependencies/UIMenu/elements/Colours.lua",
    "dependencies/UIMenu/elements/ColoursPanel.lua",
    "dependencies/UIMenu/elements/StringMeasurer.lua",

    "dependencies/UIMenu/items/UIMenuItem.lua",
    "dependencies/UIMenu/items/UIMenuCheckboxItem.lua",
    "dependencies/UIMenu/items/UIMenuListItem.lua",
    "dependencies/UIMenu/items/UIMenuSliderItem.lua",
    "dependencies/UIMenu/items/UIMenuSliderHeritageItem.lua",
    "dependencies/UIMenu/items/UIMenuColouredItem.lua",

    "dependencies/UIMenu/items/UIMenuProgressItem.lua",
    "dependencies/UIMenu/items/UIMenuSliderProgressItem.lua",

    "dependencies/UIMenu/windows/UIMenuHeritageWindow.lua",

    "dependencies/UIMenu/panels/UIMenuGridPanel.lua",
    "dependencies/UIMenu/panels/UIMenuHorizontalOneLineGridPanel.lua",
    "dependencies/UIMenu/panels/UIMenuVerticalOneLineGridPanel.lua",
    "dependencies/UIMenu/panels/UIMenuColourPanel.lua",
    "dependencies/UIMenu/panels/UIMenuPercentagePanel.lua",
    "dependencies/UIMenu/panels/UIMenuStatisticsPanel.lua",

    "dependencies/UIMenu/UIMenu.lua",
    "dependencies/UIMenu/MenuPool.lua",
}

client_scripts {
    "dependencies/UITimerBar/UITimerBarPool.lua",

    "dependencies/UITimerBar/items/UITimerBarItem.lua",
    "dependencies/UITimerBar/items/UITimerBarProgressItem.lua",
    "dependencies/UITimerBar/items/UITimerBarProgressWithIconItem.lua",
}

client_scripts {
    "dependencies/UIProgressBar/UIProgressBarPool.lua",
    "dependencies/UIProgressBar/items/UIProgressBarItem.lua",
}

client_scripts {
    "dependencies/NativeUI.lua"
}



client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'server/main.lua'
}

dependency 'es_extended'
