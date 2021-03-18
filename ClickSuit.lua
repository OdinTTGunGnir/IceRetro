ClickSuit = {}
Tools = require("Tools")
SearchColor = require("SearchColor")

function ClickSuit.huicheng()
    huichengflag = true
    -- 循环查找回城石
        while huichengflag do
            
            mSleep(3000)
            
            local x,y = SearchColor.search("huicheng")
            if x ~= -1 then
                Tools.click(x,y)
                huichengflag = false
            else    
                Debug.Log("没找到回城")
                mSleep(300)
                Tools.click(911,672)
                mSleep(500)
                Tools.click(507,131)
                mSleep(600)
                Tools.click(994,490)
                mSleep(700)
                Tools.click(742,424)
                mSleep(800)
                ClickSuit.CloseBtn()
            end
            
        end
        
end

function ClickSuit.CloseBtn()
   
    
    repeat
        mSleep(1000)
        local x,y  = SearchColor.search("CloseBtn")
        if x ~= -1 then 
            Tools.click(x,y)
        end
    until( x == -1 )
    
end



return ClickSuit