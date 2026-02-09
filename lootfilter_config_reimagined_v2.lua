--- Filter Title: Ning's Filter V2
--- Filter Type: Loot Filter for D2R Reimagined
--- Filter Description: Loot Filter for D2R Reimagined V2

return {-- The below settings are all optional, default/false entries will be assumed for anything not included

    reload = "{pink}Ning's Filter 0.2 {grey} 26-02-08 {Green}reloaded.", --Allows you to specify a custom message when reloading the filter in-game
    debug = false, --Allows you to toggle Debug Mode on/off, which displays rule matching logic in-game for each item
    language = "enUS", --Allows you to set the filter language to one of the 13 currently supported languages
    filter_titles = {"Mid-Game", "End-Game", "Info-Debug"}, --Allows you to specify the text displayed for varying filter 'levels'
    filter_level = 1, --Indicates your currently active filter level, normally controlled via D2RLAN hotkey
    allowOverrides = true, --Allows a mod author (or another filter) to include default/added rules to your loot filter

    --Begin Loot Filter Operations
    rules = {
        -- 0.1 显示itype
        {
            codes = "allitems",
            itype = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150},
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "[itype={itype}]",
            filter_levels = "3",
        },

        -- 1. 杂项隐藏
        -- 1.1 低等药剂
        {
            codes = { "hp1", "hp2", "hp3", "hp4", "mp1", "mp2", "mp3", "mp4" },
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },

        {
            codes = {"mp5" },
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = "2"
        },

        -- 1.2 卷轴
        {
            codes = { "tsc", "isc"},
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        -- 1.3 白色箭袋
        {
            codes = {"aqv","cqv"},
            quality = "3-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        -- 2.1 装备等级[X], [E]显示
        { 
            codes = "allitems",
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = "{orange}[E]{white}"
        },
        { 
            codes = "allitems",
            rarity = 1,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = "{yellow}[X]{white}"
        },
        -- 2.2 超强显示[S]
        { 
            codes = "allitems",
            quality = "3",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = "{white}[S]{white}"
        },
        -- 2.3 无形显示[ETH]
        { 
            codes = "allitems",
            ethereal = true,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = "{pink}[ETH]{white}"
        },

        -- 2.4 符文之语提示
        { 
            codes = "allitems",
            runeword = true,
            suffix = "{white}[Rune Word]{white}" ,
        },
        -- 2.5 显示当前孔数量
        { 
            codes = "allitems",
            sockets = "2",
            identified = true,
            suffix = "{turquoise}○○({sockets}){white}"
        },
        { 
            codes = "allitems",
            sockets = "3",
            identified = true,
            suffix = "{turquoise}○○○({sockets}){white}"
        },
        { 
            codes = "allitems",
            sockets = "4",
            identified = true,
            suffix = "{turquoise}○○○○({sockets}){white}"
        },
        { 
            codes = "allitems",
            sockets = "5",
            identified = true,
            suffix = "{turquoise}○○○○○({sockets}){white}"
        },
        { 
            codes = "allitems",
            sockets = "6",
            identified = true,
            suffix = "{turquoise}○○○○○○({sockets}){white}"
        },
        -- 2.6 描述显示最大空数量
        {
			codes="allitems",
			location={"onground", "onplayer", "atvendor", "equipped"},
			itype = {45,50},
			prefix_desc="{grey}Max Sockets: {maxsock}\n"
		},
        -- 3. 重要物品显示
        -- 3.1 高级符文显示
        {
            codes = { "r20", "r21", "r22", "r23", "r24", "r25", "s20", "s21", "s22", "s23", "s24", "s25" },
            notify = "ÿcAMid Rune Dropped: {name}",
            border = { 255, 0, 0, 190, 2 },
        },
        {
            codes = { "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33", "r34", "r35", "r36", "s26", "s27", "s28", "s29", "s30", "s31", "s32", "s33", "s34", "s35", "s36" },
            notify = "ÿc0High Rune Dropped: {name}",
            border = { 255, 0, 0, 255, 3 },
            -- background = { 255, 255, 255, 128 },
        },
        -- 3.2. Orb显示
        {
            codes = {"ka3", "1ka", "oos", "1os", "ooc", "1oc", "ooa", "1oa", "ooi", "1oi", "ooe", "1oe"},
            notify = "ÿcSOrb DroppedÿcS: {name}",
            border = { 255, 64, 128, 255, 3 },
            background = { 74, 74, 74, 255 }
        },

        -- 3.3. boss钥匙 & 精华
        {
            codes = {"pk1","pk2","pk3","dhn","bey","mbr"},
            notify = "{red}Key Droped: {name}",
            border = { 240, 0, 0, 230, 2 }
        },

        {
            codes = {"mpa","blc","dia"},
            notify = "{red}Boss Part Droped: {name}",
            border = { 240, 0, 0, 230, 2 }
        },

        {
            codes = {"tes","ceh","bet","fed"},
            notify = "{red}Essence Dropped: {name}",
            border = { 240, 0, 0, 230, 2 } 
        },
        -- 3.4 Quest Item
        {
            codes = { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            notify = "{red}Quest Item: {name}",
            border = { 240, 0, 0, 230, 2 } 
        },
        -- 3.5. 高品质超强底材
        {
            codes = { "7wa", "7cr", "utp", "7b8", "amc" },
            quality = "3",
            prefix = "{Red}|GB|{white}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 4. 蓝色品质装备显示
        -- 4.1 隐藏蓝色品质普通、稀有装备
        {
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            itype = {45,50},
            quality = "4",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 4.1]", --testing purposes
        },

        -- 4.2 蓝色charm,jewel显示高亮
        {
            codes = {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6", "jew"},
            quality = "4",
            border = { 0, 0, 150, 230, 3 }
        },
    -- 5. 金色品质装备显示
        -- 5.1 高亮显示手套、鞋、
        {
            codes = "allitems",
            itype = {16, 15},
            quality = "6",
            border = { 255, 255, 100, 230, 2 },
        },

        -- 5.2 高亮显示Ring、Amulet、Charm、jewel
        {
            codes = {"amu","rin"},
            quality = "6",
            border = { 255, 255, 100, 230, 2 },
            notify = "{yellow}Rare Ring/Amulet Dropped: {name}",
        },
        {
            codes = {"cm1","cm2","cm3","cm4","cm5","cm6"},
            quality = "6",
            border = { 255, 255, 100, 230, 2 },
            notify = "{yellow}Rare Charm Dropped: {name}",
        },
        {
            codes = {"jew"},
            quality = "6",
            border = { 255, 255, 100, 230, 2 },
            notify = "{yellow}Rare Jewel Dropped: {name}",
        },

        -- 5.3 隐藏除amu,ring,charm,jew,手套、鞋、Orb、Wand非精华装备
        {
            codes = "allitems",
            itype = NOT {10, 12, 13, 15, 16, 25, 58, 68},
            quality = "6",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 5.3]", --testing purposes
        },

    -- 6. 暗金装备显示
        -- 6.1. 所有暗金装备
        {
            codes = NOT {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6", "jew"},
            quality = "7",
            notify = "A Unique Appears: {name}",
            border = { 255, 128, 0, 230, 2 }, 
        },
        -- 6.2. 暗金charm
        {
            codes = {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6"},
            quality = 7,
            notify = "{purple}A Legend Appears: {name}",
            name_style = "Open Flames",
            border = { 255, 128, 0, 230, 2 } 
        },
        {
            codes = {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6"},
            quality = 7,
            name_style = "Open Flames",
            location = {"onground","onplayer","atvendor"}
        },
        -- 6.3. 暗金Jewel
        {
            codes = {"jew"},
            quality = 7,
            name_override = "Rainbow Facet!!!",
            notify = "{red}A Fragment of the Rainbow!",
            name_style = "Rainbow",
            border = { 255, 0, 0, 230, 2 } 
        },
    -- 7.  Set套装显示
        -- 7.1. 所有套装装备高亮
        {
            codes = "allitems",
            quality = "5",
            notify = "{green}Piece of a Legacy: {name}",
            border = { 27, 209, 3, 230, 2 },
        },

         
    -- 8. 通用白色/ETH规则
        -- 8.1 上限5,6孔精华武器，2,3孔: 隐藏
        {
            codes = "allitems",
            itype = {45},
            maxsock = "5+",
            quality = "3-",
            sockets = "1,2,3",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 8.1]",
        },
        -- 2. 高品质超强底材特殊标记("7wa", "7cr", "utp", "amc")
        {
            codes = { "7wa", "7cr", "utp", "7b8", "amc" },
            quality = "3",
            prefix = "{Red}|GB|{white}",
            location={"onground", "onplayer", "atvendor", "equipped"},
            border = { 255, 255, 255, 230, 2 } 
        },
        -- 3. 隐藏1孔物品
        {
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            quality = "3-",
            sockets = "1",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
    -- 9. Axe & Throwing Axe (itype = 28)
        -- 1. 1-3品质 除 Berserker Axe(7wa)：隐藏
        {
            codes = NOT {"7wa"},
            itype = {28},            
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 9.1]", --testing purposes
        },
        -- 2. Berserker Axe(7wa) 超强：高亮
        {
            codes = {"7wa"},
            quality = "3",
            notify = "{white}Berserker Axe Found!",
            border = { 255, 255, 255, 230, 2 } 
        },

    -- 10. Swords (itype = 30)
        -- 1. 1-3品质 除 Crystal Sword(crs),Phase Blade(7cr)：隐藏
        {
            codes = NOT {"crs", "7cr"},
            itype = {30},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 10.1]", --testing purposes
        },
        -- 2. Crystal Sword(crs),Phase Blade(7cr)超强：高亮
        {
            codes = {"crs", "7cr"},
            quality = "3",
            notify = "{white}Sword Found! : {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 11. Mace + Club (itype = 29, 36)
        -- 1. 除任务物品(leg, qf1, qf2) + Flail(fla) + Scourge(7fl)：隐藏
        {
            codes = NOT {"leg", "qf1", "qf2", "fla", "7fl"},
            itype = {29, 36},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 11.1]", --testing purposes
        },
        -- 2. Flail(fla) + Scourge(7fl) 超强：高亮
        {
            codes = {"fla", "7fl"},
            quality = "3",
            notify = "{white}Flail/Scourge Found! : {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 12. Scepters(itype = 24)
        -- 1. 除War Scepter(wsp), Divine Scepter(9ws), Caduceus(7ws)：隐藏
        {
            codes = NOT {"wsp", "9ws", "7ws"},
            itype = {24},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 12.1]", --testing purposes
        },
        -- 2. War Scepter(wsp), Divine Scepter(9ws), Caduceus(7ws):
        --     1. 0/4/5孔
        --     2. OR(专注+2, 祝福之锤+2, 天堂+2, 神圣冲击+2 审判+2):高亮
        {
            codes = {"wsp", "9ws", "7ws"},
            sockets = "0,4,5",
            quality = "3-",
            notify = "{white}Scepter Found! : {name}",
            stat = OR {
                { index = 107, op = ">=", param = 113, value = 1 },
                { index = 107, op = ">=", param = 112, value = 1 },
                { index = 107, op = ">=", param = 121, value = 1 },
                { index = 107, op = ">=", param = 118, value = 1 },
                { index = 107, op = ">=", param = 123, value = 1 },
            },
            border = { 255, 255, 255, 230, 2 }, 
        },
    -- 13. Hammers(itype = 31)
        -- 1. 除任务物品("hdm", "hfh"): 隐藏
        {
            codes = NOT {"hdm", "hfh"},
            itype = {31},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 13.1]", --testing purposes
        },
    -- 14. Daggers(itype = 32)
        -- 1. 除任务物品("d33", "g33"): 隐藏
        {
            codes = NOT {"d33", "g33"},
            itype = {32},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 14.1]", --testing purposes
        },
    -- 15. Wands(itype = 25)
        -- 1. 隐藏
        {
            codes = "allitems",
            itype = {25},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 15.1]", --testing purposes
        },
    -- 16. Claws(itype = 67)
        -- 1. 除Greater Claws(9lw), Greater Talons(9tw), Feral Claws(7lw),Runic Talons(7tw):隐藏
        {
            codes = NOT {"9lw", "9tw", "7lw", "7tw"},
            itype = {67},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 16.1]", --testing purposes
        },
        -- 2. 2孔：隐藏
        {
            codes = "allitems",
            itype = {67},
            sockets = "2",
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 16.2]", --testing purposes
        },
        -- 3. 带凤凰击 (Phoenix Strike) OR 雷电爪 (Claws of Thunder),0/3孔：高亮
        {
            codes = "allitems",
            itype = {67},
            sockets = "0,3",
            quality = "3-",
            stat = OR {
                { index = 107, op = ">=", param = 280, value = 1 },
                { index = 107, op = ">=", param = 269, value = 1 },
            },
            notify = "{white}Claws Found! : {name} {stat=(107,280)} {stat=(107,269)}",
            border = { 255, 255, 255, 230, 2 }, 
        },
    -- 17. Orbs(itype = 68)
        -- 1. 有以下电专精、火专精、冰专精、暴风雪、冰封球、电环、闪电链：保留高亮
        {
            codes = "allitems",
            itype = {68},
            quality = "3-",
            stat = OR {
                { index = 107, op = ">=", param = 40, value = 2 },
                { index = 107, op = ">=", param = 44, value = 2 },
                { index = 107, op = ">=", param = 48, value = 2 },
                { index = 107, op = ">=", param = 50, value = 2 },
                { index = 107, op = ">=", param = 52, value = 2 },
                { index = 107, op = ">=", param = 53, value = 2 },
                { index = 107, op = ">=", param = 59, value = 2 },
                { index = 107, op = ">=", param = 60, value = 2 },
                { index = 107, op = ">=", param = 61, value = 2 },
                { index = 107, op = ">=", param = 62, value = 2 },
                { index = 107, op = ">=", param = 63, value = 2 },
                { index = 107, op = ">=", param = 64, value = 2 },
                { index = 107, op = ">=", param = 65, value = 2 },
            },
            notify = "{white}Orb with Skill Found! : {name}",
            border = { 255, 255, 255, 230, 2 }, 
        },

    -- 18. Throwing Knife(itype = 42)
        -- 1. 隐藏
        {
            codes = "allitems",
            itype = {42},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 18.1]", --testing purposes
        },
    -- 19. Javelins(itype = 44)
        -- 1. 隐藏
        {
            codes = "allitems",
            itype = {44},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 19.1]", --testing purposes
        },
    -- 20. Spears (itype = 33)
        -- 1. 除 Matriarchal Spear(amd), Mancatcher(7br),Stygian Pike(7tr)，Ghost Spear(7st): 隐藏
        {
            codes = NOT {"amd", "7br", "7tr", "7st"},
            itype = {33},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 20.1]", --testing purposes
        },
        -- 2. 0/4/5/6有型超强 Matriarchal Spear，Mancatcher，Ghost Spear：高亮
        {
            codes = {"amd", "7br", "7st"},
            quality = "3",
            notify = "{white}Spear Found!: {name}",
            ethereal = false,
            border = { 255, 255, 255, 230, 2 } 
        },
        -- 3. 0/4/5/6无形超强 Mancatcher,Stygian Pike，Ghost Spear：高亮
        {
            codes = {"7br", "7tr", "7st"},
            quality = "3",
            notify = "{white}Ethereal Spear Found!: {name}",
            ethereal = true,
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 21. Polearms (itype = 34)
        -- 1. 1-3品质 除 Thresher(7s8), Cryptic Axe(7pa), Great Poleaxe(7h7), Giant Thresher(7wc)：隐藏
        {
            codes = NOT {"7s8", "7pa", "7h7", "7wc"},
            itype = {34},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 21.1]", --testing purposes
        },
        -- 2. Thresher, Cryptic Axe, Great Poleaxe, Giant Thresher 超强：高亮
        {
            codes = {"7s8", "7pa", "7h7", "7wc"},
            quality = "3",
            notify = "{white}Polearm Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 22. Stave (itype = 26)
        -- 1. 最大3-孔：隐藏
        {
            codes = "allitems",
            itype = {26},
            sockets = "2,3",
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 22.1]", --testing purposes
        },
        -- 2. 0/4/5/6孔，且技能包含冰甲或能量盾：高亮
        {
            codes = "allitems",
            itype = {26},
            sockets = "0,4,5,6",
            quality = "3-",
            stat = OR {
                { index = 107, op = ">=", param = 40, value = 2 },
                { index = 107, op = ">=", param = 50, value = 2 },
                { index = 107, op = ">=", param = 60, value = 2 },
                { index = 107, op = ">=", param = 58, value = 2 },
            },
            notify = "{white}Stave with Skill Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 23. Bows & Crossbow(itype = 27,35)
        -- 1. 除Great Bow(6cb),Diamond Bow(6s7),Hydra Bow(6lw),Matriarchal Bow(amb),Grand Matron Bow(amc): 隐藏
        {
            codes = NOT {"6cb", "6s7", "6lw", "amb", "amc"},
            itype = {27, 35},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 23.1]", --testing purposes
        },
        -- 2. Great Bow(6cb),Diamond Bow(6s7),Hydra Bow(6lw),Matriarchal Bow(amb),Grand Matron Bow(amc) 超强：高亮
        {
            codes = {"6cb", "6s7", "6lw", "amb", "amc"},
            quality = "3",
            notify = "{white}Bow Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 24. Helms & Circlets & Dru Helm & Bar Helm(itype = 104)
        -- 1. 2孔非超强：隐藏
        {
            codes = "allitems",
            itype = {104},
            sockets = "2",
            quality = "2-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 24.1]", --testing purposes
        },
        -- 2. 普通扩展：隐藏
        {
            codes = "allitems",
            itype = {104},
            quality = "3-",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 24.2]", --testing purposes
        },
        -- 3. 精英超强("ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uh9")：高亮
        {
            codes = {"ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uh9"},
            itype = {104},
            quality = "3",
            notify = "{white}Helm Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
        -- 4. Dru Helm(itype = 72):待定
        -- 5. Bar Helm(itype = 71):待定
    -- 25. Chest Armors(itype = 3):
        -- 1. 2孔 非超强：隐藏
        {
            codes = "allitems",
            itype = {3},
            sockets = "2",
            quality = "2-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 25.1]", --testing purposes
        },
        -- 2. 普通+扩展，除Mage Plate(xtp): 隐藏
        {
            codes = NOT {"xtp"},
            itype = {3},
            quality = "3-",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 25.2]", --testing purposes
        },
        -- 3. 有形 超强("xtp","uui","uea","ula","utu","urs","uul","uar","utp")：高亮
        {
            codes = {"xtp","uui","uea","ula","utu","urs","uul","uar","utp"},
            quality = "3",
            ethereal = false,
            notify = "{white}Body Armor Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
        -- 4. 无形 超强("upl","ult","uld","uth","uul","uar","utp")：高亮
        {
            codes = {"upl","ult","uld","uth","uul","uar","utp"},
            quality = "3",
            notify = "{white}Ethereal Body Armor Found!: {name}",
            ethereal = true,
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 26. Shields(itype = 2):
        -- 1. 2孔，非超强：隐藏
        {
            codes = "allitems",
            itype = {2},
            sockets = "2",
            quality = "2-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 26.1]", --testing purposes
        },
        -- 2. 普通+扩展：隐藏
        {
            codes = "allitems",
            itype = {2},
            quality = "3-",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 26.2]", --testing purposes
        },
        -- 3. Hyperion,Monarch,Troll Nest,Blade Barrier("urg","uit","ush","upk") 超强：高亮
        {
            codes = {"urg","uit","ush","upk"},
            quality = "3",
            notify = "{white}Shield Found!: {name}",
            border = { 255, 255, 255, 230, 2 } 
        },
    -- 27. Pal Shield(itype = 70)
        -- 1. 普通+扩展：隐藏
        {
            codes = "allitems",
            itype = {70},
            quality = "3-",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- hide = true,
            prefix = "[hidden 27.1]", --testing purposes
        },
        -- 2. 0/2/3/4孔，4R > 40：高亮
        {
            codes = "allitems",
            quality = "3-",
            stat = { index = 39, op = ">=", value = 40 }, -- This is the Res Check, change the Value to change the minimum amount of Res
            stat = { index = 41, op = ">=", value = 40 },
            stat = { index = 43, op = ">=", value = 40 },
            stat = { index = 45, op = ">=", value = 40 },
            suffix = "{red}[High Resist]{white}",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,2,3,4", -- add if you want socket sorting
            notify = "{white}High Resist Shield: {white}{name}",
        },
    -- 28. Voodoo Heads(itype = 69)
        -- 1. 普通+扩展：隐藏
        {
            codes = "allitems",
            itype = {69},
            quality = "3-",
            rarity = "1-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 28.1]", --testing purposes
        },
    -- 29. Gloves, Boots, Belts{16, 15, 19}
        -- 1. 隐藏
        {
            codes = "allitems",
            itype = {15, 16, 19},
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true,
            -- prefix = "[hidden 29.1]", --testing purposes
        },
    }
}

