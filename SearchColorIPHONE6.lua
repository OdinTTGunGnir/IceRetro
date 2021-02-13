SearchColorIPHONE6 = {}

function SearchColorIPHONE6.search(id)
    tab = {}
    tab["cc"] = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 })
    if id=="OpenGame" then  x,y = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 })
    else if id == "" then  x,y = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 }) 
    else if id == "2" then  x,y = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 }) 
    else if id == "3" then  x,y = findMultiColorInRegionFuzzy(0x06daff, "3|0|0x000624,9|0|0x000315,25|3|0x00d1ff,19|3|0x0fc7f5,18|0|0x17baf6", 90, 45, 178, 685, 637, { orient = 2 }) 
        
        
    end end end end
    

end

return SearchColorIPHONE6