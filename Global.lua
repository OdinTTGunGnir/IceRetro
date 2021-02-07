Global = {}

Global.Debug = require("Debug")

Global.OpenGame = require("OpenGame")
Global.GameConfig = require("GameConfig")
Global.MoveTo = require("MoveTo")


local Finish = false







function Global.Begin()
    
    -- 进入游戏游戏
    repeat
        Finish = Global.OpenGame.openGame()
    until( Finish )
    Debug.Log("进入游戏成功")
    
    mSleep(5000)
    -- 开始游戏配置
    repeat
        Finish = Global.GameConfig.gameConfig()
    until( Finish )
    Debug.Log("游戏配置成功")
    
    -- 移动
    repeat
        Finish = Global.MoveTo.moveTo()
    until( Finish )
    Debug.Log("移动成功")
    
end





return Global