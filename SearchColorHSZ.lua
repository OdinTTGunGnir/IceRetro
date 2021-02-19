SearchColorHSZ = {}
ColorTable = {}

function SearchColorHSZ.search(id)
    --打开游戏
    if id == "OpenGame" then return findMultiColorInRegionFuzzy(0xffffff, "36|-8|0xd2221e,44|41|0x00d2ff,-9|39|0x000416", 90, 0, 0, 720, 1280, { orient = 2 })
    --关闭开服公告
    elseif id == "CloseNotice" then return findMultiColorInRegionFuzzy(0x970e0e, "-13|15|0x8e0606,-13|31|0x7b0303,0|34|0x7f0303,6|20|0x820b0b,-2|21|0xddcc77", 90, 1051, 87, 1146, 166, { orient = 2 })
    --登陆账号
    elseif id == "Login" then return findMultiColorInRegionFuzzy(0xd19edf, "17|1|0xd19edf,43|1|0xffffff,102|4|0xffffff,149|2|0xd19edf", 90, 679, 479, 956, 629, { orient = 2 })
    --登陆账号2
    elseif id == "StartGame" then return findMultiColorInRegionFuzzy(0x6b4a10, "27|0|0xc0ac87,52|0|0x664411,66|-3|0xbeb579,84|-3|0xefe4aa", 90, 493, 385, 806, 522, { orient = 2 })
    --选择角色
    elseif id == "SelectPlayer" then return findMultiColorInRegionFuzzy(0xc6c6b6, "10|0|0xb5b5b5,17|0|0xc4c4b3", 90, 566, 514, 712, 604, { orient = 2 })
    --确定进入
    elseif id == "Enter" then return findMultiColorInRegionFuzzy(0x463e3e, "9|-1|0x665d55,18|-2|0x474725,20|-2|0xdcdca9,22|-2|0xb7b785,33|-7|0x57574a", 90, 515, 511, 770, 601, { orient = 2 })
    --角色按钮
    elseif id == "Btn_Player" then return findMultiColorInRegionFuzzy(0x7e560b, "-5|9|0xa26b5a,-4|17|0x513d2c,2|30|0xac7c69,2|39|0x211d1c,-18|39|0x121212", 90, 1176, 194, 1277, 279, { orient = 2 })
    --关闭地图
    elseif id == "CloseMap" then return findMultiColorInRegionFuzzy(0x82000b, "4|-1|0x94090a,4|11|0xe3d27d", 90, 1000, 78, 1133, 172, { orient = 2 })
    --盟重老兵
    elseif id == "laobing" then return findMultiColorInRegionFuzzy(0x77cc22, "3|1|0x86bf42,-1|5|0x52a714", 90, 889, 433, 912, 460, { orient = 2 })
    --孤独之地
    elseif id == "gudu" then return findMultiColorInRegionFuzzy(0x24a10d, "7|1|0x32a921,12|1|0x219811", 90, 550, 498, 573, 520, { orient = 2 })
    --回城
    elseif id == "huicheng" then return findMultiColorInRegionFuzzy(0xd31ac2, "-8|5|0xd707bf,1|15|0x251414,15|3|0x706868", 90, 513, 546, 898, 632, { orient = 2 })
    --地图是否白屏
    elseif id == "baiping" then return findMultiColorInRegionFuzzy(0x3d4416, "-32|15|0x57682a,10|30|0x3d4614,46|20|0x4f4f1d,47|-7|0x445223,328|134|0x786544", 90, 257, 197, 877, 556, { orient = 2 })
    --是否包满
    elseif id == "baoman" then return findMultiColorInRegionFuzzy(0xdd260c, "15|16|0xbe872b,8|27|0xa68560,23|13|0xa19477,20|30|0x5e411a", 90, 1077, 187, 1194, 279, { orient = 2 })
    --关闭按钮
    elseif id == "CloseBtn" then return findMultiColorInRegionFuzzy(0xcdbc67, "7|1|0xdec389,4|6|0xe0cf7a,4|15|0x800203", 90, 0, 0, 1280, 720, { orient = 2 })
    --背包按钮
    elseif id == "Btn_BeiBao" then return findMultiColorInRegionFuzzy(0xc99641, "24|3|0x634c31,28|17|0x54391c,14|20|0xebc688,4|22|0x966330,37|19|0x765537", 90, 0, 0, 1280, 720, { orient = 2 })
    end
    
    
    
    
    toast("找色ID未定义")
    return -1,-1
 
end

return SearchColorHSZ