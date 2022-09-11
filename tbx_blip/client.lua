local blips = Config.blip

Citizen.CreateThread(function()

    for k, v in pairs(blips) do
        v.blip = AddBlipForCoord(v.coordsPos.x, v.coordsPos.y, v.coordsPos.z) -- vytvoření samotného blipu
        SetBlipSprite(v.blip, v.id) -- zvolení typu blipu (tvar)
        SetBlipDisplay(v.blip, 4) -- typ zobrazení blipu
        SetBlipScale(v.blip, 1.0) -- velikost blipu
        SetBlipColour(v.blip, v.color) -- barva blipu
        SetBlipAsShortRange(v.blip, true) -- má být blip pouze na blízko?
        BeginTextCommandSetBlipName("STRING") -- chci, aby blip měl text
        AddTextComponentString(v.title) -- název blipu
        EndTextCommandSetBlipName(v.blip) -- ukončení názvu blipu
    end
end)
