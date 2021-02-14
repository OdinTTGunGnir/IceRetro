SearchColor = {}
UI = require("UI")
SearchColorHSZ = require("SearchColorHSZ")
SearchColorIPHONE6 = require("SearchColorIPHONE6")

function SearchColor.search(id) 
    if UI.GetDevice() == "红手指" then
        local x,y =SearchColorHSZ.search(id)
        return x,y
    elseif  UI.GetDevice() == "Iphone6" then
        return SearchColorIPHONE6.search(id)
    end
    nLog("未找到识色"..id)
    return -1,-1
    
end



return SearchColor