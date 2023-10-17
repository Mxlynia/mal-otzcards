-- Toujours commencer par ces deux lignes, la raison osef
local ESX = nil
ESX = exports["es_extended"]:getSharedObject()
local texts = Languages[Config.language]

RegisterNUICallback('escape', function(data, cb)
    SetNuiFocus(false, false)
    EnableGUI("ON_CLOSE", false, "cards")
    cb('ok')
end)

function EnableGUI(type, enable, menu)
    enabled = enable
    SetNuiFocus(enable, enable)
    SendNUIMessage({
        type = type,
        enable = enable,
        menu = menu,
        cards = randomCards,
        isService = isService,
    })
end

local function showCardsClient(itemMetadata)
    local closestPlayers, closestDistance = ESX.Game.GetClosestPlayer()

    local xPlayer

    local item = {
        info = {
            images = "img/"..itemMetadata.name..".png",
            isFliped = false,
        }
    }
    local card = item.info
    
    card.isFliped = true
    SetNuiFocus(true, true)
    EnableGUI("ON_OPEN", true, "cards-container")
    print(json.encode(item.info))
    SendNUIMessage({
        type = "ON_SHOW_CARD",
        card = item.info,
    })
end

exports("showCardsClient", showCardsClient)