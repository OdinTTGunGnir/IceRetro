Tools = {}

function Tools.click(x , y , times , interval)
    local i = 0
    if interval == nil then
        interval = 100
    end
    
    while (i < times) do
        i = i + 1
        touchDown(x - 5,y - 5)
        mSleep(interval)
        touchUp(x - 5,y - 5)
    end
    
end



return Tools