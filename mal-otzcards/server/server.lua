-- Toujours commencer par ces deux lignes, la raison osef
local ESX = nil
ESX = exports["es_extended"]:getSharedObject()


RegisterCommand('testcard', function(source, args, rawCommand)
    local player = source

    local metaData = {
        name = "TestCarte",
        rarity = "Commun",
        category = "lspd"
    }

    local success, response = exports.ox_inventory:AddItem(source, "card", 1, metaData)
    if not success then
        return print(response)
    end
end, false)
