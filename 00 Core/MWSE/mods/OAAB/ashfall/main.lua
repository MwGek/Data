local ashfall = include("mer.ashfall.interop")
if ashfall then

    ashfall.registerActivators{
		AB_Flora_AshTree_01 = "tree",
		AB_Flora_AshTree_02 = "tree",
		AB_Furn_ComBucket02Water = "water",
		AB_Furn_Barrel01Water = "water",
		AB_Furn_LwBowlWater = "water",
		AB_Ex_VelWellFountain = "well",
		AB_Fx_WaterCircle1024 = "waterDirty",
		AB_Fx_WaterCircle128 = "waterDirty",
		AB_Fx_WaterCircle2048 = "waterDirty",
		AB_Fx_WaterCircle256 = "waterDirty",
		AB_Fx_WaterCircle512 = "waterDirty",
		AB_Fx_WaterCircle64 = "waterDirty",
		AB_Fx_WaterFallMid = "waterDirty",
		AB_Fx_WaterFallSmall = "waterDirty",
		AB_Fx_WaterFallTall = "waterDirty",
		AB_Fx_WaterFlowCv256a = "waterDirty",
		AB_Fx_WaterFlowCv256b = "waterDirty",
		AB_Fx_WaterFlowCv512a = "waterDirty",
		AB_Fx_WaterFlowCv512b = "waterDirty",
		AB_Fx_WaterFlowSq1024 = "waterDirty",
		AB_Fx_WaterFlowSq256 = "waterDirty",
		AB_Fx_WaterFlowSq512 = "waterDirty",
		AB_Fx_WaterFlowSt256a = "waterDirty",
		AB_Fx_WaterFlowSt256b = "waterDirty",
		AB_Fx_WaterFlowSt256c = "waterDirty",
		AB_Fx_WaterRapid = "waterDirty",
		AB_Fx_WaterRapidCv256a = "waterDirty",
		AB_Fx_WaterRapidCv256b = "waterDirty",
		AB_Fx_WaterRapidCv512a = "waterDirty",
		AB_Fx_WaterRapidCv512b = "waterDirty",
		AB_Fx_WaterRapidSt256a = "waterDirty",
		AB_Fx_WaterRapidSt256b = "waterDirty",
		AB_Fx_WaterRapidSt256c = "waterDirty",
		AB_Fx_WaterRect256a = "waterDirty",
		AB_Fx_WaterRect256b = "waterDirty",
		AB_Fx_WaterRect256c = "waterDirty",
		AB_Fx_WaterSquare1024 = "waterDirty",
		AB_Fx_WaterSquare256 = "waterDirty",
		AB_Fx_WaterSquare512 = "waterDirty"
    }

    ashfall.registerWaterContainers{
        ab_misc_6thmug = "mug",
        ab_misc_combottle_01 = "bottle",
        ab_misc_combottle_02 = "bottle",
        ab_misc_combottle_03 = "bottle",
        ab_misc_compewtercup_01 = "cup",
        ab_misc_compewterpot_01 = "pot",
        ab_misc_comsilverpot_01 = "pot",
        ab_misc_comsilvertank_01 = "tankard",
        ab_misc_comwoodtankard = "tankard",
        ab_misc_debluecup_01 = "cup",
        ab_misc_deblueflask_01 = "flask",
        ab_misc_deblueflask_02 = "flask",
        ab_misc_deblueglass_01 = "glass",
        ab_misc_deblueglasscup_01 = "cup",
        ab_misc_debluetankard_01 = "tankard",
        ab_misc_deceramiccup_01 = "cup",
        ab_misc_deceramiccup_02 = "cup",
        ab_misc_deceramicflask_01 = "flask",
        ab_misc_deceramicpot_01 = "pot",
        ab_misc_declaycup_01 = "cup",
        ab_misc_declayflask_01 = "flask",
        ab_misc_declayflask_02 = "flask",
        ab_misc_deebonycup_01 = "cup",
        ab_misc_deebonyflask_01 = "flask",
        ab_misc_deebonyglass_01 = "glass",
        ab_misc_degreenglasscup_01 = "cup",
        ab_misc_degreenpitcher = "pitcher",
        ab_misc_degreenpot = "pot",
        ab_misc_depeachglascup_01 = "cup",
        ab_misc_deyelglasscup_01 = "cup",
        ab_misc_deyelglassflask_01 = "flask",
        ab_misc_deyelglasspot_01 = "pot",
        ab_misc_drinkcyrobrandy = "cup",
        ab_misc_drinkflin = "bottle",
        ab_misc_drinkgreef = "bottle",
        ab_misc_drinkmazte = "bottle",
        ab_misc_drinkshein = "bottle",
        ab_misc_drinksujamma = "bottle"\
		ab_misc_impcanteen = "bottle"
    }

    ashfall.registerFoods{
		AB_IngCrea_GuarMeat_01 = "meat",
		AB_IngCrea_HorseMeat01 = "meat",
		AB_IngCrea_SfMeat_01 = "meat",
		AB_IngFlor_BgSlime_01 = "vegetable",
		AB_IngFood_KwamaEggCentCut = "food",
		AB_IngFood_KwamaEggCentWrap = "food",
		AB_IngFood_KwamaLoaf = "food",
		AB_IngFood_SaltriceBread = "food",
		AB_IngFood_SaltricePorridge = "food",
		AB_IngFood_ScuttlePie = "food",
		AB_IngFood_Sweetroll = "food"
    }
	
	ashfall.registerWoodAxes{
		"AB_w_ToolWoodAxe"
	
	}

    ashfall.registerHeatSources{
		AB_Fx_Lava1024 = 250,
		AB_Fx_Lava256rnd = 250,
		AB_Fx_Lava4096 = 250,
		AB_Fx_LavaBubble = 100,
		AB_Fx_LavaBubbles = 100,
		AB_Fx_LavaFall00 = 200,
		AB_Fx_LavaFall01 = 200,
		AB_Fx_LavaMagma1024 = 200,
		AB_Fx_LavaMagma4096 = 200,
		AB_Fx_LavaRipple = 250,
		AB_Fx_LavaTrans00 = 200,
		AB_Fx_SulfurMist = 80,
		AB_In_CaveLavaLavaPool = 200,
		AB_In_CavePySpoutFire = 150,
		AB_In_CavePySpoutLava00 = 250,
		AB_In_CavePyVentSteam01 = 50,
		AB_In_CavePyVentSteam02 = 50,
		AB_In_LavaPool01 = 200,
		AB_Fx_LavaFire = 50,
		AB_Fx_LavaMist = 50,
		AB_In_CavePyLavaPool = 200,
		AB_In_LavaCrust01 = 100,
		AB_In_LavaCrust02 = 100,
		AB_In_LavaCrust03 = 100
    }

end