Tools = require("Tools")
Debug = require("Debug")
SearchColorHSZ = require("SearchColorHSZ")
SearchColor = require("SearchColor")
OpenGame = {}
local finish = false

local function ClickGameIcon()
    -- init(0)
    -- ::icon1::
    -- nLog("寻找游戏icon")
    -- local x,y = SearchColor.search("OpenGame")
    -- if x==-1  then
    --     nLog("未找到游戏icon")
    --     goto icon1
    -- end
    -- Tools.click(x,y)
    -- init(1)
    -- nLog("找到游戏icon")
    -- return true
end
local function IntoGame()
    mSleep(2000)
    
    --进入游戏  
    nLog("执行进入游戏")
    local x ,y = SearchColor.search("Btn_Player") 
    if x ~= -1 then
        return true
    else 
        init(0)
        local x,y = SearchColor.search("OpenGame")
        if x~=-1  then
            Tools.click(x,y)
        end
        init(1)
        mSleep(500)
    
        --关闭更新提示
        local x ,y = SearchColor.search("CloseNotice") 
        if x ~= -1 then
            Tools.click(x,y)
        end
        --登陆
        local x ,y = SearchColor.search("Login") 
        if x ~= -1 then
            Tools.click(x,y)
        end
        --开始游戏   
        local x ,y = SearchColor.search("StartGame") 
        if x ~= -1 then
            Tools.click(x,y)
        end
        --选择角色 
        
        local x ,y = SearchColor.search("SelectPlayer") 
        if x ~= -1 then
            Tools.click(x,y)
        end
        --进入游戏  
    
        local x ,y = SearchColor.search("Enter") 
        if x ~= -1 then
            Tools.click(x,y)
        end
    
        --进入游戏  
     
        local x ,y = SearchColor.search("Btn_Player") 
        if x ~= -1 then
            return true
        end
        return false
    end
     
    
 
end
process = {ClickGameIcon,IntoGame}

function OpenGame.openGame()
    mSleep(1000)
    --Tools.home()
  
    for key, val in ipairs(process) do
        mSleep(1000)
        ::s1::
        mSleep(3000)
        Finish = val()
        if Finish == false then
            goto s1
        end
    end
    
    
    return Finish
end




return OpenGame