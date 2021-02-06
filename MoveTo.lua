Tools = require("Tools")
Debug = require("Debug")
MoveTo = {}

local finish = false
local process = {}

function MoveTo.moveTo()
    mSleep(1000)
    Tools.home()
    
    for key, val in pairs(process) do
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

return MoveTo