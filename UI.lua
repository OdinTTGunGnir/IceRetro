UI = {}

function UI.ShowUI()
    require "TSLib"
    w,h = getScreenSize()
    UINew(1,"第1页","确定","取消","uiconfig.dat",1,120,900,600,"255,255,255","255,255,255","","default",1,15,"left")
    UICheck(1,"map1","孤独之地","0")
    UICombo(1,"gudu","孤独之地1,孤独之地2,孤独之地3,孤独之地4","0")
    UIRadio(1,"device","红手指,Iphone6","0")
    UILabel(1,"清理背包：",15,"left","38,38,38")
    UIEdit(1,"BeiBaoTime","30（秒）","30",15,"left","38,38,38","default")
    UIShow()

end
function UI.SelectMap()
    if map1 == "孤独之地" then
        return gudu
    end
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
--                                       },},
--                   },
                  
-- } 
-- local MyJsonString = cjson.encode(MyTable);
-- UIret,values = showUI(MyJsonString)