ClickSuit = {}
Tools = require("Tools")
SearchColor = require("SearchColor")

function ClickSuit.huicheng()
    
    -- 循环查找回城石
        while huichengflag do
            local x,y = SearchColor.search("huicheng")
            if x ~= -1 then
                Tools.click(x,y)
                huichengflag = false
            else    
                Debug.Log("没找到回城")
            end
        end
        mSleep(3000)
end





return ClickSuit