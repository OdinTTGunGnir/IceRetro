SearchColor = {}

function SearchColor.search(id,x1,y1)
     local flag
    --判断id
    if id=="OpenGame" then
       x,y = findMultiColorInRegionFuzzy(0x0adaff, "10|-4|0x1291ff,22|0|0xffffff,32|-3|0x28a3ff,51|-3|0x009aff", 90, 16, 69, 717, 655, { orient = 2 })
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