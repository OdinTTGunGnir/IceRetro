Tools = require("Tools")
Debug = require("Debug")
SearchColorHSZ = require("SearchColorHSZ")
GameConfig = {}

local finish = false
local process = {}
local process_hsz = {}
--红手指config
-- local function ClickSetting_hsz()
--     local flag,x,y = SearchColorHSZ.search("OpenGame",x1,y1)
--     if flag  then
--         Tools.click(x,y)
--         return true
--     else
--         return false
--     end
-- end
-- process_hsz["ClickSetting_hsz"] = ClickSetting_hsz

-- local function SettingConfig_hsz()
--     ::Setting1::
--     mSleep(6000)
--     local flag,x,y = SearchColorHSZ.search("OpenGame",x1,y1)
--     if flag  then
--         Tools.click(x,y)
--     else
--         Debug.Log("没有找到关闭按钮")
--         goto Setting1
--         return false
--     end
--     return true
-- end
-- process_hsz["SettingConfig_hsz"] = SettingConfig_hsz




function GameConfig.gameConfig()
    mSleep(1000)
    Tools.home()
    
    for key, val in pairs(process_6) do
        Debug.Log(key)
        local OpenTimes = 0
        ::s1::
        OpenTimes = OpenTimes + 1
        mSleep(3000)
        Finish = val()
        if Finish == false then
            Debug.Log(key.."执行失败，正在重新执行")
            if OpenTimes > 5 then return Finish end
            goto s1
        end
    end
    return Finish
end

return GameConfig