SearchColor = {}

function SearchColor.search(id,x1,y1)
    
     local flag
    --判断id
    --打开游戏
    if id=="OpenGame" then
       x,y = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 })
    end
    --关闭开服公告
    if id=="CloseNotice" then
      x,y = findMultiColorInRegionFuzzy(0x970e0e, "-13|15|0x8e0606,-13|31|0x7b0303,0|34|0x7f0303,6|20|0x820b0b,-2|21|0xddcc77", 90, 1051, 87, 1146, 166, { orient = 2 })
    end
    --登陆账号
    if id=="Login" then
      x,y = findMultiColorInRegionFuzzy(0xd19edf, "17|1|0xd19edf,43|1|0xffffff,102|4|0xffffff,149|2|0xd19edf", 90, 679, 479, 956, 629, { orient = 2 })
    end
    --登陆账号
    if id=="StartGame" then
    x,y = findMultiColorInRegionFuzzy(0x6b4a10, "27|0|0xc0ac87,52|0|0x664411,66|-3|0xbeb579,84|-3|0xefe4aa", 90, 493, 385, 806, 522, { orient = 2 })
    end
    --选择角色
    if id=="SelectPlayer" then
    x,y = findMultiColorInRegionFuzzy(0xc6c6b6, "10|0|0xb5b5b5,17|0|0xc4c4b3", 90, 566, 514, 712, 604, { orient = 2 })
    end
    --确定进入
    if id=="Enter" then
    x,y = findMultiColorInRegionFuzzy(0x463e3e, "9|-1|0x665d55,18|-2|0x474725,20|-2|0xdcdca9,22|-2|0xb7b785,33|-7|0x57574a", 90, 515, 511, 770, 601, { orient = 2 })
    end
    --角色按钮
    if id=="Btn_Player" then
    x,y = findMultiColorInRegionFuzzy(0x7e560b, "-5|9|0xa26b5a,-4|17|0x513d2c,2|30|0xac7c69,2|39|0x211d1c,-18|39|0x121212", 90, 1176, 194, 1277, 279, { orient = 2 })
    end
    --关闭地图
    if id=="CloseMap" then
    x,y = findMultiColorInRegionFuzzy(0x82000b, "4|-1|0x94090a,4|11|0xe3d27d", 90, 1000, 78, 1133, 172, { orient = 2 })
    end
    --盟重老兵
    if id=="laobing" then
    x,y = findMultiColorInRegionFuzzy(0x77cc22, "3|1|0x86bf42,-1|5|0x52a714", 90, 889, 433, 912, 460, { orient = 2 })
    end
    --孤独之地
    if id=="gudu" then
    x,y = findMultiColorInRegionFuzzy(0x24a10d, "7|1|0x32a921,12|1|0x219811", 90, 550, 498, 573, 520, { orient = 2 })
    end
    --回城
    if id=="huicheng" then
    x,y = findMultiColorInRegionFuzzy(0xd31ac2, "-8|5|0xd707bf,1|15|0x251414,15|3|0x706868", 90, 513, 546, 898, 632, { orient = 2 })
    end
    --地图是否白屏
    if id=="baiping" then
    x,y = findMultiColorInRegionFuzzy(0x3d4416, "-32|15|0x57682a,10|30|0x3d4614,46|20|0x4f4f1d,47|-7|0x445223,328|134|0x786544", 90, 257, 197, 877, 556, { orient = 2 })
    end
    --是否包满
    if id=="baoman" then
    x,y = findMultiColorInRegionFuzzy(0xdd260c, "15|16|0xbe872b,8|27|0xa68560,23|13|0xa19477,20|30|0x5e411a", 90, 1077, 187, 1194, 279, { orient = 2 })
    end
    --点击事件
    local x1 = x1 or x
    local y1 = y1 or y
	
    if x1==0 or y1==0 then
        if x ~= -1 and y ~= -1 then
            flag = true
        else
            flag = false
        end
    else
        if x ~= -1 and y ~= -1 then
            --tap(x1,y1)
            mSleep(1000)
            nLog(id)
            flag = true
        else
            nLog("undefined")
            mSleep(1000) 
            flag = false
        end
    end
    
    return flag,x1,y1
end

return SearchColor