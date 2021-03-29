Tools = require("Tools")
Debug = require("Debug")
SearchColor = require("SearchColor")
ClickSuit = require("ClickSuit")
FindFont = require("FindFont")
UI = require("UI")
MoveTo = {}

local finish = false
local process = {}


function ClickMap()
    Tools.click(1160,80)
end
function CloseMap()
    local x,y = SearchColor.search("CloseMap")
    if x~=-1  then
        Tools.click(x,y)
    else
        Debug.Log("没有找到关闭地图")
    end 
end 

local function GoToMapInit()
    
    ClickSuit.CloseBtn()
    mSleep(500)
    ClickMap()
    --循环查找是否白屏
    local baipingflag = false
    while (baipingflag ~= true) do
        local x,y = SearchColor.search("baiping")
        if x~=-1 then
            baipingflag = true
        end
    end
    mSleep(1500)
end    
--前往冰雪之城
local function GoToBingxue()
    
    ClickSuit.huicheng()
        
    --打开地图
    ClickMap()
    --循环查找是否白屏
    local baipingflag2 = false
    while (baipingflag2 ~= true) do
        local x,y = SearchColor.search("baiping")
        if x~=-1 then
            baipingflag2 = true
        end
    end
    mSleep(1000)
    --前往老兵附近
    Tools.click(470,314) 
    mSleep(2000)
    --关闭地图
    CloseMap()
    --循环查找老兵，避免被人物遮挡
    local laobingflag = false
    while (laobingflag ~= true) do
        local x,y = SearchColor.search("laobing")
        if x ~= -1 then
            Tools.click(x,y)
            laobingflag = true
        end
    end
    mSleep(1000)
    --选择冰雪之城
    Tools.click(313,260) 
    mSleep(1000)
    --前往冰雪之城
    Tools.click(920,500) 
    mSleep(5000)
end    
local function GpToGudu(index)
    --打开地图
    ClickMap()
    mSleep(2000)
    --前往孤独之地附近
    Tools.click(766,268) 
    mSleep(2000)
    --关闭地图
    CloseMap()
    --循环查找孤独之地
    local guduflag = false
    while (guduflag ~= true) do
        local x,y = SearchColor.search("gudu")
        if x ~= -1 then
            Tools.click(x,y)
            guduflag = true
        end
    end
    mSleep(1000)
    --选择孤独
    if index==1 then
        Tools.click(310,152) 
    elseif index==2 then
        Tools.click(310,208)
    elseif index==3 then
        Tools.click(310,260) 
    elseif index==4 then
        Tools.click(310,316) 
    end
    mSleep(1000)
    --前往孤独
    Tools.click(920,500) 
    mSleep(5000)
end
local function AnHei2()
    ClickMap()
    mSleep(1000)
    Tools.click(564,366)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(8000)
    repeat
        mSleep(8000)
        local x,y = FindFont.findFont("135,165")
    until( x ~= -1 )
    ClickMap()
    mSleep(1000)
    Tools.click(577,351)
    mSleep(500)
    ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("黑暗魔窟二层")
    until( x ~= -1 )
end    
local function AnHei3()
    ClickMap()
    mSleep(1000)
    Tools.click(414,194)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(8000)
    repeat
        mSleep(8000)
        local x,y = FindFont.findFont("50,30")
    until( x ~= -1 )
    ClickMap()
    mSleep(1000)
    Tools.click(399,157)
    mSleep(500)
    ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("黑暗魔窟三层")
    until( x ~= -1 )
end   
local function AnHei4()
    ClickMap()
    mSleep(1000)
    Tools.click(343,457)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(8000)
    repeat
        mSleep(8000)
        local x,y = FindFont.findFont("29,144")
    until( x ~= -1 )
    ClickMap()
    mSleep(1000)
    Tools.click(315,492)
    mSleep(500)
    ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("黑暗魔窟四层")
    until( x ~= -1 )
end    
local function GoToAnHei(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(462,322) -- 点击地图上黑暗魔窟的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("325,344")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(627,241) -- 点击黑暗魔窟地图
    Tools.click(266,181) -- 进入黑暗魔窟地图
    
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("黑暗魔窟一层")
    until( x ~= -1 )
    
    if index==1 then
    elseif index==2 then
        AnHei2()
    elseif index==3 then
        AnHei2()
        AnHei3()
    elseif index==4 then
        AnHei2()
        AnHei3()
        AnHei4()
    end
    
end
local function GoToQiuMoLianYu(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(460,315) -- 点击地图上囚魔炼狱的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("322,332")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(573,370) -- 点击囚魔炼狱地图
    Tools.click(414,180) -- 进入囚魔炼狱地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("囚魔炼狱一层")
    until( x ~= -1 )
end
local function GoToDiXiaCheng(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(460,318) -- 点击地图上迷失地下城的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("322,337")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(573,335) -- 点击迷失地下地图
    Tools.click(414,180) -- 进入迷失地下地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("迷失地下城基层")
    until( x ~= -1 )
end
local function GoToHuangQuanZhiLu(index)
    ClickSuit.huicheng()
    
    GoToMapInit()
    Tools.click(460,311) -- 点击地图上黄泉之路的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("322,325")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(572,505) -- 点击黄泉之路地图
    Tools.click(337,180) -- 进入黄泉之路地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("黄泉之路一层")
    until( x ~= -1 )
end

local function XueLong2()
    ClickMap()
    mSleep(1000)
    Tools.click(404,220)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(8000)
    repeat
        mSleep(8000)
        local x,y = FindFont.findFont("23,20")
    until( x ~= -1 )
    ClickMap()
    mSleep(1000)
    Tools.click(368,194)
    mSleep(500)
    ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("血龙大厅")
    until( x ~= -1 )
end   
local function XueLong3()
    ClickMap()
    mSleep(1000)
    Tools.click(416,247)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(20000)
    -- repeat
    --     mSleep(8000)
    --     local x,y = FindFont.findFont("25,26")
    -- until( x ~= -1 )
    ClickMap()
    mSleep(1000)
    Tools.click(389,219)
    mSleep(500)
    ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("血龙阁")
    until( x ~= -1 )
end 
local function XueLong4()
    ClickMap()
    mSleep(1000)
    Tools.click(406,222)
    mSleep(500)
    ClickSuit.CloseBtn()
    mSleep(20000)
    -- repeat
    --     mSleep(8000)
    --     local x,y = FindFont.findFont("25,26")
    -- until( x ~= -1 )
    -- ClickMap()
    -- mSleep(1000)
    -- Tools.click(368,194)
    -- mSleep(500)
    -- ClickSuit.CloseBtn()
        
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("血龙殿")
    until( x ~= -1 )
end 

local function GoToXueLongChaoXue(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(460,311) -- 点击地图上血龙巢穴的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("322,325")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(572,318) -- 点击血龙巢穴地图
    Tools.click(414,180)  -- 进入血龙巢穴地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("血龙回廊")
    until( x ~= -1 )
    
    if index==1 then
    elseif index==2 then
        XueLong2()
    elseif index==3 then
        XueLong2()
        XueLong3()
    elseif index==4 then
        XueLong2()
        XueLong3()
        XueLong4()
    end
    
end
local function GoToShenMiXiaGu(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(460,311) -- 点击地图上神秘峡谷的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("322,325")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(572,140) -- 点击神秘峡谷地图
    Tools.click(414,180) -- 进入神秘峡谷地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("血龙回廊")
    until( x ~= -1 )
end
local function GoToTianDiZhiYu(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(454,319) -- 点击地图上天地之域的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("313,339")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(840,458) -- 点击天地之域地图
    if index==1 then
        Tools.click(433,122) -- 进入天地之域-天地图
        repeat
            mSleep(3000)
            local x,y = FindFont.findFont("天之域")
        until( x ~= -1 )
    else
        Tools.click(433,182) -- 进入天地之域-地地图
        repeat
            mSleep(3000)
            local x,y = FindFont.findFont("地之域")
        until( x ~= -1 )
    end
end
local function GoToHaiWaiXianGong(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(454,319) -- 点击地图上海外仙宫的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("313,339")
    until( x ~= -1 )
    mSleep(5000)
    
    Tools.click(574,458) -- 点击海外仙宫地图
    Tools.click(414,180)  -- 进入海外仙宫地图
    
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("海外仙宫")
    until( x ~= -1 )
    
    if index ==1 then
        
    else
        ClickMap()
        mSleep(1000)
        Tools.click(456,273)
        mSleep(500)
        ClickSuit.CloseBtn()
        mSleep(10000)
        Tools.click(723,323)
        mSleep(1000)
        Tools.click(248,149)
        repeat
            mSleep(3000)
            local x,y = FindFont.findFont("广寒宫")
        until( x ~= -1 )
    end
    
    
end
local function GoToShiWaiTaoYuan(index)
    ClickSuit.huicheng()
    GoToMapInit()
    Tools.click(452,319) -- 点击地图上世外桃源的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("310,339")
    until( x ~= -1 )
    mSleep(5000)
    
    Tools.click(520,458) -- 点击世外桃源地图
    Tools.click(414,180)  -- 进入世外桃源地图
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("世外桃源")
    until( x ~= -1 )
end
local function ErDaLuInit()
    GoToBingxue()
    repeat
        mSleep(3000)
        local x,y = FindFont.findFont("冰雪之城")
    until( x ~= -1 )
    mSleep(2000)
    ClickMap()
    mSleep(2000)
end    
local function GoToQiYuanBingCheng(index)
    ErDaLuInit()
    Tools.click(790,254) -- 点击地图上起源冰城的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("221,76")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(977,335) -- 点击起源冰城地图
    Tools.click(837,505)  --进入起源冰城地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("起源冰城")
    until( x ~= -1 )
    
end
local function GoToJiuShiJie(index)
    ErDaLuInit()
    Tools.click(750,270) -- 点击地图上旧世界的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("204,85")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(435,470) -- 点击旧世界地图
    Tools.click(837,505) --进入旧世界地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("旧世界")
    until( x ~= -1 )
end
local function GoToXinShiJie(index)
    ErDaLuInit()
    Tools.click(750,270) -- 点击地图上新世界的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("204,85")
    until( x ~= -1 )
    mSleep(5000)
    
    Tools.click(710,470) -- 点击新世界地图
    Tools.click(837,505) --进入新世界地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("新世界")
    until( x ~= -1 )
end
local function GoToJingDian(index)
    ErDaLuInit()
    Tools.click(780,270) -- 点击地图上经典之路的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("217,85")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(500,460) -- 点击经典之路地图
    Tools.click(837,505) --进入经典之路地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("经典")
    until( x ~= -1 )
end
local function GoToQiYuanGongDian(index)
    ErDaLuInit()
    Tools.click(780,270) -- 点击地图上起源宫殿的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("217,85")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(840,460) -- 点击起源宫殿地图
    Tools.click(358,184) --进入起源宫殿地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("起源宫殿")
    until( x ~= -1 )
end
local function GoToHeiAnZhiSen(index)
    ErDaLuInit()
    Tools.click(810,265) -- 点击地图上黑暗之森的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("229,82")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(505,359) -- 点击黑暗之森地图
    Tools.click(837,505) --进入黑暗之森地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("黑暗之森")
    until( x ~= -1 )
end
local function GoToShangGuZhiDi(index)
    ErDaLuInit()
    Tools.click(815,265) -- 点击地图上古之地的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("231,82")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(970,255) -- 点击上古之地地图
    Tools.click(837,505) --进入上古之地地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("上古之地")
    until( x ~= -1 )
end
local function GoToHuoLong(index)
    ErDaLuInit()
    Tools.click(745,248) -- 点击火魔龙窟的位置
    ClickSuit.CloseBtn()
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("202,72")
    until( x ~= -1 )
    mSleep(5000)
    Tools.click(575,470) -- 点击火魔龙窟地图
    Tools.click(837,505) --进入火魔龙窟地图
    repeat
        mSleep(5000)
        local x,y = FindFont.findFont("火魔龙窟")
    until( x ~= -1 )
end

MapIndex_Current = 1;
MapIndex_Forward = 1;
function MoveTo.moveTo(name)
    
    
    
    local a = name[targetNum]

    if a=="血龙巢穴1" then a = "血龙回廊"
    elseif a=="血龙巢穴2" then a = "血龙大厅"
    elseif a=="血龙巢穴3" then a = "血龙阁"
    elseif a=="血龙巢穴4" then a = "血龙殿"
    end
    -- local x,y = FindFont.findFont(a)
    -- if x~= -1 then 
    --     return true    
    -- end
    
    local MapName = a
    --MapIndex_Current：当前地图索引
    --Map: 地图table
    
    -- Debug.Log("targetNum =  "..targetNum)--打印当前地图索引
    -- Debug.Log("UI.SelectMap()[2] =  "..Map[2])--打印地图table中的第二个元素的value值
    -- targetNum = math.floor(targetNum)
    -- if Map[targetNum]==nil then
    --     Debug.Log("空值   "..targetNum)
    -- else
        
    -- end
    -- if MapIndex_Current==nil then
    --     Debug.Log("MapIndex_Current空值")
    -- else
        
    -- end
    
    -- -- Debug.Log("MapIndex_Current数据类型 =  "..type(MapIndex_Current))--打印MapIndex_Current数据类型
    -- Debug.Log("UI.SelectMap()[MapIndex_Current] =  "..Map[targetNum])--打印地图table中的当前地图索引的value值
    
    if MapName == "孤独之地1" then
        --前往冰雪之城
        GoToBingxue()
        --前往孤独之地
        GpToGudu(1)
    elseif MapName == "孤独之地2" then
        --前往冰雪之城
        GoToBingxue()
        --前往孤独之地
        GpToGudu(2)
    elseif MapName == "孤独之地3" then
        --前往冰雪之城
        GoToBingxue()
        --前往孤独之地
        GpToGudu(3)
    elseif MapName == "孤独之地4" then
        --前往冰雪之城
        GoToBingxue()
        --前往孤独之地
        GpToGudu(4)
    elseif MapName == "黑暗魔窟一层" then
        --前往暗黑魔窟1
        GoToAnHei(1)
    elseif MapName == "黑暗魔窟二层" then
        --前往暗黑魔窟2
        GoToAnHei(2)
    elseif MapName == "黑暗魔窟三层" then
        --前往暗黑魔窟3
        GoToAnHei(3)
    elseif MapName == "黑暗魔窟四层" then
        --前往暗黑魔窟4
        GoToAnHei(4)
    elseif MapName == "地之域" then
        --前往地之狱
        GoToTianDiZhiYu(-1)
    elseif MapName == "天之域" then
        --前往天之狱
        GoToTianDiZhiYu(1)
    elseif MapName == "世外桃源" then
        --前往世外桃源
        GoToShiWaiTaoYuan(1)
    elseif MapName == "血龙巢穴1" then
        --前往血龙巢穴1
        GoToXueLongChaoXue(1)
    elseif MapName == "血龙巢穴2" then
        --前往血龙巢穴2
        GoToXueLongChaoXue(2)
    elseif MapName == "血龙巢穴3" then
        --前往血龙巢穴3
        GoToXueLongChaoXue(3)
    elseif MapName == "血龙巢穴4" then
        --前往血龙巢穴4
        GoToXueLongChaoXue(4)
    elseif MapName == "囚魔炼狱1" then
        --前往囚魔炼狱1
        GoToQiuMoLianYu(1)
    elseif MapName == "囚魔炼狱2" then
        --前往囚魔炼狱2
        GoToQiuMoLianYu(2)
    elseif MapName == "迷失地下城1" then
        --前往迷失地下城1
        GoToDiXiaCheng(1)
    elseif MapName == "迷失地下城2" then
        --前往迷失地下城2
        GoToDiXiaCheng(2)
    elseif MapName == "迷失地下城3" then
        --前往迷失地下城3
        GoToDiXiaCheng(3)
    elseif MapName == "迷失地下城4" then
        --前往迷失地下城4
        GoToDiXiaCheng(4)
    elseif MapName == "黄泉之路1" then
        --前往黄泉之路1
        GoToHuangQuanZhiLu(1)
    elseif MapName == "黄泉之路2" then
        --前往黄泉之路2
        GoToHuangQuanZhiLu(2)
    elseif MapName == "黄泉之路3" then
        --前往黄泉之路3
        GoToHuangQuanZhiLu(3)
    elseif MapName == "海外仙岛" then
        --前往海外仙岛1
        GoToHaiWaiXianGong(1)
    elseif MapName == "广寒宫" then
        --前往海外仙岛2
        GoToHaiWaiXianGong(2)
    elseif MapName == "神秘峡谷1" then
        --前往神秘峡谷1
        GoToShenMiXiaGu(1)
    elseif MapName == "神秘峡谷2" then
        --前往神秘峡谷2
        GoToShenMiXiaGu(2)
    elseif MapName == "神秘峡谷3" then
        --前往神秘峡谷3
        GoToShenMiXiaGu(3)
    elseif MapName == "神秘峡谷4" then
        --前往神秘峡谷4
        GoToShenMiXiaGu(4)
    elseif MapName == "神秘峡谷5" then
        --前往神秘峡谷5
        GoToShenMiXiaGu(5)
    elseif MapName == "神秘峡谷6" then
        --前往神秘峡谷6
        GoToShenMiXiaGu(6)
    elseif MapName == "神秘峡谷7" then
        --前往神秘峡谷7
        GoToShenMiXiaGu(7)
    elseif MapName == "冰雪之城" then
        --前往雪之城
        GoToBingxue(1)
    elseif MapName == "新世界" then
        --前往新世界
        GoToXinShiJie(1)
    elseif MapName == "旧世界" then
        --前往旧世界
        GoToJiuShiJie(1)
    elseif MapName == "传奇经典之路" then
        --前往传奇经典之路
        GoToJingDian(1)
    elseif MapName == "起源宫殿" then
        --前往起源宫殿
        GoToQiYuanGongDian(1)
    elseif MapName == "黑暗之森" then
        --前往黑暗之森
        GoToHeiAnZhiSen(1)
    elseif MapName == "上古之地" then
        --前往上古之地
        GoToShangGuZhiDi(1)
    elseif MapName == "火龙1" then
        --前往火龙1
        GoToHuoLong(1)
    elseif MapName == "火龙2" then
        --前往火龙2
        GoToHuoLong(2)
    elseif MapName == "火龙3" then
        --前往火龙3
        GoToHuoLong(3)
    elseif MapName == "火龙4" then
        --前往火龙4
        GoToHuoLong(4)
    elseif MapName == "火龙5" then
        --前往火龙5
        GoToHuoLong(5)
    elseif MapName == "火龙6" then
        --前往火龙6
        GoToHuoLong(6)
    elseif MapName == "火龙7" then
        --前往火龙7
        GoToHuoLong(7)
    elseif MapName == "火龙8" then
        --前往火龙8
        GoToHuoLong(8)
    end
    
    
    return true
end



return MoveTo