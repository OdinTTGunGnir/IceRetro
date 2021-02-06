Tools = require("Tools")
Debug = require("Debug")
OpenGame = {}
local finish = false
local process = {}
-- 点击游戏Icon
local function ClickGame()
    x,y = findMultiColorInRegionFuzzy(0xd52521, "8|64|0xffffff,65|10|0x00a7ff", 90, 0, 0, 1334, 750, { orient = 2 })
    if x ~= -1 then
        Tools.click(x , y)
        return true
        else
            return false
    end
end
process["ClickGame"] = ClickGame
local function IntoGame()
    ::IntoGame1::
    mSleep(6000)
    x,y = findMultiColorInRegionFuzzy(0x960e0e, "20|2|0x8a0707,11|19|0xddcc77,10|35|0x7d0202", 90, 996, 28, 1277, 300, { orient = 2 })
    if x ~= -1 then
        Tools.click(x , y)
        else
            Debug.Log("没有找到关闭按钮")
            goto IntoGame1
            return false
    end
    ::IntoGame2::
    mSleep(2000)
    x,y = findMultiColorInRegionFuzzy(0x82611f, "3|25|0x65441a,32|2|0xfff3d1,137|12|0xe9e08e", 90, 511, 417, 827, 545, { orient = 2 })
    if x ~= -1 then
        Tools.click(x , y)
        else
            Debug.Log("没有找到开始游戏按钮")
            goto IntoGame2
            return false
    end
    ::IntoGame3::
    mSleep(10000)
     x,y = findMultiColorInRegionFuzzy(0xdbcaa8, "17|3|0x040303,29|3|0xcbba98,44|5|0x000000,64|-7|0xc3b29b", 90, 583, 533, 754, 662, { orient = 2 })
    if x ~= -1 then
    Tools.click(x , y - 50)
        else
            Debug.Log("没有找到角色界面的“进入游戏”按钮")
            goto IntoGame3
            return false
    end
    ::IntoGame4::
    mSleep(2000)
    x,y = findMultiColorInRegionFuzzy(0xcebd8a, "-2|12|0xd0d0a1,18|9|0x5f5454,15|9|0x171717,38|-16|0x888888,39|6|0x4f4f43", 90, 551, 527, 770, 636, { orient = 2 })
    if x ~= -1 then
    Tools.click(x , y)
        else
            Debug.Log("没有找到“确认”按钮")
            goto IntoGame4
            return false
    end
    return true
end
process["IntoGame"] = IntoGame


function OpenGame.openGame()
    mSleep(1000)
    Tools.home()
    
    for key, val in pairs(process) do
        Debug.Log(key)
        local OpenTimes = 0
        ::s1::
        OpenTimes = OpenTimes + 1
        mSleep(3000)
        Finish = val()
        if Finish == false then
            Debug.Log(key.."执行失败，正在重新执行")
            if OpenTimes > 5 then return Finish end
            goto s1
        end
    end
    return Finish
end

-- keycode.home()

















return OpenGame