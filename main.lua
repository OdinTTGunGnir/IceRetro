Global = require("Global")
UI = require("UI")
init(0)

UI.ShowUI()

-- Global.Begin()



--  MoveTo = require("MoveTo")

-- init(1)
-- --内容已复制到剪贴板!
-- --请注意自行修改文件名!
local index = addTSOcrDict("Font.txt")
-- --请自行更改参数
-- --1: 0,0,0,0 范围坐标，请自行修改
-- --2: "E4DBD1 , 575553" 偏色,多组或单组.请在偏色列表中选择
-- --3: 90 匹配精度 【0-100】
-- nLog(index)
-- x, y = tsFindText(index, "黑暗魔窟一层", 0, 0, 0, 0, "E4DBD1 , 575553", 90)
-- nLog("识别到的坐标  x:"..x.." , y:"..y)

x, y =  findMultiColorInRegionFuzzy(0x1e1c18, "-3|3|0xf6e5b3,-8|7|0x41402e,-16|7|0x3d3833,-3|0|0xfae9b6,29|-1|0xb0b0a8,24|3|0xe9e9e6", 90, 0, 0, 1280, 720, { orient = 2 })
mSleep(500)
dialog("识别到的坐标  x:"..x.." , y:"..y)

-- local index = addTSOcrDict("Font.txt")
-- x, y = tsFindText(index, "325,344",1165,131,1276,169, "D9D1C7 , 5A5755", 90)
-- dialog("识别到的坐标  x:"..x.." , y:"..y)

