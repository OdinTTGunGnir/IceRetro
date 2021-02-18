FindFontHSZ = {}
Debug = require("Debug")

function FindFontHSZ.findFont(id)
    if id == "黑暗魔窟一层" then return tsFindText(index, "黑暗魔窟一层",  1092, 3, 1274, 30, "C2BAAF , 242321", 90) end 
    
    Debug.log("找字ID未定义")
    return -1,-1
end



return FindFontHSZ