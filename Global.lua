Global = {}

Global.Debug = require("Debug")

Global.OpenGame = require("OpenGame")
Global.GameConfig = require("GameConfig")
MoveTo = require("MoveTo")

UI = require("UI")
SearchColor = require("SearchColor")
ClickSuit = require("ClickSuit")
Fight = require("Fight")

local Finish = false
Global.Device = UI.GetDevice()
local huichengflag = true


function Global.Begin()
    
    --进入游戏游戏
    repeat
        Finish = Global.OpenGame.openGame(Global.Device)--根据手机型号,进入游戏 hsz（红手指） 6（iphone6）
    until( Finish )
    Debug.Log("进入游戏成功")

    mSleep(5000)
    -- -- 开始游戏配置
    -- repeat
    --     Finish = Global.GameConfig.gameConfig()
    -- until( Finish )
    -- Debug.Log("游戏配置成功")
    ClickSuit.huicheng()
    -- 移动至
    repeat
        Finish = MoveTo.moveTo(UI.SelectMap())
    until( Finish )
    Debug.Log("移动成功，移动至：")
 
     --打开自动
        Tools.click(1160,314) 
    --循环清理背包
    while (true) do
        Fight.CheckBag()
    end
    
    
end


return Global