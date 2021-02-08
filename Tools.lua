Tools = {}

-- 点击
function Tools.click(x , y , times , interval)
    mSleep(500)
    local i = 0
    if interval == nil then
        interval = 100
    end
    if times == nil then
        times = 1
    end
    
    while (i < times) do
        i = i + 1
        touchDown(x - 5,y - 5)
        mSleep(interval)
        touchUp(x - 5,y - 5)
    end
    mSleep(1000)
end


-- 返回主菜单
function Tools.home()
        pressHomeKey(0)
    mSleep(50)
    pressHomeKey(1)
end

--找图框架
function 找色框架(id,x1,y1)
    local 启动
    --判断id
    if id=="打开app" then
        x,y = findMultiColorInRegionFuzzy(0xf8c986, "47|-13|0xf28b61,89|-9|0xfcae91,134|-16|0xf6c091", 90, 71, 1015, 300, 1199, { orient = 2 })
    end
	
    if id=="登陆" then
        x,y = findMultiColorInRegionFuzzy(0xf2c939, "39|4|0xf3c73d,66|1|0xc23d23,95|3|0xa95730,152|3|0xc13b22,246|2|0xc44024,510|-152|0x2c2f5a", 90, 428, 1346, 807, 1474, { orient = 2 })
    end
	
    if id=="领取离线奖励" then
        x,y = findMultiColorInRegionFuzzy(0x8e1c2d, "51|4|0x9b1e30,76|0|0xffedf0,109|-2|0x981c2f,144|-7|0xfdeaed,172|-1|0x901b2c", 90, 446, 1403, 795, 1505, { orient = 2 })
    end
    
    if id=="日常" then
        x,y = findMultiColorInRegionFuzzy(0xffffba, "14|8|0xf3dc8a,12|14|0xdec254,19|19|0xd6b744,22|8|0xf1e48b,12|-23|0xebdc82,-1|-23|0xebdf84", 90, 4, 826, 164, 992, { orient = 2 })
    
    end
    
    if id=="背包" then
         x,y = findMultiColorInRegionFuzzy(0xddad37, "21|-4|0xf39541,38|-3|0xe16139,54|-1|0xa4273e,31|-10|0xf2853d,17|-18|0xf5ad42", 90, 3, 531, 155, 681, { orient = 2 })
    end
    
    
    --点击事件
    local x1 = x1 or x
    local y1 = y1 or y
	
    if x1==0 or y1==0 then
        if x ~= -1 and y ~= -1 then
            启动 = true
        else
            启动 = false
        end
    else
        if x ~= -1 and y ~= -1 then
            tap(x1,y1)
            mSleep(1000)
            nLog(id)
            启动 = true
        else
            nLog("未知界面")
            mSleep(1000) 
            启动 = false
        end
    end
end

function 登陆()
    while (true) do
        找色("打开app",x1,y1)
        找色("登陆",x1,y1)
        找色("领取离线奖励",x1,y1)
    end
end

return Tools