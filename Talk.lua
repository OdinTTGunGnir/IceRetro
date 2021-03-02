Talk = {}
UI = require("UI")
ClickSuit = require("ClickSuit")
--喊话
function Talk.HanHua()
    
   -- local num = tonumber(UI.HanHuaCiShu) 
    nLog(UI.HanHuaCiShu)
    for var=1,1 do
        --mSleep(UI.HanHuaJianGe)
        mSleep(1000)
        ClickSuit.CloseBtn()--关闭
        mSleep(500)
        Tools.click(739,677)--打开聊天框
        mSleep(2000)
        Tools.click(367,300)--选择世界频道
        mSleep(1000)
        Tools.click(581,566)--点击聊天内容框
        mSleep(1000)
        writePasteboard(UI.HanHuaNeiRong);--复制到剪贴板
        mSleep(500)
        
        
        -- touchDown(267,656)--长按聊天内容框
        -- mSleep(2000)
        -- Tools.click(67,668)--点击粘贴
        -- mSleep(500)
        -- Tools.click(1210,645)--点击确定
        -- mSleep(500)
        --Tools.click(916,564)--点击发送
        mSleep(500)
    end
end    

return Talk