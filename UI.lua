UI = {}

function UI.ShowUI()
    require "TSLib"
    w,h = getScreenSize()
    UINew(1,"第1页","确定","取消","uiconfig.dat",1,120,900,600,"255,255,255","255,255,255","","default",1,15,"left")
    UICheck(1,"map1","孤独之地","0")
    UICombo(1,"gudu","孤独之地1,孤独之地2,孤独之地3,孤独之地4","0")
    UIShow()
end
function UI.SelectUI()
    if map1 == "孤独之地" then
        return gudu
    end
end


return UI