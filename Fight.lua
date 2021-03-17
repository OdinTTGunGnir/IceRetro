Fight = {}
Tools = require("Tools")
Debug = require("Debug")
ClickSuit = require("ClickSuit")
SearchColor = require("SearchColor")
UI = require("UI")

function OpenBag()
    mSleep(1000)
    ClickSuit.CloseBtn()
    
    local x ,y = SearchColor.search("Btn_Player")
    if x ~= -1 then
       Tools.click(x - 90,y)
    end
    mSleep(1000)
end
function HuiShou()
    mSleep(1500)
    Tools.click(692,472)
    mSleep(1500)
    Tools.click(1027,530)
    mSleep(500)
end
local function yuanbaoANDjingyan()
    --元宝
    repeat
        mSleep(700)
        local x,y  = SearchColor.search("YuanBao")
        if x ~= -1 then 
            Tools.click(x,y,2)
        end
        local x2,y2  = SearchColor.search("YuanBao2")
        if x2 ~= -1 then 
            Tools.click(x2,y2,2)
        end
    until(( x == -1 ) and  ( x2 == -1 ))
    --经验
    repeat 
        local x1,y1
        if UI.JinYanCheck() then
            x1,y1  = SearchColor.search("JingYan")
            if x1 ~= -1 then 
                Tools.click(x1,y1,2)
            end
        else   
            Tools.click(1243,102)
            mSleep(400)
            Tools.click(814,480)
            mSleep(500)
            x1,y1  = SearchColor.search("JingYan")
             if x1 ~= -1 then 
                Tools.click(x1,y1,2)
            end
        end
    until( x1 == -1)    
end

function Fight.CheckBag()
   
    OpenBag()
    HuiShou()
    yuanbaoANDjingyan()
    
    ClickSuit.CloseBtn()
end    


    



return Fight