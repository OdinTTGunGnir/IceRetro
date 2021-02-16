Tools = require("Tools")
Debug = require("Debug")
SearchColor = require("SearchColor")
MoveTo = {}

local finish = false
local process = {}


local function ClickMap()
    Tools.click(1160,80)
end
function CloseMap()
    local x,y = SearchColor.search("CloseMap")
    if x~=-1  then
        Tools.click(x,y)
    else
        Debug.Log("没有找到关闭地图")
    end 
end 
--前往冰雪之城
function MoveTo.GoTOBingxue()
    --打开地图
    ClickMap()
    --循环查找是否白屏
    local baipingflag = false
    while (baipingflag ~= true) do
        local x,y = SearchColor.search("baiping")
        if x~=-1 then
            baipingflag = true
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
        local x,y = SearchColor.search("laobing")
        if x ~= -1 then
            Tools.click(x,y)
            laobingflag = true
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
function MoveTo.GpToGudu(index)
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
            local x,y = SearchColor.search("gudu")
            if x ~= -1 then
                Tools.click(x,y)
                guduflag = true
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
function MoveTo.moveTo(name)
    if name == "孤独之地1" then
        --前往冰雪之城
        MoveTo.GoTOBingxue()
        --前往孤独之地
        MoveTo.GpToGudu(1)
    elseif name == "孤独之地2" then
        --前往冰雪之城
        MoveTo.GoTOBingxue()
        --前往孤独之地
        MoveTo.GpToGudu(2)
    elseif name == "孤独之地3" then
        --前往冰雪之城
        MoveTo.GoTOBingxue()
        --前往孤独之地
        MoveTo.GpToGudu(3)
    elseif name == "孤独之地4" then
        --前往冰雪之城
        MoveTo.GoTOBingxue()
        --前往孤独之地
        MoveTo.GpToGudu(4)
    end
    
    return true
end



return MoveTo