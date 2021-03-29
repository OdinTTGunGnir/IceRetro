UI = {}

function UI.ShowUI()
    -- require "TSLib"
    -- w,h = getScreenSize()
    -- UINew(1,"第1页","确定","取消","uiconfig.dat",1,120,900,600,"255,228,181","255,228,181","","default",1,15,"left")
    --UICombo(1,"MainSelect","刷图,喊话","0")
    -- UICheck(1,"map1","孤独之地","0")
    -- UICombo(1,"gudu","孤独之地1,孤独之地2,孤独之地3,孤独之地4","0")
    -- UICombo(1,"map","黑暗魔窟一层,黑暗魔窟二层,黑暗魔窟三层,黑暗魔窟四层,世外桃源,天之域,地之域,血龙巢穴1,血龙巢穴2,血龙巢穴3,血龙巢穴4,囚魔炼狱1,囚魔炼狱2,迷失地下城1,迷失地下城2,迷失地下城3,迷失地下城4,黄泉之路1,黄泉之路2,黄泉之路3,海外仙岛,广寒宫,神秘峡谷1,神秘峡谷2,神秘峡谷3,神秘峡谷4,神秘峡谷5,神秘峡谷6,神秘峡谷7,恶魔广场1,恶魔广场2,恶魔广场3,通天塔,六道轮回,冰雪之城,新世界,旧世界,孤独1,孤独2,孤独3,孤独4,传奇经典之路,起源冰城,起源宫殿,火龙1,火龙2,火龙3,火龙4,火龙5,火龙6,火龙7,火龙8,黑暗之森,上古之地","0")
    -- -- 红手指 : 720 * 1280
    -- UIRadio(1,"device","红手指,Iphone6","0")
    -- UILabel(1,"清理背包：",15,"left","38,38,38")
    -- UIEdit(1,"BeiBaoTime","30（秒）","30",15,"left","38,38,38","number")

    -- UIShow()
    
    require "TSLib"
    w,h = getScreenSize()
    UINew(5,"设置,土城,二/三大陆,喊话,其他","运行脚本","退出脚本","uiconfig.dat",1,120,900,600,"250,235,215","255,235,205","","tab",1,12,"left")
    UILabel(1,"---------------------功能设置---------------------",15,"center","34,139,34")
    -- UICombo(1,"Select_Main","挂机模式,喊话模式,合成模式","0")
    
    UILabel(1,"---------------------基本设置---------------------",15,"center","34,139,34")
    UICheck(1,"Select_ChongLian","自动重新连接游戏","0")
    UICheck(1,"Select_GuaJi","挂机","0",180,1,"",1,1)
    UIEdit(1,"Tex_GuaJiShijian","30","30",15,"left","255,0,0","number",100,1)
    UILabel(1,"分更换地图",17,"left","0,0,0",200,0)
    
    UILabel(1,"---------------------回收设置---------------------",15,"center","34,139,34")
    UICheck(1,"Select_Huishou","定时回收","0",240,1,"",1,1)
    UIEdit(1,"Tex_HuiShou","30","30",15,"left","255,0,0","number",100,1)
    UILabel(1,"秒分解一次",17,"left","0,0,0",200,0)
    UICheck(1,"CheckJY","经验是否使用","0")
    -- UICheck(1,"CheckDD","存储功能（斗笠、护盾）","0")
    -- UICheck(1,"CheckBZ","存储功能（治疗宝珠）","0")
    
    UILabel(1,"---------------------其他设置---------------------",15,"center","34,139,34")
    UICheck(1,"BuyHuichengCheck","补充回城石","0")
    
    -- UILabel(1,"---------------------挂机设置---------------------",15,"center","34,139,34")
    -- UICheck(1,"Check5,Check6,Check7","见人就杀,被打反击,每个地图挂机30分钟切换地图","0")
    
    UILabel(2,"---------------------基本地图---------------------",15,"center","34,139,34")
    UICheck(2,"Check8","黑暗魔窟一层","0",-1,1,"",1,1)
    UICheck(2,"Check9","黑暗魔窟二层","0",-1,0,"",1,1)
    UICheck(2,"Check10","黑暗魔窟三层","0",-1,1,"",1,1)
    UICheck(2,"Check11","黑暗魔窟四层","0",-1,0,"",1,1)
    
    UICheck(2,"Check12","世外桃源","0",-1,1,"",1,1)
    UICheck(2,"Check13","天之域","0",-1,1,"",1,1)
    UICheck(2,"Check14","地之域","0",-1,0,"",1,1)
    UICheck(2,"Check15","血龙巢穴1","0",-1,1,"",1,1)
    UICheck(2,"Check16","血龙巢穴2","0",-1,1,"",1,1)
    UICheck(2,"Check17","血龙巢穴3","0",-1,0,"",1,1)
    UICheck(2,"Check18","血龙巢穴4","0",-1,1,"",1,1)
    UICheck(2,"Check19","海外仙岛","0",-1,1,"",1,1)
    UICheck(2,"Check20","广寒宫","0",-1,0,"",1,1)
    
    -- UICheck(2,"Check12,Check13,Check14,Check15,Check16,Check17,Check18,Check19,Check20","世外桃源,天之域,地之域,血龙巢穴1,血龙巢穴2,血龙巢穴3,血龙巢穴4,海外仙岛,广寒宫","0",-1,0,"",1,3)
    
    UILabel(3,"---------------------高阶地图---------------------",15,"center","34,139,34")
    UICheck(3,"Check2_1","冰雪之城","0",-1,1,"",1,1)
    UICheck(3,"Check2_2","新世界","0",-1,1,"",1,1)
    UICheck(3,"Check2_3","旧世界","0",-1,0,"",1,1)
    UICheck(3,"Check2_4","孤独1","0",-1,1,"",1,1)
    UICheck(3,"Check2_5","孤独2","0",-1,1,"",1,1)
    UICheck(3,"Check2_6","孤独3","0",-1,0,"",1,1)
    UICheck(3,"Check2_7","孤独4","0",-1,1,"",1,1)
    UICheck(3,"Check2_8","传奇经典之路","0",-1,0,"",1,1)
    UICheck(3,"Check2_9","起源冰城","0",-1,1,"",1,1)
    UICheck(3,"Check3_0","起源宫殿","0",-1,1,"",1,1)
    UICheck(3,"Check3_1","火龙1","0",-1,0,"",1,1)
    UICheck(3,"Check3_2","火龙2","0",-1,1,"",1,1)
    UICheck(3,"Check3_3","火龙3","0",-1,1,"",1,1)
    UICheck(3,"Check3_4","火龙4","0",-1,0,"",1,1)
    UICheck(3,"Check3_5","火龙5","0",-1,1,"",1,1)
    UICheck(3,"Check3_6","火龙6","0",-1,1,"",1,1)
    UICheck(3,"Check3_7","火龙7","0",-1,0,"",1,1)
    UICheck(3,"Check3_8","火龙8","0",-1,1,"",1,1)
    UICheck(3,"Check3_9","黑暗之森","0",-1,1,"",1,1)
    UICheck(3,"Check4_0","上古之地","0",-1,0,"",1,1)
    
    -- UICheck(3,"Check2_1,Check2_2,Check2_3,Check2_4,Check2_5,Check2_6,Check2_7,Check2_8,Check2_9,Check3_0,Check3_1,Check3_2,Check3_3,Check3_4,Check3_5,Check3_6,Check3_7,Check3_8,Check3_9,Check4_0","冰雪之城,新世界,旧世界,孤独1,孤独2,孤独3,孤独4,传奇经典之路,起源冰城,起源宫殿,火龙1,火龙2,火龙3,火龙4,火龙5,火龙6,火龙7,火龙8,黑暗之森,上古之地","0",-1,0,"",1,3)
    UILabel(4,"---------------------喊话设置---------------------",15,"center","34,139,34")
    
    -- UILabel(4,"喊话间隔",18,"left","38,38,38",200,1)
    -- UIEdit(4,"Tex_HHJG","内容","",15,"left","38,38,38","default",200,0)
    -- UILabel(4,"喊话次数",18,"left","38,38,38",200,1)
    -- UIEdit(4,"Tex_HHCS","内容","",15,"left","38,38,38","default",200,0)
    -- UILabel(4,"喊话内容",18,"left","38,38,38",200,1)
    -- UIEdit(4,"Tex_HHNR","内容","",15,"left","38,38,38","default",500,0)

    UILabel(5,"---------------------合成---------------------",15,"center","34,139,34")
    -- UIRadio(5,"HeCheng_Select","斗笠,盾牌,宝珠","0",-1,0,"",1,3)
    UILabel(5,"---------------------神魔模式---------------------",15,"center","34,139,34")
    -- UICheck(5,"Check41","是否开启点击神魔","0")
    -- UICombo(5,"Select_ShenMo","嗜血,穿杨,强化,精准,强身","0")
    -- UILabel(5,"点击次数",18,"left","38,38,38",200,1)
    -- UIEdit(5,"Tex_SMCS","次数","3",15,"left","38,38,38","number")
    
    
    -- UIComboRlt("name1,name2","选项1,选项2,选项3","子选项1,子选项2,子选项3,子选项4#子选项5,子选项6,子选项7#子选项8,子选项9","test")
    -- UIComboRlts("name2","test")
    
    UIShow()
    
    
    
    

end
Array_Map = {} 

local function v_include(tab, value)
    for k,v in pairs(tab) do
        if v == value then
            return true
        end
    end
    return false
end

function UI.SelectMap()
    
    if Check8 =="黑暗魔窟一层" then
        if v_include(Array_Map,"黑暗魔窟一层") then
        else
            table.insert(Array_Map,"黑暗魔窟一层")
        end
    end    
    if Check9 =="黑暗魔窟二层" then
        if v_include(Array_Map,"黑暗魔窟二层") then
        else
            table.insert(Array_Map,"黑暗魔窟二层")
        end
    end    
    if Check10 =="黑暗魔窟三层" then
        if v_include(Array_Map,"黑暗魔窟三层") then
        else
            table.insert(Array_Map,"黑暗魔窟三层")
        end
    end    
    if Check11 =="黑暗魔窟四层" then
        if v_include(Array_Map,"黑暗魔窟四层") then
        else
            table.insert(Array_Map,"黑暗魔窟四层")
        end
    end    
    if Check12 =="世外桃源" then
        if v_include(Array_Map,"世外桃源") then
        else
            table.insert(Array_Map,"世外桃源")
        end
    end    
    if Check13 =="天之域" then
        if v_include(Array_Map,"天之域") then
        else
            table.insert(Array_Map,"天之域")
        end
    end    
    if Check14 =="地之域" then
        if v_include(Array_Map,"地之域") then
        else
            table.insert(Array_Map,"地之域")
        end
    end    
    if Check15 =="血龙巢穴1" then
        if v_include(Array_Map,"血龙巢穴1") then
        else
            table.insert(Array_Map,"血龙巢穴1")
        end
    end    
    if Check16 =="血龙巢穴2" then
        if v_include(Array_Map,"血龙巢穴2") then
        else
            table.insert(Array_Map,"血龙巢穴2")
        end
    end    
    if Check17 =="血龙巢穴3" then
        if v_include(Array_Map,"血龙巢穴3") then
        else
            table.insert(Array_Map,"血龙巢穴3")
        end
    end    
    if Check18 =="血龙巢穴4" then
        if v_include(Array_Map,"血龙巢穴4") then
        else
            table.insert(Array_Map,"血龙巢穴4")
        end
    end    
    if Check19 =="海外仙岛" then
        if v_include(Array_Map,"海外仙岛") then
        else
            table.insert(Array_Map,"海外仙岛")
        end
    end    
    if Check20 =="广寒宫" then
        if v_include(Array_Map,"广寒宫") then
        else
            table.insert(Array_Map,"广寒宫")
        end
    end    
    if Check2_1 =="冰雪之城" then
        if v_include(Array_Map,"冰雪之城") then
        else
            table.insert(Array_Map,"冰雪之城")
        end
    end    
    if Check2_2 =="新世界" then
        if v_include(Array_Map,"新世界") then
        else
            table.insert(Array_Map,"新世界")
        end
    end    
    if Check2_3 =="旧世界" then
        if v_include(Array_Map,"旧世界") then
        else
            table.insert(Array_Map,"旧世界")
        end
    end    
    if Check2_4 =="孤独1" then
        if v_include(Array_Map,"孤独1") then
        else
            table.insert(Array_Map,"孤独1")
        end
    end    
    if Check2_5 =="孤独2" then
        if v_include(Array_Map,"孤独2") then
        else
            table.insert(Array_Map,"孤独2")
        end
    end    
    if Check2_6 =="孤独3" then
        if v_include(Array_Map,"孤独3") then
        else
            table.insert(Array_Map,"孤独3")
        end
    end    
    if Check2_7 =="孤独4" then
        if v_include(Array_Map,"孤独4") then
        else
            table.insert(Array_Map,"孤独4")
        end
    end    
    if Check2_8 =="传奇经典之路" then
        if v_include(Array_Map,"传奇经典之路") then
        else
            table.insert(Array_Map,"传奇经典之路")
        end
    end    
    if Check2_9 =="起源冰城" then
        if v_include(Array_Map,"起源冰城") then
        else
            table.insert(Array_Map,"起源冰城")
        end
    end    
    if Check3_0 =="起源宫殿" then
        if v_include(Array_Map,"起源宫殿") then
        else
            table.insert(Array_Map,"起源宫殿")
        end
    end    
    if Check3_1 =="火龙1" then
        if v_include(Array_Map,"火龙1") then
        else
            table.insert(Array_Map,"火龙1")
        end
    end    
    if Check3_2 =="火龙2" then
        if v_include(Array_Map,"火龙2") then
        else
            table.insert(Array_Map,"火龙2")
        end
    end    
    if Check3_3 =="火龙3" then
        if v_include(Array_Map,"火龙3") then
        else
            table.insert(Array_Map,"火龙3")
        end
    end    
    if Check3_4 =="火龙4" then
        if v_include(Array_Map,"火龙4") then
        else
            table.insert(Array_Map,"火龙4")
        end
    end    
    if Check3_5 =="火龙5" then
        if v_include(Array_Map,"火龙5") then
        else
            table.insert(Array_Map,"火龙5")
        end
    end    
    if Check3_6 =="火龙6" then
        if v_include(Array_Map,"火龙6") then
        else
            table.insert(Array_Map,"火龙6")
        end
    end    
    if Check3_7 =="火龙7" then
        if v_include(Array_Map,"火龙7") then
        else
            table.insert(Array_Map,"火龙7")
        end

    end    
    if Check3_8 =="火龙8" then
        if v_include(Array_Map,"火龙8") then
        else
            table.insert(Array_Map,"火龙8")
        end
    end    
    if Check3_9 =="黑暗之森" then
        if v_include(Array_Map,"黑暗之森") then
        else
            table.insert(Array_Map,"黑暗之森")
        end
    end    
    if Check4_0 =="上古之地" then
        if v_include(Array_Map,"上古之地") then
        else
            table.insert(Array_Map,"上古之地")
        end
    end
    return Array_Map
    -- for var=1,#Array_Map do
    --     dialog(Array_Map[var])
    -- end
    --   for var=0,33 do
    --     Array_Map[var] = 
    -- end
    --return map
end
function UI.GetDevice()
    return "红手指"
end

function UI.BeiBao_TIME()
    return Tex_HuiShou
end

function UI.GuaJiShiJian()
    return Tex_GuaJiShijian
end
function UI.MapCount()
    
    return #Array_Map
end
function UI.GuaJiCheck()
    return Select_GuaJi; 
end    
function UI.JinYanCheck()
    local IsJy = false
    if CheckJY =="经验是否使用" then
        IsJy = true
    end
    return IsJy; 
end    

function UI.BuyHuichengCheck()
    local BuyHuicheng = false
    if BuyHuichengCheck =="补充回城石" then
        BuyHuicheng = true
    end
    return BuyHuicheng; 
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