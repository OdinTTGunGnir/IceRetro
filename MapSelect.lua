MapSelect = {}
Tools = require("Tools")
Debug = require("Debug")
Fight = require("Fight")
function ClickMap()
    Tools.click(1160,80)
end
function CloseMap()
    local flag,x,y = SearchColorHSZ.search("CloseMap",x1,y1)
    if flag  then
        Tools.click(x,y)
    else
        Debug.Log("没有找到关闭地图")
    end 
end 
--前往冰雪之城
function MapSelect.GoTOBingxue()
    --打开地图
    ClickMap()
    --循环查找是否白屏
    local baipingflag = false
    while (baipingflag ~= true) do
        local flag,x,y = SearchColorHSZ.search("baiping",x1,y1)
        if flag then
            baipingflag = true
        else    
            Debug.Log("地图白屏")
        end
    end
    mSleep(1000)
    --前往老兵附近
    Tools.click(470,314) 
    mSleep(2000)
    --关闭地图
    CloseMap()
    --循环查找老兵，避免被人物遮挡
    local laobingflag = false
    while (laobingflag ~= true) do
        local flag,x,y = SearchColorHSZ.search("laobing",x1,y1)
        if flag then
            Tools.click(x,y)
            laobingflag = true
        else    
            Debug.Log("NPC被遮挡")
        end
    end
    mSleep(1000)
    --选择冰雪之城
    Tools.click(313,260) 
    mSleep(1000)
    --前往冰雪之城
    Tools.click(920,500) 
    mSleep(5000)
end    
function MapSelect.GpToGudu(index)
    --打开地图
        ClickMap()
        mSleep(2000)
        --前往孤独之地附近
        Tools.click(766,268) 
        mSleep(2000)
        --关闭地图
        CloseMap()
        --循环查找孤独之地
        local guduflag = false
        while (guduflag ~= true) do
            local flag,x,y = SearchColorHSZ.search("gudu",x1,y1)
            if flag then
                Tools.click(x,y)
                guduflag = true
            else    
                Debug.Log("NPC被遮挡")
            end
        end
        mSleep(1000)
        --选择孤独
        if index==1 then
            Tools.click(310,152) 
        elseif index==2 then
            Tools.click(310,208)
        elseif index==3 then
            Tools.click(310,260) 
        elseif index==4 then
            Tools.click(310,316) 
        end
        mSleep(1000)
        --前往孤独
        Tools.click(920,500) 
        mSleep(5000)
end
function MapSelect.GoToMap(name)
    if name == "孤独之地1" then
        --前往冰雪之城
        MapSelect.GoTOBingxue()
        --前往孤独之地
        MapSelect.GpToGudu(1)
    elseif name == "孤独之地2" then
        --前往冰雪之城
        MapSelect.GoTOBingxue()
        --前往孤独之地
        MapSelect.GpToGudu(2)
    elseif name == "孤独之地3" then
        --前往冰雪之城
        MapSelect.GoTOBingxue()
        --前往孤独之地
        MapSelect.GpToGudu(3)
    elseif name == "孤独之地4" then
        --前往冰雪之城
        MapSelect.GoTOBingxue()
        --前往孤独之地
        MapSelect.GpToGudu(4)
    end
    
    
    --打开自动
        Tools.click(1160,314) 
    --循环清理背包
    while (true) do
        Fight.CheckBag()
    end
end

return MapSelect