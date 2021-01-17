Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 8.0, y = 8.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips   = false
Config.RequiredCopsCoke  = 2
Config.RequiredCopsMeth  = 2
Config.RequiredCopsWeed  = 2
Config.RequiredCopsOpium = 2

Config.TimeToFarm    = 3 * 850
Config.TimeToProcess = 3 * 850
Config.TimeToSell    = 3 * 850

Config.Locale = 'fr'

Config.Zones = {
	CokeField =			{x = -10.401460647584,	y = -1884.0521240234,	z = 24.160743713378,	name = _U('coke_field'),		sprite = 501,	color = 40},
	CokeProcessing =	{x = -1029.761352539,	y = -1504.250366211,	z = 4.9038052558898,	name = _U('coke_processing'),	sprite = 478,	color = 40},
	CokeDealer =		{x = -1561.2233886718,y = -414.33462524414,	z = 38.098178863526,	    name = _U('coke_dealer'),		sprite = 500,	color = 75},
	MethField =			{x = 1389.3111572266,	y = 3604.9375,	z = 38.94189071655,	name = _U('meth_field'),		sprite = 499,	color = 26},
	MethProcessing =	{x = 304.53405761718,  y = 2820.8908691406, z = 43.436485290528,	    name = _U('meth_processing'),	sprite = 499,	color = 26},
	MethDealer =		{x = 1282.3990478516,	y = 1887.9545898438,	z = 83.883087158204,	name = _U('meth_dealer'),		sprite = 500,	color = 75},
	WeedField =		    {x = 322.6439819336,	y = 6463.1684570312,	z = 30.570978164672,	name = _U('weed_field'),		sprite = 496,	color = 52},
	WeedProcessing =	{x = 2243.4152832032,	y = 5154.328125,	z = 56.887115478516,	name = _U('weed_processing'),	sprite = 496,	color = 52},
	WeedDealer =		{x = 201.90989685058, y = -239.1753692627, z = 53.967163085938,	name = _U('weed_dealer'),		sprite = 500,	color = 75},
	--OpiumField =		{x = 0.0,	y = 0.0,	z = 0.0,	name = _U('opium_field'),		sprite = 51,	color = 60},
	--OpiumProcessing =	{x = 0.0,	y = 0.0,	z = 0.0,	name = _U('opium_processing'),	sprite = 51,	color = 60},
	--OpiumDealer =		{x = 0.0,	y = 0.0,	z = 0.0,	    name = _U('opium_dealer'),		sprite = 500,	color = 75},
}