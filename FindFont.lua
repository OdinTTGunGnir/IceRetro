FindFont = {}
UI = require("UI")
FindFontHSZ = require("FindFontHSZ")
FindFontIPHONE6 = require("FindFontIPHONE6")

function FindFont.findFont(id) 
    if UI.GetDevice() == "红手指" then
        local x,y =FindFontHSZ.findFont(id)
        return x,y
    elseif  UI.GetDevice() == "Iphone6" then
        return FindFontIPHONE6.findFont(id)
    end
    nLog("未找到识色"..id)
    return -1,-1
    
end



return FindFont