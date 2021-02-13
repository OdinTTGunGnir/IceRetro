SerchColor = {}
Global = require("Global")
SearchColorHSZ = require("SearchColorHSZ")

function SerchColor.search(id) 
    result = false
    if Global.Device == "红手指" then
        return SearchColorHSZ.search(id)
    else if  Global.Device == "Iphone 6" then
        
        
        end
    end
    
    
    return result
end



return SerchColor