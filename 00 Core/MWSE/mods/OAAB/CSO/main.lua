--[[
Format for Mods:
- ID can be for any soundID, mesh filepath, or texture filepath. Must be lowercase.
- Category hooks into the tables above, so the first value will be the name of the desired table, and the second the desired value within it.
    Anything getting added to ignoreList must have an empty category of: ""
    Anything getting added to corpseMapping must have a category of: "Body"
- Define your soundType so it's properly sorted, for instance 'soundType = land' to specify texture material type.
--]]

local function initialized()
    local cso = include("Character Sound Overhaul.interop")
    if cso == nil then return end
    local soundData = {
        -- Land, Carpet:
        { id = "oaab\\ab_rug_small_06", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\canvaswrapseamless", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\fabric_burgundy_01", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\fabricDeskGreen", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_fishingnet_01", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug00", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug01", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug02", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug03", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug04", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug05", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug06", category = cso.landTypes.carpet, soundType = "land" },
        { id = "oaab\\rr_rug07", category = cso.landTypes.carpet, soundType = "land" },

        -- Land, Dirt:
        { id = "oaab\\corpseburnedatlas", category = cso.landTypes.dirt, soundType = "land" },
        { id = "oaab\\dung", category = cso.landTypes.dirt, soundType = "land" },
        { id = "oaab\\dungburnt", category = cso.landTypes.dirt, soundType = "land" },

        -- Land, Grass:
        { id = "oaab\\ab_straw_01", category = cso.landTypes.grass, soundType = "land" },
        { id = "oaab\\ab_straw_edge_01", category = cso.landTypes.grass, soundType = "land" },
        { id = "oaab\\fxspiderwebs01", category = cso.landTypes.grass, soundType = "land" },
        { id = "oaab\\straw01", category = cso.landTypes.grass, soundType = "land" },

        -- Land, Gravel:
        { id = "oaab\\rem\\mv\\tx_mv_ground_04", category = cso.landTypes.gravel, soundType = "land" },
        { id = "oaab\\tx_kwama_ground", category = cso.landTypes.gravel, soundType = "land" },
        { id = "oaab\\tx_py_gravel", category = cso.landTypes.gravel, soundType = "land" },

        -- Land, Ice:
        { id = "oaab\\skelpiletexture", category = cso.landTypes.ice, soundType = "land" },

        -- Land, Metal:
        { id = "oaab\\dr_tbl_staff_01", category = cso.landTypes.metal, soundType = "land" },
        { id = "oaab\\dwrv_chainlink_01", category = cso.landTypes.metal, soundType = "land" },
        { id = "oaab\\tx_dae_metal_01", category = cso.landTypes.metal, soundType = "land" },
        { id = "oaab\\tx_dae_trim_01", category = cso.landTypes.metal, soundType = "land" },
        { id = "oaab\\tx_daed_rust_01", category = cso.landTypes.metal, soundType = "land" },

        -- Land, Mud:
        { id = "oaab\\corpsefreshatlas", category = cso.landTypes.mud, soundType = "land" },
        { id = "oaab\\tx_kwama_web_01", category = cso.landTypes.mud, soundType = "land" },

        -- Land, Stone:
        { id = "oaab\\rem\\mv\\tx_mv_ground_01", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\rem\\mv\\tx_mv_ground_02", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\rem\\mv\\tx_mv_ground_03", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\rem\\mv\\tx_mv_ground_05", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\ab_red_house_pillar", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\ab_telv_sphere_02", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\ab_telv_sphere_02_g", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\fire_dec114", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\fire_dec115", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\fire_dec120", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\fire_dec129", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\millstone", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_dwrv_road_01", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_dwrv_road_dirt", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_kwamacave_base", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_kwamacave_holes", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_lava_solid", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_py_rock_01", category = cso.landTypes.stone, soundType = "land" },
        { id = "oaab\\tx_py_rock_02", category = cso.landTypes.stone, soundType = "land" },

        -- Land, Water:
        { id = "oaab\\dr_tx_blood_512x", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tx_water_ripples", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water00", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water01", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water02", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water03", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water04", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water05", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water06", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water07", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water08", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water09", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water10", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water11", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water12", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water13", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water14", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water15", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water16", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water17", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water18", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water19", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water20", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water21", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water22", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water23", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water24", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water25", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water26", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water27", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water28", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water29", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water30", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\tr_water31", category = cso.landTypes.water, soundType = "land" },
        { id = "oaab\\waterfall_01", category = cso.landTypes.water, soundType = "land" },

        -- Land, Wood:
        { id = "oaab\\rem\\mv\\tx_mv_bark_01", category = cso.landTypes.wood, soundType = "land" },
        { id = "oaab\\rem\\mv\\tx_mv_bark_02", category = cso.landTypes.wood, soundType = "land" },
        { id = "oaab\\pomegranateBark", category = cso.landTypes.wood, soundType = "land" },
        { id = "oaab\\tr_wood_de_rm", category = cso.landTypes.wood, soundType = "land" },

        -- Items, Book:
        { id = "oaab\\m\\bk_ruined_folio.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\bk_ruined_octavo01.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\bk_ruined_octavo02.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_folio_01.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_folio_02.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_folio_02_o.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\bk_ruined_quarto.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_folio_open_01.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_01.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_02.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_03.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_04.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_05.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_06.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_07.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_08.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_09.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_10.nif", category = cso.itemTypes.book, soundType = "item" },
        { id = "oaab\\m\\ab_octavo_11.nif", category = cso.itemTypes.book, soundType = "item" },

        -- Items, Clothing:
        { id = "oaab\\m\\misc_cloth_01a.nif", category = cso.itemTypes.clothing, soundType = "item" },
        { id = "oaab\\m\\misc_cloth_01b.nif", category = cso.itemTypes.clothing, soundType = "item" },
        { id = "oaab\\m\\misc_cloth_02a.nif", category = cso.itemTypes.clothing, soundType = "item" },
        { id = "oaab\\m\\misc_cloth_02b.nif", category = cso.itemTypes.clothing, soundType = "item" },


        -- Items, Gold:
        { id = "oaab\\m\\coin_triune.nif", category = cso.itemTypes.gold, soundType = "item" },
        { id = "oaab\\m\\coin_triune_02.nif", category = cso.itemTypes.gold, soundType = "item" },
        { id = "oaab\\m\\dr_misc_purse_01.nif", category = cso.itemTypes.gold, soundType = "item" },

        -- Items, Gems:
        { id = "oaab\\n\\soulgem_black.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_amber_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_amethyst_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_blackpearl_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_bltourmaline_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_diamond_blue_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_diamond_red_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_diopside_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_firejade_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_garnet_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_goldpearl_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_peridot_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_sapphire_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_topaz_01.nif", category = cso.itemTypes.gems, soundType = "item" },
        { id = "oaab\\n\\gem_tourmaline_01.nif", category = cso.itemTypes.gems, soundType = "item" },

        -- Lockpicks/Keys
        { id = "oaab\\m\\misc_keyring.nif", category = cso.itemTypes.lockpick, soundType = "item" },

        -- Items, Repair:
        { id = "oaab\\m\\dwrvtoolclamp.nif", category = cso.itemTypes.repair, soundType = "item" },
        { id = "oaab\\m\\dwrvtoolcrank.nif", category = cso.itemTypes.repair, soundType = "item" },
        { id = "oaab\\m\\dwrvtoolfork.nif", category = cso.itemTypes.repair, soundType = "item" },

        -- Items, Scrolls:
        { id = "oaab\\m\\crumpledpaper.nif", category = cso.itemTypes.scrolls, soundType = "item" },
        { id = "oaab\\m\\crumpledpaper_ink.nif", category = cso.itemTypes.scrolls, soundType = "item" },
        { id = "oaab\\m\\dwrvparchblank01.nif", category = cso.itemTypes.scrolls, soundType = "item" },
        { id = "oaab\\m\\dwrvparchblank02.nif", category = cso.itemTypes.scrolls, soundType = "item" },
        { id = "oaab\\m\\dwrvparchblankroll.nif", category = cso.itemTypes.scrolls, soundType = "item" },
        { id = "oaab\\m\\paper_ink_ring.nif", category = cso.itemTypes.scrolls, soundType = "item" },

        -- Corpse Containers:
        { id = "oaab\\o\\corpse_arg_01.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpse_arg_02.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpse_arg_03.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpse_arg_04.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpse_vigilant.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned01.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned02.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned03.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned04.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned05.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned06.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpseburned07.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh01.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh02.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh03.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh04.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh05.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh06.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh07.nif", category = cso.specialTypes.body, soundType = "corpse" },
        { id = "oaab\\o\\corpsefresh07hang.nif", category = cso.specialTypes.body, soundType = "corpse" },

        -- Creatures
        { id = "oaab\\r\\dwspecter_f.nif", category = cso.specialTypes.ghost, soundType = "creature" },
        { id = "oaab\\r\\dwspecterwep.nif", category = cso.specialTypes.ghost, soundType = "creature" },
        { id = "oaab\\r\\dwspecterwep_f.nif", category = cso.specialTypes.ghost, soundType = "creature" },
        { id = "oaab\\r\\ironatronach.nif", category = cso.specialTypes.metal, soundType = "creature" },

    }
    for _, data in ipairs(soundData) do
        cso.addSoundData(data.id, data.category, data.soundType)
    end
end
event.register("initialized", initialized)