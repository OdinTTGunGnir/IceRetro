Tools = require("Tools")
Debug = require("Debug")
SearchColorHSZ = require("SearchColorHSZ")
SearchColor = require("SearchColor")
OpenGame = {}
local finish = false
-- local process = {}
-- local process_hsz = {}
-- local SuccessFind = {0,0,0,0,0,0,0}

--iphone6和iphone6s
-- 点击游戏Icon
-- local function ClickGame()
--     x,y = findMultiColorInRegionFuzzy(0xd52521, "8|64|0xffffff,65|10|0x00a7ff", 90, 0, 0, 1334, 750, { orient = 2 })
--     if x ~= -1 then
--         Tools.click(x , y)
--         return true
--     else
--         return false
--     end
    
-- end
-- process["ClickGame"] = ClickGame
-- local function IntoGame()
--     ::IntoGame1::
--     mSleep(2000)
--     -- 没有找到关闭按钮
--     x,y = findMultiColorInRegionFuzzy(0x960e0e, "20|2|0x8a0707,11|19|0xddcc77,10|35|0x7d0202", 90, 996, 28, 1277, 300, { orient = 2 })
--     if x ~= -1 then
--         Tools.click(x , y)
--     else
--         Debug.Log("没有找到关闭按钮")
--         return false
--     end
--     ::IntoGame2::
--     -- 没有找到开始游戏按钮
--     x,y = findMultiColorInRegionFuzzy(0x82611f, "3|25|0x65441a,32|2|0xfff3d1,137|12|0xe9e08e", 90, 511, 417, 827, 545, { orient = 2 })
--     if x ~= -1 then
--         Tools.click(x , y)
--     else
--         Debug.Log("没有找到开始游戏按钮")
--         goto IntoGame2
--         return false
--     end
--     ::IntoGame3::
--     mSleep(10000)
--     -- 没有找到角色界面的“进入游戏”按钮
--     x,y = findMultiColorInRegionFuzzy(0xdbcaa8, "17|3|0x040303,29|3|0xcbba98,44|5|0x000000,64|-7|0xc3b29b", 90, 583, 533, 754, 662, { orient = 2 })
--     if x ~= -1 then
--         Tools.click(x , y - 50)
--     else
--         Debug.Log("没有找到角色界面的“进入游戏”按钮")
--         goto IntoGame3
--         return false
--     end
--     -- 没有找到“确认”按钮
--     x,y = findMultiColorInRegionFuzzy(0xcebd8a, "-2|12|0xd0d0a1,18|9|0x5f5454,15|9|0x171717,38|-16|0x888888,39|6|0x4f4f43", 90, 551, 527, 770, 636, { orient = 2 })
--     if x ~= -1 then
--         Tools.click(x , y)
--     else
--     end
--     return true
-- end
-- process["IntoGame"] = IntoGame

--红手指
local function ClickGameIcon()
    -- Tools.click(426, 235)
    
    init(0)
    ::icon1::
    
    local x,y = SearchColor.search("OpenGame")
    if x~=-1  then
        Tools.click(x,y)
        goto icon1
    end
    init(1)
    return true
end
-- process["ClickGameIcon"] = ClickGameIcon
local function IntoGame()
     mSleep(2000)
     
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
    -- --关闭更新提示
    -- function CloseNotice()
    --     if SuccessFind[0] ~= 1 then
    --         mSleep(1000)
    --         local flag,x,y = SearchColorHSZ.search("CloseNotice",x1,y1)
    --         if flag  then
    --             Tools.click(x,y)
    --             SuccessFind[0] = 1
    --         else
    --             Debug.Log("没有找到关闭按钮")
    --         end
    --     end
    -- end
    -- --登陆
    -- function Login()
    --     if SuccessFind[1] ~= 1 then
    --         mSleep(1000)
    --         local flag,x,y = SearchColorHSZ.search("Login",x1,y1)
    --         if flag  then
    --             Tools.click(x,y)
    --             SuccessFind[1] = 1
    --         else
    --             Debug.Log("没有找到登陆按钮")
    --         end
    --     end
    -- end
    -- --开始游戏
    -- function StartGame()
    --     if SuccessFind[2] ~= 1 then
    --         mSleep(1000)
    --         local flag,x,y = SearchColorHSZ.search("StartGame",x1,y1)
    --         if flag  then
    --             Tools.click(x,y)
    --             SuccessFind[2] = 1
    --         else
    --             Debug.Log("没有找到开始游戏按钮")
    --         end
    --     end
    -- end
    -- --选择角色
    -- function SelectPlayer()
    --     if SuccessFind[3] ~= 1 then
    --         mSleep(1000)
    --         local flag,x,y = SearchColorHSZ.search("SelectPlayer",x1,y1)
    --         if flag  then
    --             Tools.click(x,y)
    --             SuccessFind[3] = 1
    --         else
    --             Debug.Log("没有找到角色界面的“进入游戏”按钮")
    --         end
    --     end
    -- end
    -- --进入游戏
    -- function Enter()
    --     if SuccessFind[4] ~= 1 then
    --         mSleep(3000)
    --         local flag,x,y = SearchColorHSZ.search("Enter",x1,y1)
    --         if flag  then
    --             Tools.click(x,y)
    --             SuccessFind[4] = 1
    --         else
    --             Debug.Log("没有找到“确认”按钮")
    --         end
    --     end
    -- end
    -- CloseNotice()
    -- Login()
    -- StartGame()
    -- SelectPlayer()
    -- SelectPlayer()
    -- Enter()
end
process = {ClickGameIcon,IntoGame}

function OpenGame.openGame()
    mSleep(1000)
    --Tools.home()
  
    for key, val in ipairs(process) do
         mSleep(1000)
        ::s1::
            nLog(key)
            mSleep(3000)
            Finish = val()
            if Finish == false then
                goto s1
            end
    end
    
    
    -- if id=="6" then
    --     for key, val in pairs(process_6) do
    --         Debug.Log(key)
    --         local OpenTimes = 0
    --         ::s1::
    --         OpenTimes = OpenTimes + 1
    --         mSleep(3000)
    --         Finish = val()
    --         if Finish == false then
    --             Debug.Log(key.."执行失败，正在重新执行")
    --             if OpenTimes > 5 then return Finish end
    --             goto s1
    --         end
    --     end
    -- elseif id=="hsz" then
    --     while (Finish~=true) do
    --         local flag = SearchColorHSZ.search("Btn_Player",x1,y1)
    --         if flag  then
    --             Finish = true
    --             return Finish
    --         end
    --         for key, val in pairs(process_hsz) do
    --             Debug.Log(key)
    --             val()
    --         end
    --     end
    -- end
   
    return Finish
end

-- keycode.home()

















return OpenGame