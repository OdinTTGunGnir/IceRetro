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
    x,y = findMultiColorInRegionFuzzy(0x960e0e, "20|2|0x8a0707,11|19|0xddcc77,10|35|0x7d0202", 90, 996, 28, 1277, 300, { orient = 2 })
    if x ~= -1 then
        Tools.click(x , y)
        else
            Debug.Log("没有找到关闭按钮")
            return false
    end
    mSleep(2000)
    x,y = findMultiColorInRegionFuzzy(0x82611f, "3|25|0x65441a,32|2|0xfff3d1,137|12|0xe9e08e", 90, 511, 417, 827, 545, { orient = 2 })
    if x ~= -1 then
        Tools.click(x , y)
        else
            Debug.Log("没有找到开始游戏按钮")
            return false
    end
    mSleep(2000)
    x,y = findMultiColorInRegionFuzzy(0x5c5347, "13|3|0xfcda1f,24|6|0x000000,51|5|0xf2d41b,79|5|0x070401", 90, 554, 527, 791, 699, { orient = 2 })
    if x ~= -1 then
    Tools.click(x , y)
            else
                Debug.Log("没有找到角色界面的“进入游戏”按钮")
                return false
    end
end
process["IntoGame"] = IntoGame


function OpenGame.openGame()
    mSleep(1000)
    Tools.home()
    
    for key, val in pairs(process) do
        Debug.Log(key)
        ::s1::
        mSleep(3000)
        Finish = val()
        if Finish == false then
            Debug.Log(key.."执行失败，正在重新执行")
            goto s1
        end
    end

    -- 点击游戏Icon
    -- repeat
    --      mSleep(1000)
    --     Finish = ClickGame()
    -- until( Finish )
    
    
    finish = true
    return finish
end

-- keycode.home()

















return OpenGame