using GTA;
using GTA.Native;
using GTA.Math;
using System;
using System.Windows.Forms;
using System.Collections.Generic;

public class BlipsCreator : Script
{
    public BlipsCreator()
    {
        Blip Cabin = World.CreateBlip(new Vector3(-396.983f, 4711.88f, 264.866f));
        Function.Call(Hash.SET_BLIP_SPRITE, Cabin, 40);
        Function.Call(Hash.SET_BLIP_COLOUR, Cabin, 10);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Cabin");
        Function.Call(Hash._0xBC38B49BCB83BC9B, Cabin);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, Cabin, true);

        Blip Barge = World.CreateBlip(new Vector3(-1556.48f, 5377.35f, 4.10431f));
        Function.Call(Hash.SET_BLIP_SPRITE, Barge, 410);
        Function.Call(Hash.SET_BLIP_COLOUR, Barge, 53);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Barge");
        Function.Call(Hash._0xBC38B49BCB83BC9B, Barge);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, Barge, true);

        Blip Silo = World.CreateBlip(new Vector3(1152.02f, 4640.88f, 112.338f));
        Function.Call(Hash.SET_BLIP_SPRITE, Silo, 548);
        Function.Call(Hash.SET_BLIP_COLOUR, Silo, 2);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Missile Silo");
        Function.Call(Hash._0xBC38B49BCB83BC9B, Silo);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, Silo, true);

        Blip ASafehouse = World.CreateBlip(new Vector3(3616.05f, 5024.11f, 15.2799f));
        Function.Call(Hash.SET_BLIP_SPRITE, ASafehouse, 40);
        Function.Call(Hash.SET_BLIP_COLOUR, ASafehouse, 6);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Abandoned Safehouse");
        Function.Call(Hash._0xBC38B49BCB83BC9B, ASafehouse);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, ASafehouse, true);

        Blip FTrailer = World.CreateBlip(new Vector3(1435.05f, 1501.2f, 114.154f));
        Function.Call(Hash.SET_BLIP_SPRITE, FTrailer, 479);
        Function.Call(Hash.SET_BLIP_COLOUR, FTrailer, 62);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Trailer");
        Function.Call(Hash._0xBC38B49BCB83BC9B, FTrailer);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, FTrailer, true);

        Blip USafehouse= World.CreateBlip(new Vector3(-489.1285f, 2231.82f, 155.093f));
        Function.Call(Hash.SET_BLIP_SPRITE, USafehouse, 40);
        Function.Call(Hash.SET_BLIP_COLOUR, USafehouse, 47);
        Function.Call(Hash._0xF9113A30DE5C6670, "STRING");
        Function.Call(Hash._ADD_TEXT_COMPONENT_STRING, "Underground safehouse");
        Function.Call(Hash._0xBC38B49BCB83BC9B, USafehouse);
        Function.Call(Hash.SET_BLIP_AS_SHORT_RANGE, USafehouse, true);
    }
}