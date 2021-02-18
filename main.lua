Global = require("Global")
UI = require("UI")
init(0)

-- UI.ShowUI()

-- Global.Begin()



--  MoveTo = require("MoveTo")

-- init(1)
-- --内容已复制到剪贴板!
-- --请注意自行修改文件名!
-- local index = addTSOcrDict("Font.txt")
-- --请自行更改参数
-- --1: 0,0,0,0 范围坐标，请自行修改
-- --2: "E4DBD1 , 575553" 偏色,多组或单组.请在偏色列表中选择
-- --3: 90 匹配精度 【0-100】
-- nLog(index)
-- x, y = tsFindText(index, "黑暗魔窟一层", 0, 0, 0, 0, "E4DBD1 , 575553", 90)
-- nLog("识别到的坐标  x:"..x.." , y:"..y)

-- MoveTo.moveTo("暗黑魔窟1")


local index = addTSOcrDict("Font.txt")
--请自行更改参数
--1: 0,0,0,0 范围坐标，请自行修改
--2: "C2BAAF , 242321" 偏色,多组或单组.请在偏色列表中选择
--3: 90 匹配精度 【0-100】
x, y = tsFindText(index, "黑暗魔窟一层",1092,3 , 1274, 30, "E4DBD1 , 575553", 90)
dialog("识别到的坐标  x:"..x.." , y:"..y)

