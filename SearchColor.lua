SerchColor = {}
Global = require("Global")
SearchColorHSZ = require("SearchColorHSZ")
SearchColorIPHONE6 = require("SearchColorIPHONE6")

function SerchColor.search(id) 
    result = false
    if Global.Device == "红手指" then return SearchColorHSZ.search(id)
    else if  Global.Device == "Iphone 6" then return SearchColorIPHONE6.search(id)
    end end
    
    
    return result
end



return SerchColor