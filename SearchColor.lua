SearchColor = {}
Global = require("Global")
SearchColorHSZ = require("SearchColorHSZ")
SearchColorIPHONE6 = require("SearchColorIPHONE6")

function SearchColor.search(id) 
    result = false
    nLog(id)
    if Global.Device == "红手指" then
        result = true
        -- return SearchColorHSZ.search(id)
    -- else if  Global.Device == "Iphone6" then
    --     result = true
    --     return SearchColorIPHONE6.search(id)
    -- end
    end
    
    
    return result
end



return SearchColor