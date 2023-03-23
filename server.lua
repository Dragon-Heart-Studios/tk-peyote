local QBCore = exports['qb-core']:GetCoreObject()

local resourceName = GetCurrentResourceName()
local version = "1.0.5" -- Change this to your script's current version

PerformHttpRequest("https://supernovaservers.com/assets/FiveMScriptVersions/tk-peyote/version.txt", function(statusCode, response, headers)
    if statusCode == 200 then
        if response ~= version then
            print( "^7Tk-Peyote || ^6Developed By Tkiljoy^7 || Published By: TK Developments" )
            print("^4Version: ".."^1Your version of " .. resourceName .. " ^1is out of date. The latest version is " .. response)
        else
            print( "^7Tk-Peyote || ^6Developed By Tkiljoy^7 || Published By: TK Developments" )
            print("^4Version: ".."^2Your version of " .. resourceName .. " ^2is up to date.")
        end
    else
        -- print("Failed to check for updates. Error code: " .. statusCode)
        print( "^7Tk-Peyote || ^6Developed By Tkiljoy^7 || Published By: TK Developments" )
        print('^1Error: Failed to check for updates. Error code: ' .. statusCode)
    end
end, "GET", "", {})

QBCore.Functions.CreateUseableItem("bluepeyoteplant", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("bluepeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:bluepeyote", src)
end)

QBCore.Functions.CreateUseableItem("pinkpeyoteplant", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("pinkpeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:pinkpeyote", src)
end)

QBCore.Functions.CreateUseableItem("whitepeyoteplant", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("whitepeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:whitepeyote", src)
end)

QBCore.Functions.CreateUseableItem("yellowpeyoteplant", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("yellowpeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:yellowpeyote", src)
end)