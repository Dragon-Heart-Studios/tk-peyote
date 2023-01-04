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
    print( "Tk-Peyote || Current version: " .. GetCurrentVersion() )             
end)

QBCore.Functions.CreateUseableItem("bluepeyoteplant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("bluepeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:bluepeyote", source)
end)

QBCore.Functions.CreateUseableItem("pinkpeyoteplant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("pinkpeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:pinkpeyote", source)
end)

QBCore.Functions.CreateUseableItem("whitepeyoteplant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("whitepeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:whitepeyote", source)
end)

QBCore.Functions.CreateUseableItem("yellowpeyoteplant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "remove")
    Player.Functions.RemoveItem("yellowpeyoteplant",1)
    TriggerClientEvent("tk-peyote:client:yellowpeyote", source)
end)
