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
    
    ::BeginGame::
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
    -- 移动至
    
    ::MoveToMap::
    repeat
        --Finish = MoveTo.moveTo(UI.SelectMap())
        Finish = MoveTo.moveTo("暗黑魔窟1")
    until( Finish )
    Debug.Log("移动成功，移动至：")
 
    mSleep(3000)
    
     --打开自动
    Tools.click(1160,314)
    
    mSleep(1000)
    --循环清理背包
    while (true) do
        
        ClickSuit.CloseBtn()
        
        local x ,y = SearchColor.search("Btn_BeiBao")
        if x == -1 then
           x ,y = SearchColor.search("baoman")
            if x == -1 then
               goto BeginGame
            end
        end
        
        Fight.CheckBag()
        mSleep(UI.BeiBao_TIME)

    end
    
    
end


return Global