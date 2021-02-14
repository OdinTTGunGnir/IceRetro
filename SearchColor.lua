SearchColor = {}
UI = require("UI")
SearchColorHSZ = require("SearchColorHSZ")
SearchColorIPHONE6 = require("SearchColorIPHONE6")

function SearchColor.search(id) 
    nLog(UI.GetDevice)
    if UI.GetDevice() == "红手指" then
        return SearchColorHSZ.search(id)
    elseif  UI.GetDevice() == "Iphone6" then
        return SearchColorIPHONE6.search(id)
    end
    return -1,-1
    
end



return SearchColor