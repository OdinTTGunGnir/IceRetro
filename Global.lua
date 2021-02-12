Global = {}

Global.Debug = require("Debug")

Global.OpenGame = require("OpenGame")
Global.GameConfig = require("GameConfig")
Global.MoveTo = require("MoveTo")

UI = require("UI")
SearchColorHSZ = require("SearchColorHSZ")


local Finish = false


function huicheng()
    --循环查找回城石
        local huichengflag = false
        while (huichengflag ~= true) do
            local flag,x,y = SearchColorHSZ.search("huicheng",x1,y1)
            if flag then
                Tools.click(x,y)
                huichengflag = true
            else    
                Debug.Log("没找到回城")
            end
        end
        mSleep(3000)
end




function Global.Begin()
    
    
    --进入游戏游戏
    repeat
        Finish = Global.OpenGame.openGame("hsz")--根据手机型号,进入游戏 hsz（红手指） 6（iphone6）
    until( Finish )
    Debug.Log("进入游戏成功")

    mSleep(5000)
    -- -- 开始游戏配置
    -- repeat
    --     Finish = Global.GameConfig.gameConfig()
    -- until( Finish )
    -- Debug.Log("游戏配置成功")
    
    -- -- 移动至
    -- repeat
    --     Finish = Global.MoveTo.moveTo()
    -- until( Finish )
    -- Debug.Log("移动成功，移动至：")
    huicheng()
    
    local select = UI.SelectUI()
    MapSelect.GoToMap(select)
    
     --打开自动
        Tools.click(1160,314) 
    --循环清理背包
    while (true) do
        Fight.CheckBag()
    end
    
    
end





return Global