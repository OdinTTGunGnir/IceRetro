Global = {}

Global.Debug = require("Debug")

Global.OpenGame = require("OpenGame")
Global.GameConfig = require("GameConfig")
MoveTo = require("MoveTo")

UI = require("UI")
SearchColor = require("SearchColor")
ClickSuit = require("ClickSuit")
Fight = require("Fight")
FindFont = require("FindFont")
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
    --定义变量和计算比例
    local BTime,MTime,index
    BTime= 30
    MTime= 30
    if UI.BeiBao_TIME()=="" then
        BTime= 30
    end
    if UI.GuaJiShiJian()=="" then
        MTime= 30
    end
    index = 1/(MTime*60)
    
    
    mSleep(5000)
    -- -- 开始游戏配置
    -- repeat
    --     Finish = Global.GameConfig.gameConfig()
    -- until( Finish )
    -- Debug.Log("游戏配置成功")
    -- 移动至
    ClickSuit.CloseBtn()
    
    ::MoveToMap::
    repeat
        nLog("前往地图")
        Finish = MoveTo.moveTo(UI.SelectMap())
        --  Finish = MoveTo.moveTo("天空之城（地）")
    until( Finish )
    --Debug.Log("移动成功，移动至："+UI.SelectMap())
    MapIndex_Furture = 1
    MapIndex_Current = 1
    mSleep(5000)
    ::Auto::
    --打开自动
    Tools.click(1160,314)
    
    
    mSleep(10000)
    
    --循环清理背包
    while (true) do
        
        ClickSuit.CloseBtn()
        nLog("循环")
        local x ,y = SearchColor.search("Btn_Player")
        if x == -1 then
            goto BeginGame
        end
        local x,y = FindFont.findFont(UI.SelectMap()[MapIndex_Current])
        nLog(x)
        nLog(UI.SelectMap()[MapIndex_Current])
        if x == -1 then
            goto MoveToMap
        end
        
        local x3,y3 = SearchColor.search("ZiDong")
        if x3 == -1 then
            goto Auto
        end
        --清理背包
        Fight.CheckBag()
        --是否切换地图
        if UI.GuaJiCheck()=="挂机" then 
            if UI.MapCount()>=2 then
                MapIndex_Furture  = MapIndex_Furture + (index*BTime)
                if (MapIndex_Furture - MapIndex_Current)>=1 then
                    MapIndex_Current = MapIndex_Furture
                    if(MapIndex_Furture ==UI.MapCount()) then
                        MapIndex_Furture = 1
                        MapIndex_Current = 1
                    end
                    goto MoveToMap
                end
                if MapIndex_Furture >UI.MapCount()+1 then
            
                end
            end
        end
        --mSleep(UI.BeiBao_TIME() * 1000)
        --检查回城石
        if UI.BuyHuichengCheck() then
            local x,y = SearchColor.search("huicheng")
            if x ~= -1 then
                
            else    
                mSleep(300)
                Tools.click(911,672)
                mSleep(500)
                Tools.click(507,131)
                mSleep(600)
                Tools.click(994,490)
                mSleep(700)
                Tools.click(440,424)
                mSleep(800)
                ClickSuit.CloseBtn()
            end
        end    
        mSleep(BTime * 1000)

    end
    
    
    
    
end


return Global