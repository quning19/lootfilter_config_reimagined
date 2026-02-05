--- Filter Title: Ning's Filter
--- Filter Type: Loot Filter for D2R Reimagined
--- Filter Description: Loot Filter for D2R Reimagined

return {-- The below settings are all optional, default/false entries will be assumed for anything not included

    reload = "{pink}Ning's Filter 0.1 {grey} 02/04/26 {Green}reloaded.", --Allows you to specify a custom message when reloading the filter in-game
    debug = false, --Allows you to toggle Debug Mode on/off, which displays rule matching logic in-game for each item
    language = "enUS", --Allows you to set the filter language to one of the 13 currently supported languages
    filter_titles = {"Mid-Game", "End-Game", "Show-All-Debug"}, --Allows you to specify the text displayed for varying filter 'levels'
    filter_level = 1, --Indicates your currently active filter level, normally controlled via D2RLAN hotkey
    allowOverrides = true, --Allows a mod author (or another filter) to include default/added rules to your loot filter

    --Begin Loot Filter Operations
    rules = {
        -- 1. 杂项隐藏
        -- 1.1 低等药剂
        {
            codes = { "hp1", "hp2", "hp3", "hp4", "mp1", "mp2", "mp3", "mp4" },
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        {
            codes = { "hp5", "mp5" },
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = "2"
        },

        -- 1.2 卷轴
        {
            codes = { "tsc", "isc"},
            -- hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            prefix = "[hidden 1]", --testing purposes
            filter_levels = "3",
        },
        -- 1.3 白色箭袋
        {
            codes = {"aqv","cqv"},
            quality = "3-",
            -- hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            prefix = "[hidden 2]", --testing purposes
            filter_levels = "3",
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
        -- 2.2.1 ETH Mark
        { 
            codes = "allitems",
            ethereal = true,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = "{pink}[ETH]{white}"
        },

        {
            codes = "allitems",
            itype = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150},
            -- quality = "2-",
            -- rarity = "1-",
            prefix = "[{itype}]", --testing purposes
            filter_levels = "3",
        },
        -- 2.3 符文之语提示
        ---Rule 0c: Runewords beg you to keep them.
        { 
            codes = "allitems",
            runeword = true,
            suffix = "{white}[Rune Word]{white}" ,
            filter_levels = "1,2,3,4"
        },
        -- 2.4 显示当前孔数量
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
        -- 2.5 描述显示最大空数量
        {
			codes="allitems",
			location={"onground", "onplayer", "atvendor", "equipped"},
			itype = {45,50},
			prefix_desc="{grey}Max Sockets: {maxsock}\n"
		},
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
            hide = false,
            border = { 240, 0, 0, 230, 2 } 
        },
        -- 3.5. 高品质超强底材
        {
            codes = { "7wa", "7cr", "utp", "7b8", "amc" },
            quality = "3",
            prefix = "{Red}|GB|{white}",
            border = { 255, 255, 255, 230, 2 } 
        },

        -- 4.1 破碎装备隐藏
        {
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            quality = "1",
            -- hide = true,
            prefix = "[hidden 3]", --testing purposes
            filter_levels = "3",
        },

        -- 4.2 隐藏1孔物品
        {
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            quality = "3-",
            sockets = "1",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            -- prefix = "[hidden 4]", --testing purposes
            -- filter_levels = "3",
        },
        


        -- 4.3 高亮0/3/4孔头、胸、盾
        -- 头 Bone Visage Demonhead Diadem Shako Hydraskull
        -- "uh9", "usk", "ci3", "uap", "ukp"
        -- 胸 Mage Plate,Dusk Shroud,Archon Plate,Wyrmhide,Great Hauberk
        -- "xtp", "uui", "utp", "uea", "urs"
        -- 盾 Hyperion,Monarch,Troll Nest,Blade Barrier
        -- "urg","uit","ush","upk"

        -- 4.3.1 精英 超强：高亮 200
        {
            codes = "allitems",
            itype = {2, 3, 104},
            quality = "3",
            rarity = "2",
            border = { 255, 255, 255, 150, 1 }, 
        },

        -- 4.3.2 特定 精英：高亮 255 & 通知
        {
            codes = {"uit","urg","ush","upk","uh9", "usk", "ci3", "uap", "ukp", "xtp", "uui", "utp", "uea", "urs"},
            quality = "2,3",
            notify = "Elite Armor Base: {white}{name}",
            border = { 255, 255, 255, 225, 2 }, 
        },

        -- 4.3.3 扩展 超强：高亮 150
        {
            codes = "allitems",
            itype = {2, 3, 104},
            quality = "3",
            rarity = "1",
            border = { 255, 255, 255, 150, 2 }, 
        },

        -- 4.3.4 普通 + 扩展 非超强：隐藏
        {
            codes = "allitems",
            itype = {2, 3, 104},
            quality = "2-",
            rarity = "1-",
            hide = true,
            -- prefix = "[hidden 5]", --testing purposes
            -- filter_levels = "3",
        },

        -- 4.4 手套、鞋、腰带
        -- 4.4.1 普通 + 扩展：隐藏
        {
            codes = "allitems",
            itype = {16, 15, 19},
            quality = "3-",
            rarity = "1-",
            hide = true,
            -- prefix = "[hidden 6]", --testing purposes
            -- filter_levels = "3",
        },
        -- 4.5 高亮职业装备
        -- 4.5.1 圣骑士盾 4r40
        {
            codes = { "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa"},
            quality = "3-",
            stat = { index = 39, op = ">=", value = 40 }, -- This is the Res Check, change the Value to change the minimum amount of Res
            stat = { index = 41, op = ">=", value = 40 },
            stat = { index = 43, op = ">=", value = 40 },
            stat = { index = 45, op = ">=", value = 40 },
            suffix = "{red}[High Resist]{white}",
            border = { 255, 255, 255, 180, 2 },
            sockets = "0,3,4", -- add if you want socket sorting
        },

        {
            codes = {"pab", "pac", "pad", "pae", "paf" },
            quality = "3-",
            stat = { index = 39, op = ">=", value = 40 }, -- This is the Res Check, change the Value to change the minimum amount of Res
            stat = { index = 41, op = ">=", value = 40 },
            stat = { index = 43, op = ">=", value = 40 },
            stat = { index = 45, op = ">=", value = 40 },
            suffix = "{red}[High Resist]{white}",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,2,3,4", -- add if you want socket sorting
            notify = "High Resist Shield: {white}{name}",
        },

        -- 4.5.2 超强弓 4孔以上
        {
            codes = {"6lw", "6l7", "6sw", "amb", "amc" },
            quality = "3",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,4,5,6", -- add if you want socket sorting
            notify = "Socketed Bow: {white}{name}",
        },

        -- 4.5.3 2孔 Orb
        {
            codes = {"ob1", "ob2", "ob3", "ob4", "ob6", "ob7", "ob8", "ob9", "obb", "obc", "obd", "obe"},
            quality = "3-",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,2", -- add if you want socket sorting
        },

        -- 4.5.3 3孔 Orb
        {
            codes = {"ob5", "oba", "obf"},
            quality = "3-",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,3",
            notify = "Socketed Orb: {white}{name}",
        },

        -- 4.5.4 3孔刺客爪
        {
            codes = {"9wb", "9cs", "9lw", "9tw", "7wb", "7cs", "7lw", "7tw"},
            quality = "2,3",
            border = { 255, 255, 255, 230, 2 },
            sockets = "0,3",
            notify = "Socketed Claw: {white}{name}",
        },
        {
            codes = {"9wb", "9cs", "9lw", "9tw", "7wb", "7cs", "7lw", "7tw"},
            quality = "2,3",
            sockets = "1,2",
            -- hide = true,
            prefix = "[hidden 7]", --testing purposes
            filter_levels = "3",
        },

        -- 4.6.1. 0,3,4,5,6孔水晶剑
        {
            codes = {"crs"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,3,4,5,6",
        },
        {
            codes = {"crs"},
            quality = "3-",
            sockets = "1,2",
            -- hide = true,
            prefix = "[hidden 8]", --testing purposes
            filter_levels = "3",
        },
        -- 4.6.2. 0,4,5孔连枷
        {
            codes = {"fla"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,4,5",
        },
        {
            codes = {"fla"},
            quality = "3-",
            sockets = "1,2,3",
            -- hide = true,
            prefix = "[hidden 9]", --testing purposes
            filter_levels = "3",
        },
        -- 4.6.3. 0,5,6孔幻化
        {
            codes = {"9cr","7cr"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,5,6",
        },
        {
            codes = {"9cr","7cr"},
            quality = "3-",
            sockets = "1,2,3",
            -- hide = true,
            prefix = "[hidden A]", --testing purposes
            filter_levels = "3",
        },

        -- 4.6.4. 5孔狂战士斧
        {
            codes = {"7wa","72a"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,4,5,6",
        },
        -- 4.6.5. 0,4孔镰刀
        {
            codes = {"scy"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,4",
        },
        {
            codes = {"scy"},
            quality = "3-",
            sockets = "1,2,3,5,6",
            -- hide = true,
            prefix = "[hidden B]", --testing purposes
            filter_levels = "3",
        },
        -- 4.6.6. 0,4,5,6孔法杖
        {
            codes = {"6ws","6bs","6cs","8ws","8bs","8cs","wst","bst","cst","7st","amd"},
            quality = "3-",
            border = { 255, 255, 255, 200, 2 },
            sockets = "0,4,5,6",
        },
        {
            codes = {"6ws","6bs","6cs","8ws","8bs","8cs","wst","bst","cst"},
            quality = "3-",
            sockets = "1,2,3",
            -- hide = true,
            prefix = "[hidden C]", --testing purposes
            filter_levels = "3",
        },
        -- 4.7 武器隐藏
        -- 4.7.1 普通+扩展 隐藏：除orb, staff, 镰刀, 连枷，水晶剑，刺客爪, 任务
        {
            codes = NOT {"ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "6ws","6bs","6cs","8ws","8bs","8cs","wst","bst","cst", "scy", "fla","crs", "9wb", "9cs", "9lw", "9tw", "7wb", "7cs", "7lw", "7tw", "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            itype = {45},
            quality = "3-",
            rarity = "1-",
            hide = true,
            -- prefix = "[hidden D]", --testing purposes
            -- filter_levels = "3",
        },
        -- 4.7.2 上限5,6孔精华武器，2,3孔: 隐藏
        -- {
        --     codes = {"2ax","mpi","wax","bax","btx","gax","gix","wsp","fla","mau","gma","flb","gsd","brn","spt","pik","scy","pax","hal","wsc","wst","lbw","sbb","lbb","swb","lwb","hxb","rxb","hfh","92a","9mp","9wa","9ba","9bt","9ga","9gi","9ws","9fl","9m9","9gm","9cr","9fb","9gd","9br","9st","9p9","9s8","9pa","9h9","9wc","8ws","8lb","8s8","8l8","8sw","8lw","8hx","8rx","72a","7mp","7wa","7ba","7bt","7ga","7gi","7ws","7fl","7m7","7gm","7cr","7fb","7gd","7br","7st","7p7","7s8","7pa","7h7","7wc","6ws","6lb","6s7","6l7","6sw","6lw","6hx","6rx","am1","am2","am3","am4","am6","am7","am8","am9","amb","amc","amd","ame"},
        --     quality = "3-",
        --     sockets = "1,2,3",
        --     hide = true,
        -- },
        {
            codes = "allitems",
            itype = {45},
            maxsock = "5+",
            quality = "3-",
            sockets = "1,2,3",
            -- hide = true,
            prefix = "[hidden E]", --testing purposes
            filter_levels = "3",
        },
        -- 5.1. 高亮3/4孔精华胸甲，头甲，盾牌
        {
            codes = {"usk","uh9","urn","uhl","ulm","upl","ult","uld","uth","uul","uar","utp","urg","uit","ush","upk"},
            sockets = "0,3,4",
            quality = "2",
            ethereal = true,
            border = { 255, 105, 180, 200, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },

        {
            codes = {"usk","uh9","urn","uhl","ulm","upl","ult","uld","uth","uul","uar","utp","urg","uit","ush","upk"},
            sockets = "0,3,4",
            quality = "3",
            ethereal = true,
            notify = "Eth Armor Dropped: {purple}{name}",
            border = { 255, 105, 180, 255, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        -- 5.2. 高亮3/4/5/6孔单手精华武器：单手剑、狂战士斧、

        {
            codes = {"7wa","7cr","7bs","7ls","7wd","7fl"},
            sockets = "0,3,4,5,6",
            quality = "2",
            ethereal = true,
            border = { 255, 105, 180, 200, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },

        {
            codes = {"7wa","7cr","7bs","7ls","7wd","7fl"},
            sockets = "0,3,4,5,6",
            quality = "3",
            ethereal = true,
            notify = "Eth Weapon Dropped: {purple}{name}",
            border = { 255, 105, 180, 255, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        
        -- 5.3 高亮4/5/6孔双手精华武器：长柄、矛
        {
            codes = {"7s8","7pa","7h7","7wc","7tr","7br","7st","7p7"},
            sockets = "0,4,5,6",
            quality = "2",
            ethereal = true,
            border = { 255, 105, 180, 200, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
        {
            codes = {"7s8","7pa","7h7","7wc","7tr","7br","7st","7p7"},
            sockets = "0,4,5,6",
            quality = "3",
            ethereal = true,
            notify = "Eth Weapon Dropped: {purple}{name}",
            border = { 255, 105, 180, 255, 2 }, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },
    -- 6. 蓝色品质装备显示
        -- 6.1 隐藏蓝色品质普通、稀有装备
        {
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", 
            "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            itype = {45,50},
            quality = "4",
            rarity = "1-",
            hide = true,
            -- prefix = "[hidden F]", --testing purposes
            -- filter_levels = "3",
            -- area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
        },

        -- 6.2 蓝色charm,jewel显示高亮
        {
            codes = {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6", "jew"},
            quality = "4",
            border = { 0, 0, 150, 230, 3 }
        },
    -- 7. 金色品质装备显示
        -- 7.1 高亮显示手套、鞋、
        {
            codes = "allitems",
            itype = {16, 15},
            quality = "6",
            border = { 255, 255, 100, 230, 2 },
        },

        -- 7.2 高亮显示Ring、Amulet、Charm、jewel
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

        -- 7.3 隐藏除手套、鞋、Orb、Wand非精华装备
        {
            codes = "allitems",
            itype = NOT {10, 12, 13, 15, 16, 25, 59, 69},
            quality = "6",
            rarity = "1-",
            -- hide = true,
            prefix = "[hidden G]", --testing purposes
            filter_levels = "3",
        },

        -- 8. 暗金装备显示
        -- 8.1. 所有暗金装备
        {
            codes = NOT {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6", "jew"},
            quality = "7",
            notify = "A Unique Appears: {name}",
            border = { 255, 128, 0, 230, 2 }, 
        },
        -- 8.2. 暗金charm
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
        -- 8.3. 暗金Jewel
        {
            codes = {"jew"},
            quality = 7,
            name_override = "Rainbow Facet!!!",
            notify = "{red}A Fragment of the Rainbow!",
            name_style = "Rainbow",
            border = { 255, 0, 0, 230, 2 } 
        },
        -- 9.  Set套装显示
        -- 9.1. 所有套装装备高亮
        {
            codes = "allitems",
            quality = "5",
            notify = "{green}Piece of a Legacy: {name}",
            border = { 27, 209, 3, 230, 2 },
        },
    }
}

