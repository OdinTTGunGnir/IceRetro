UI = {}

function UI.ShowUI()
    require "TSLib"
    w,h = getScreenSize()
    UINew(1,"第1页","确定","取消","uiconfig.dat",1,120,900,600,"255,255,255","255,255,255","","default",1,15,"left")
    -- UICheck(1,"map1","孤独之地","0")
    -- UICombo(1,"gudu","孤独之地1,孤独之地2,孤独之地3,孤独之地4","0")
    UICombo(1,"map","黑暗魔窟1,黑暗魔窟2,黑暗魔窟3,黑暗魔窟4,狂徒之家1,狂徒之家2,世外桃源,天空之城（天）,天空之城（地）,血龙巢穴1,血龙巢穴2,血龙巢穴3,血龙巢穴4,囚魔炼狱1,囚魔炼狱2,迷失地下城1,迷失地下城2,迷失地下城3,迷失地下城4,黄泉之路1,黄泉之路2,黄泉之路3,海外仙岛1,海外仙岛2,神秘峡谷1,神秘峡谷2,神秘峡谷3,神秘峡谷4,神秘峡谷5,神秘峡谷6,神秘峡谷7,恶魔广场1,恶魔广场2,恶魔广场3,通天塔,六道轮回,冰雪之城,新世界,旧世界,孤独1,孤独2,孤独3,孤独4,传奇经典之路,起源冰城,起源宫殿,火龙1,火龙2,火龙3,火龙4,火龙5,火龙6,火龙7,火龙8,黑暗之森,上古之地","0")
    -- 红手指 : 720 * 1280
    UIRadio(1,"device","红手指,Iphone6","0")
    UILabel(1,"清理背包：",15,"left","38,38,38")
    UIEdit(1,"BeiBaoTime","30（秒）","30",15,"left","38,38,38","number")
    UIShow()

end
function UI.SelectMap()
    -- if map1 == "孤独之地" then
    --     return gudu
    -- end
    return map
end
function UI.GetDevice()
    return device
end

function UI.BeiBao_TIME()
    return BeiBaoTime
end

return UI



--  ---------------------  UI Show 界面  ---------------------
-- local ts = require("ts")
-- local cjson = ts.json
-- w,h = getScreenSize();
-- MyTable = {
-- ["style"]  = "default",
-- ["rettype"] = "table",
-- ["width"] = 900,
-- ["height"] = 600,
-- ["orient"] = "1",
-- ["bgcolor"] = "255,255,255",
-- ["btnbkcolor"] = "255,255,255",
-- ["config"] = "",
-- ["pagetype"] = "multi",
-- ["selpage"] = "1",
-- ["pagenumtype"] = "default",
-- ["titles"] = "第1页",
-- ["timer"] = "120",
-- ["cancelname"] = "取消",
-- ["okname"] = "确定",
-- ["titlealign"] = "left",
-- ["titlesize"] = "15",
-- pages=
--           {
--                               {
                              
--                                       {
--                                       ["type"] = "CheckBoxGroup",
--                                       ["select"] = "0",
--                                       ["id"] = "checkbox2",
--                                       ["list"] = "孤独之地",
--                                       },
--                                       {
--                                       ["type"] = "ComboBox",
--                                       ["id"] = "select1",
--                                       ["list"] = "孤独之地1,孤独之地2,孤独之地3,孤独之地4",
--                                       ["select"] = "0",
--                                       },
--                                       {
--                                       ["type"] = "RadioGroup",
--                                       ["select"] = "0",
--                                       ["id"] = "radio0",
--                                       ["list"] = " 红手指,Iphone 6",
--                                       },
--                                       {
--                                       ["type"] = "Label",
--                                       ["color"] = "38,38,38",
--                                       ["size"] = "15",
--                                       ["align"] = "left",
--                                       ["text"] = "清理背包：",
--                                       },
--                                       {
--                                       ["type"] = "Edit",
--                                       ["color"] = "38,38,38",
--                                       ["prompt"] = "30（秒）",
--                                       ["size"] = "15",
--                                       ["id"] = "BeiBaoTime",
--                                       ["align"] = "left",
--                                       ["text"] = "30",
--                                       ["kbtype"] = "default",
--                                       },},
--                   },
                  
-- } 
-- local MyJsonString = cjson.encode(MyTable);
-- UIret,values = showUI(MyJsonString)