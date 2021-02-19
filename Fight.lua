Fight = {}
Tools = require("Tools")
Debug = require("Debug")
ClickSuit = require("ClickSuit")
SearchColor = require("SearchColor")

function OpenBag()
    mSleep(1000)
    ClickSuit.CloseBtn()
    
    local x ,y = SearchColor.search("baoman")
    if x ~= -1 then
       Tools.click(x,y)
    --   goto Next
    end
    -- ::Next::
    Tools.click(1150,230)
    mSleep(1500)
end
function HuiShou()
    Tools.click(696,478)
    mSleep(500)
    Tools.click(1028,527)
    mSleep(500)
    Tools.click(1043,100)
    mSleep(500)
    Tools.click(832,100)
    mSleep(500)
end
function Fight.CheckBag()
   
    OpenBag()
    HuiShou()
     Tools.Timer(30)
end    




return Fight