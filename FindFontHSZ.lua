FindFontHSZ = {}
Debug = require("Debug")

-- 注册字体库（一次就够）
local index = addTSOcrDict("Font.txt")


function FindFontHSZ.findFont(id)
    if id == "黑暗魔窟一层" then return tsFindText(index, "黑暗魔窟一层",  1092, 3, 1274, 30, "C2BAAF , 242321", 90)
    elseif id == "325,344" then return tsFindText(index, "325,344",1165,131,1276,169, "D9D1C7 , 5A5755", 90) 
    elseif id == "322,332" then return tsFindText(index, "322,332",1165,131,1276,169, "3A3835 , 3B3936", 90)  
    elseif id == "囚魔炼狱一层" then return tsFindText(index, "囚魔炼狱一层",1092, 3, 1274, 30, "E8E0D6 , 545250", 90)
    elseif id == "322,337" then return tsFindText(index, "322,337",1165,131,1276,169, "2A2A2A , 2B2B2B", 90)
    elseif id == "迷失地下城基层" then return tsFindText(index, "迷失地下城基层",1092, 3, 1274, 30, "2A2A2A , 2B2B2B", 90)
    elseif id == "322,325"  then return  tsFindText(index, "322,325",1170,131,1276,169, "504B45 , 514C46", 90)
    elseif id == "黄泉之路一层"  then return tsFindText(index, "黄泉之路一层",1092, 3, 1274, 30, "504B45 , 514C46", 90)
    elseif id == "血龙回廊"  then return tsFindText(index, "血龙回廊",1092, 3, 1274, 30, "504B45 , 514C46", 90)
    elseif id == "神秘峡谷一层"  then return tsFindText(index, "神秘峡谷一层",1092, 3, 1274, 30, "504B45 , 514C46", 90)
    elseif id == "313,339"  then return tsFindText(index, "313,339",1170,131,1276,169, "504B45 , 514C46", 90)
    elseif id == "天之域" then return tsFindText(index, "天之域",1092, 3, 1274, 30, "504B45 , 514C46", 90)
    elseif id == "地之域" then return tsFindText(index, "地之域",1092, 3, 1274, 30, "F6EDE2 , 444342", 90)
    elseif id == "海外仙宫" then return tsFindText(index, "海外仙宫",1092, 3, 1274, 30, "F6EDE2 , 444342", 90)
    elseif id == "310,339" then return tsFindText(index, "310,339",1170,131,1276,169, "3D3B37 , 3E3C38", 90)
    elseif id == "世外桃源" then return tsFindText(index, "世外桃源",1092, 3, 1274, 30, "F6EDE1 , 454342", 90)
    elseif id == "冰雪之城" then return tsFindText(index, "冰雪之城",1092, 3, 1274, 30, "F3EADF , 484745", 90)
    elseif id == "221,76" then return  tsFindText(index, "221,76",1170,131,1276,169, "504F4D , 51504E", 90)
    elseif id == "起源冰城" then return  tsFindText(index, "起源冰城",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "204,85" then return tsFindText(index, "204,85",1170,131,1276,169, "F1E8DD , 545250", 90)
    elseif id == "旧世界" then return tsFindText(index, "旧世界",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "新世界" then return tsFindText(index, "新世界",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "217,85" then return tsFindText(index, "217,85",1170,131,1276,169, "F1E8DD , 545250", 90)
    elseif id == "经典" then return tsFindText(index, "经典",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "起源宫殿" then return tsFindText(index, "起源宫殿",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "229,82" then return  tsFindText(index, "229,82",1170,131,1276,169, "F1E8DD , 545250", 90)
    elseif id == "黑暗之森" then return tsFindText(index, "黑暗之森",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
    elseif id == "231,82" then return    tsFindText(index, "231,82",1170,131,1276,169, "F1E8DD , 545250", 90)
    elseif id == "上古之地一层" then return tsFindText(index, "上古之地一层",1092, 3, 1274, 30, "F1E8DD , 545250", 90)    
    elseif id == "202,72" then return tsFindText(index, "202,72",1170,131,1276,169, "F1E8DD , 545250", 90)
    elseif id == "202,72" then return tsFindText(index, "火龙魔窟一层",1092, 3, 1274, 30, "F1E8DD , 545250", 90)
   
    --暗黑魔窟1层到2层
    elseif id == "135,165" then return tsFindText(index, "135,165", 1165,131,1276,169, "C3BBB0 , 232220", 90)
    elseif id == "黑暗魔窟二层" then return tsFindText(index, "黑暗魔窟二层", 1092, 3, 1274, 30, "C3BBB0 , 232220", 90)
     --暗黑魔窟2层到3层
    elseif id == "50,30" then return tsFindText(index, "50,30", 1165,131,1276,169, "C3BBB0 , 232220", 90)
    elseif id == "黑暗魔窟三层" then return tsFindText(index, "黑暗魔窟三层", 1092, 3, 1274, 30, "D1C8BC , 171615", 90)
     --暗黑魔窟3层到4层
    elseif id == "29,144" then return tsFindText(index, "29,144", 1165,131,1276,169, "D1C8BC , 161514", 90)
    elseif id == "黑暗魔窟四层" then return tsFindText(index, "黑暗魔窟四层", 1092, 3, 1274, 30, "020000 , 020101", 90)
     --血龙1层到2层
    elseif id == "23,20" then return tsFindText(index, "23,20",1165,131,1276,169, "B4ACA2 , 242321", 90)
    elseif id == "血龙大厅" then return tsFindText(index, "血龙大厅", 1092, 3, 1274, 30, "D1C8BC , 151413", 90)
     --血龙2层到3层
    elseif id == "25,26" then return tsFindText(index, "25,26",1165,131,1276,169, "C3BBB1 , 1E1D1C", 90)--没找到
    elseif id == "血龙阁" then return tsFindText(index, "血龙阁",1092, 3, 1274, 30, "C6BDB3 , 2D2B29", 90)
    --血龙3层到4层    
    elseif id == "血龙殿" then return  tsFindText(index, "血龙殿",1092, 3, 1274, 30, "C6BDB3 , 2D2B29", 90)
    --广寒宫    
    elseif id == "广寒宫" then return  tsFindText(index, "广寒宫",1092, 3, 1274, 30, "CDC4B9 , 1A1918", 90)
    end 
    Debug.log("找字ID未定义")
    return -1,-1
end



return FindFontHSZ