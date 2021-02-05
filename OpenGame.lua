Tools = require("Tools")
Debug = require("Debug")
OpenGame = {}
local finish = false

-- 点击游戏Icon
local function ClickGame()
    mSleep(3000)
x,y = findMultiColorInRegionFuzzy(0xd52521, "8|64|0xffffff,65|10|0x00a7ff", 90, 0, 0, 1334, 750, { orient = 2 })
Debug.Log(x)
    if x ~= -1 then
        Tools.click(x , y)
        Debug.Log("找到游戏")
        return true
        else
            Debug.Log("主菜单没有找到游戏")
            return false
    end
end

function OpenGame.openGame()
    mSleep(1000)
    Tools.home()
    -- 点击游戏Icon
    repeat
         mSleep(1000)
        Finish = ClickGame()
    until( Finish )
    
    
    finish = true
    return finish
end

-- keycode.home()

















return OpenGame