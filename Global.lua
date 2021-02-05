Global = {}

Global.OpenGame = require("OpenGame")
Global.Debug = require("Debug")
local Finish = false







function Global.Begin()
    
    -- 进入游戏游戏
    repeat
        Finish = Global.OpenGame.openGame()
    until( Finish )
    Debug.Log("进入游戏成功")
    
end





return Global