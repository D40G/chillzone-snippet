local inBeachGym = false
CreateThread(function()
    local beachGym = PolyZone:Create({
        vector2(-1203.5871582032, -1572.0311279296),
        vector2(-1204.8712158204, -1570.1942138672),
        vector2(-1206.4045410156, -1571.3159179688),
        vector2(-1212.73828125, -1562.2154541016),
        vector2(-1211.1375732422, -1556.4135742188),
        vector2(-1203.0192871094, -1555.4542236328),
        vector2(-1191.7333984375, -1571.8565673828),
        vector2(-1196.4276123046, -1575.0352783204),
        vector2(-1194.4631347656, -1578.013671875),
        vector2(-1199.1538085938, -1581.3591308594),
        vector2(-1205.1586914062, -1573.0513916016)
      }, {
        name="beachGym",
        debugGrid=false,
        minZ = 0,
        maxZ = 5.5
      })
      beachGym:onPlayerInOut(function(isPointInside)
        if isPointInside then
            inBeachGym = true
        else
            inBeachGym = false
        end
        CreateThread(function()
            Wait(45000)
            while inBeachGym do
                Wait(30000)
                TriggerServerEvent('hud:server:RelieveStress', 2)
            end            
        end)
    end)
end)
