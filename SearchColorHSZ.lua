SearchColorHSZ = {}
ColorTable = {}

function SearchColorHSZ.search(id)
    --打开游戏（游戏icon）
    if id == "OpenGame" then return findMultiColorInRegionFuzzy(0x519bca, "29|6|0x002795,52|4|0xbd0908,10|49|0xffe05f,52|47|0xeb6819", 90, 0, 0, 720, 1280, { orient = 2 })
    --关闭开服公告
    elseif id == "CloseNotice" then return findMultiColorInRegionFuzzy(0x8e0606, "8|3|0xe8d782,14|7|0x8b0303", 90, 0, 0, 1280, 720, { orient = 1 })
    --登陆账号
    elseif id == "Login" then return findMultiColorInRegionFuzzy(0xd19edf, "17|1|0xd19edf,43|1|0xffffff,102|4|0xffffff,149|2|0xd19edf", 90, 679, 479, 956, 629, { orient = 2 })
    --登陆账号2
    elseif id == "StartGame" then return findMultiColorInRegionFuzzy(0x6f6f67, "19|0|0xffe26b,28|0|0xffe069,53|5|0xeecc66,80|5|0xf3d15a,107|8|0xecca64", 90, 0, 0, 1280, 720, { orient = 1 })
    --选择角色
    elseif id == "SelectPlayer" then return findMultiColorInRegionFuzzy(0xc6c6b6, "10|0|0xb5b5b5,17|0|0xc4c4b3", 90, 566, 514, 712, 604, { orient = 2 })
    --确定进入
    elseif id == "Enter" then return  findMultiColorInRegionFuzzy(0x4a4a3a, "20|0|0xc8b795,31|0|0xddddae,53|4|0x737370,62|12|0x5d5647", 90, 0, 0, 1280, 720, { orient = 1 })
    --角色按钮
    elseif id == "Btn_Player" then return findMultiColorInRegionFuzzy(0x7e560b, "-5|9|0xa26b5a,-4|17|0x513d2c,2|30|0xac7c69,2|39|0x211d1c,-18|39|0x121212", 90, 1176, 194, 1277, 279, { orient = 2 })
    --关闭地图
    elseif id == "CloseMap" then return findMultiColorInRegionFuzzy(0x82000b, "4|-1|0x94090a,4|11|0xe3d27d", 90, 1000, 78, 1133, 172, { orient = 2 })
    --盟重老兵
    elseif id == "laobing" then return findMultiColorInRegionFuzzy(0x77cc22, "3|1|0x86bf42,-1|5|0x52a714", 90, 889, 433, 912, 460, { orient = 2 })
    --孤独之地
    elseif id == "gudu" then return findMultiColorInRegionFuzzy(0x24a10d, "7|1|0x32a921,12|1|0x219811", 90, 550, 498, 573, 520, { orient = 2 })
    --回城
    elseif id == "huicheng" then return findMultiColorInRegionFuzzy(0x420d42, "7|5|0x771177,15|1|0xd211c1,22|3|0x756d6d,14|-8|0xefefe6", 90, 514, 554, 895, 632, { orient = 1 })
    --地图是否白屏
    elseif id == "baiping" then return findMultiColorInRegionFuzzy(0x3d4416, "-32|15|0x57682a,10|30|0x3d4614,46|20|0x4f4f1d,47|-7|0x445223,328|134|0x786544", 90, 257, 197, 877, 556, { orient = 2 })
    --是否包满
    elseif id == "baoman" then return findMultiColorInRegionFuzzy(0xdd260c, "15|16|0xbe872b,8|27|0xa68560,23|13|0xa19477,20|30|0x5e411a", 90, 1077, 187, 1194, 279, { orient = 2 })
    --关闭按钮
    elseif id == "CloseBtn" then return findMultiColorInRegionFuzzy(0xcdbc67, "7|1|0xdec389,4|6|0xe0cf7a,4|15|0x800203", 90, 0, 0, 1280, 720, { orient = 2 })
    --背包按钮
    elseif id == "Btn_BeiBao" then return findMultiColorInRegionFuzzy(0x885d1d, "10|2|0xb49251,30|5|0x342302,3|19|0xb5947c,23|26|0x3f1900,7|27|0x96652b", 90, 0, 0, 1280, 720, { orient = 1 })
    --元宝
    elseif id == "YuanBao" then return findMultiColorInRegionFuzzy(0x825c17, "16|2|0xcc9922,27|2|0x8d6b22,7|11|0xbd961b,21|12|0x58340e", 90, 0, 0, 1280, 720, { orient = 1 })
    --经验
    elseif id == "JingYan" then return  findMultiColorInRegionFuzzy(0x874321, "3|4|0x56a94b,12|0|0x112222,16|7|0x9f8f76", 90, 0, 0, 1280, 720, { orient = 1 })
    --元宝2
    elseif id == "YuanBao2" then return  findMultiColorInRegionFuzzy(0xcdccbf, "5|1|0xd1ab16,15|5|0x713e1c,7|15|0xf1d969", 90, 0, 0, 1280, 720, { orient = 1 })
    end
    
    
    
    
    toast("找色ID未定义: "..id)
    return -1,-1
 
end

return SearchColorHSZ