local blips = Config.blip

Citizen.CreateThread(function()

    for k, v in pairs(blips) do
        v.blip = AddBlipForCoord(v.coordsPos.x, v.coordsPos.y, v.coordsPos.z) 
        SetBlipSprite(v.blip, v.id) 
        SetBlipDisplay(v.blip, 4) 
        SetBlipScale(v.blip, 1.0) 
        SetBlipColour(v.blip, v.color) 
        SetBlipAsShortRange(v.blip, false) -- má být blip pouze na blízko?
        BeginTextCommandSetBlipName("STRING") 
        AddTextComponentString(v.title) u
        EndTextCommandSetBlipName(v.blip) 
    end
end)