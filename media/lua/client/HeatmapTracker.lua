--***********************************************************
--**                    MAHEER BASIT                       **
--***********************************************************


local timer = 0
local cooldown = 600
local fileName = "HeatmapData.txt"

local function myHeatmapLogic()
    timer = timer + 1
    
    if timer > cooldown then
        print("HEATMAP: Timer reached! Attempting to write...")
        local player = getPlayer()
        
        if player then
            
            local x = player:getX()
            local y = player:getY()   
            

            local file_write = getFileWriter(fileName, true, true)
            

            file_write:write(tostring(x) .. "," .. tostring(y) .. "\n")

            file_write:close()
        end
        

        timer = 0
    end

end


Events.OnTick.Add(myHeatmapLogic)