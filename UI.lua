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
    UICombo(1,"Select_Main","挂机模式,喊话模式,合成模式","0")
    
    UILabel(1,"---------------------基本设置---------------------",15,"center","34,139,34")
    UICheck(1,"Select_ChongLian","自动重新连接游戏","0")
    
    UILabel(1,"---------------------回收设置---------------------",15,"center","34,139,34")
    UICheck(1,"Select_Huishou","定时回收","0",240,1,"",1,1)
    UIEdit(1,"Select_HuiShouShiJian","60","60",15,"left","255,0,0","number",100,1)
    UILabel(1,"秒分解一次",17,"left","0,0,0",200,0)
    UICheck(1,"Check1,Check2,Check3","经验是否使用（勾选使用，不勾选存储）,存储功能（斗笠、护盾）,存储功能（治疗宝珠）","0")
    
    UILabel(1,"---------------------其他设置---------------------",15,"center","34,139,34")
    UICheck(1,"Check4","补充回城石","0")
    
    UILabel(1,"---------------------挂机设置---------------------",15,"center","34,139,34")
    UICheck(1,"Check5,Check6,Check7","见人就杀,被打反击,每个地图挂机30分钟切换地图","0")
    
    UILabel(2,"---------------------基本地图---------------------",15,"center","34,139,34")
    UICheck(2,"Check8,Check9,Check10,Check11,Check12,Check13,Check14,Check15,Check16,Check17,Check18,Check19,Check20","黑暗魔窟1,黑暗魔窟2,黑暗魔窟3,黑暗魔窟4,世外桃源,天之域,地之域,血龙巢穴1,血龙巢穴2,血龙巢穴3,血龙巢穴4,海外仙岛,广寒宫","0",-1,0,"",1,3)
    
    UILabel(3,"---------------------高阶地图---------------------",15,"center","34,139,34")
    UICheck(3,"Check21,Check22,Check23,Check24,Check25,Check26,Check27,Check28,Check29,Check30,Check31,Check32,Check33,Check34,Check35,Check36,Check37,Check38,Check39,Check40","冰雪之城,新世界,旧世界,孤独1,孤独2,孤独3,孤独4,传奇经典之路,起源冰城,起源宫殿,火龙1,火龙2,火龙3,火龙4,火龙5,火龙6,火龙7,火龙8,黑暗之森,上古之地","0",-1,0,"",1,3)
    
    UILabel(4,"---------------------喊话设置---------------------",15,"center","34,139,34")
    
    UILabel(4,"喊话间隔",18,"left","38,38,38",200,1)
    UIEdit(4,"Tex_HHJG","内容","",15,"left","38,38,38","default",200,0)
    UILabel(4,"喊话次数",18,"left","38,38,38",200,1)
    UIEdit(4,"Tex_HHCS","内容","",15,"left","38,38,38","default",200,0)
    UILabel(4,"喊话内容",18,"left","38,38,38",200,1)
    UIEdit(4,"Tex_HHNR","内容","",15,"left","38,38,38","default",500,0)

    UILabel(5,"---------------------合成---------------------",15,"center","34,139,34")
    UIRadio(5,"HeCheng_Select","斗笠,盾牌,宝珠","0",-1,0,"",1,3)
    UILabel(5,"---------------------神魔模式---------------------",15,"center","34,139,34")
    UICheck(5,"Check41","是否开启点击神魔","0")
    UICombo(5,"Select_ShenMo","嗜血,穿杨,强化,精准,强身","0")
    UILabel(5,"点击次数",18,"left","38,38,38",200,1)
    UIEdit(5,"Tex_SMCS","次数","3",15,"left","38,38,38","number")
    
    
    -- UIComboRlt("name1,name2","选项1,选项2,选项3","子选项1,子选项2,子选项3,子选项4#子选项5,子选项6,子选项7#子选项8,子选项9","test")
    -- UIComboRlts("name2","test")
    
    UIShow()
    
    
    
    
    
    
end
function UI.SelectMap()
    return map
end
function UI.GetDevice()
    return device
end

function UI.BeiBao_TIME()
    return BeiBaoTime
end
function UI.Occupation()
    return occupation
end
function UI.MainSelect()
    return MainSelect
end
function UI.HanHuaNeiRong()
    return HanHuaNeiRong
end
function UI.HanHuaCiShu()
    return HanHuaCiShu
end
function UI.HanHuaJianGe()
    return HanHuaJianGe
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