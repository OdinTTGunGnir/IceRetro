FindFontHSZ = {}
Debug = require("Debug")

-- 注册字体库（一次就够）
local index = addTSOcrDict("Font.txt")

function FindFontHSZ.findFont(id)
    if id == "黑暗魔窟一层" then return tsFindText(index, "黑暗魔窟一层",  1092, 3, 1274, 30, "C2BAAF , 242321", 90)
    elseif id == "325,344" then return tsFindText(index, "325,344",1165,131,1276,169, "D9D1C7 , 5A5755", 90) 
        
    end 
    Debug.log("找字ID未定义")
    return -1,-1
end



return FindFontHSZ