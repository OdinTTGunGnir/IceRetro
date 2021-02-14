SearchColor = {}
UI = require("UI")
SearchColorHSZ = require("SearchColorHSZ")
SearchColorIPHONE6 = require("SearchColorIPHONE6")

function SearchColor.search(id) 
    result = false
    nLog(id)
    if UI.GetDevice == "红手指" then
        result = true
        return SearchColorHSZ.search(id)
    elseif  UI.GetDevice == "Iphone6" then
        result = true
        return SearchColorIPHONE6.search(id)
    end
    
    
    return result
end



return SearchColor