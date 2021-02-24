Fight = {}
Tools = require("Tools")
Debug = require("Debug")
ClickSuit = require("ClickSuit")
SearchColor = require("SearchColor")

function OpenBag()
    mSleep(1000)
    ClickSuit.CloseBtn()
    
    local x ,y = SearchColor.search("Btn_BeiBao")
    if x ~= -1 then
       Tools.click(x,y)
    end
    mSleep(1000)
end
function HuiShou()
    Tools.click(1027,530)
    mSleep(500)
end
local function yuanbaoANDjingyan()

    repeat
        mSleep(700)
        local x,y  = SearchColor.search("YanBao")
        if x ~= -1 then 
            Tools.click(x,y,2)
        end
        local x1,y1  = SearchColor.search("JingYan")
        if x1 ~= -1 then 
            Tools.click(x1,y1,2)
        end
    until(( x == -1 ) and  ( x1 == -1 ))
end

function Fight.CheckBag()
   
    OpenBag()
    HuiShou()
    yuanbaoANDjingyan()
    
end    


    



return Fight