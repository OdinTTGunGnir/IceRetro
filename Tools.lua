Tools = {}

-- 点击
function Tools.click(x , y , times , interval)
    
    local i = 0
    if interval == nil then
        interval = 100
    end
    if times == nil then
        times = 1
    end
    
    while (i < times) do
        i = i + 1
        touchDown(x - 5,y - 5)
        mSleep(interval)
        touchUp(x - 5,y - 5)
    end
    
end


-- 返回主菜单
function Tools.home()
        pressHomeKey(0)
    mSleep(50)
    pressHomeKey(1)
end


return Tools