local QBCore = exports['qb-core']:GetCoreObject()

Logo = [[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
@@@@@@@  @@@  @@@             @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@   @@@@@@@  @@@@@@@@  
@@@@@@@  @@@  @@@             @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@@  @@@@@@@  @@@@@@@@  
  @@!    @@!  !@@             @@!  @@@  @@!       @@! !@@  @@!  @@@    @@!    @@!       
  !@!    !@!  @!!             !@!  @!@  !@!       !@! @!!  !@!  @!@    !@!    !@!       
  @!!    @!@@!@!   @!@!@!@!@  @!@@!@!   @!!!:!     !@!@!   @!@  !@!    @!!    @!!!:!    
  !!!    !!@!!!    !!!@!@!!!  !!@!!!    !!!!!:      @!!!   !@!  !!!    !!!    !!!!!:    
  !!:    !!: :!!              !!:       !!:         !!:    !!:  !!!    !!:    !!:       
  :!:    :!:  !:!             :!:       :!:         :!:    :!:  !:!    :!:    :!:       
   ::     ::  :::              ::        :: ::::     ::    ::::: ::     ::     :: ::::  
   :      :   :::              :        : :: ::      :      : :  :      :     : :: ::   
]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

CreateThread(function()
    print(Logo) 
    curVer = GetCurrentVersion()
    print( "Tk-Peyote || Current version: " .. curVer )             
end)

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