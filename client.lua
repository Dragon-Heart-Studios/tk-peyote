local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state.isLoggedIn

RegisterNetEvent('tk-peyote:client:bluepeyote', function()
   QBCore.Functions.Progressbar("peyote", "Eating Strange Plant...", math.random(3000, 6000), false, true, {
       disableMovement = false,
       disableCarMovement = false,
       disableMouse = false,
       disableCombat = true,
   }, {}, {}, {}, function() -- Done
      QBCore.Functions.Notify("Plant Tasted Ok. You Feel Fine", "success")
       PeyoteEffect()
   end, function() -- Cancel
       QBCore.Functions.Notify("Cancelled..", "error")
   end)
end)

RegisterNetEvent('tk-peyote:client:pinkpeyote', function()
   QBCore.Functions.Progressbar("peyote", "Eating Strange Plant...", math.random(3000, 6000), false, true, {
       disableMovement = false,
       disableCarMovement = false,
       disableMouse = false,
       disableCombat = true,
   }, {}, {}, {}, function() -- Done
      QBCore.Functions.Notify("Plant Tasted Ok. You Feel Fine", "success")
       PeyoteEffect()
   end, function() -- Cancel
       QBCore.Functions.Notify("Cancelled..", "error")
   end)
end)

RegisterNetEvent('tk-peyote:client:whitepeyote', function()
   QBCore.Functions.Progressbar("peyote", "Eating Strange Plant...", math.random(3000, 6000), false, true, {
       disableMovement = false,
       disableCarMovement = false,
       disableMouse = false,
       disableCombat = true,
   }, {}, {}, {}, function() -- Done
      QBCore.Functions.Notify("Plant Tasted Ok. You Feel Fine", "success")
       PeyoteEffect()
   end, function() -- Cancel
       QBCore.Functions.Notify("Cancelled..", "error")
   end)
end)

RegisterNetEvent('tk-peyote:client:yellowpeyote', function()
   QBCore.Functions.Progressbar("peyote", "Eating Strange Plant...", math.random(3000, 6000), false, true, {
       disableMovement = false,
       disableCarMovement = false,
       disableMouse = false,
       disableCombat = true,
   }, {}, {}, {}, function() -- Done
      QBCore.Functions.Notify("Plant Tasted Ok. You Feel Fine", "success")
       PeyoteEffect()
   end, function() -- Cancel
       QBCore.Functions.Notify("Cancelled..", "error")
   end)
end)

function PeyoteEffect()
   local ped = PlayerPedId()
   local randomSpawn = math.random(1,14)
   local animals = { 'a_c_boar', 'a_c_chickenhawk', 'a_c_chimp', 'a_c_cormorant', 'a_c_cow', 'a_c_coyote', 'a_c_crow', 'a_c_deer', 'a_c_mtlion', 'a_c_pig', 'a_c_pigeon', 'a_c_rabbit_01', 'a_c_rat', 'a_c_seagull' }
   local random_animal = animals[math.random(1,#animals)]
   local model = GetHashKey(random_animal)
   local fallback_model = GetHashKey('a_m_y_skater_01')
   RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
   Wait(240000)
   QBCore.Functions.Notify("Mouth Begins to Get Dry", "success")
   Wait(30000)
   QBCore.Functions.Notify("Head is Pounding, and You begin to sweat", "success")
   Wait(10000)
   QBCore.Functions.Notify("You feel sharp pains in all your bones", "success")
   Wait(10000)
   StartScreenEffect("PeyoteIn", 3.0, 0)
   StartScreenEffect("PeyoteOut", 3.0, 0)
   DoScreenFadeOut(1000)
   SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
   Wait(10000)
   SetPlayerModel(PlayerId(), model)
   DoScreenFadeIn(1000)
   StopScreenEffect("PeyoteIn")
   StopScreenEffect("PeyoteOut")
   Wait(600000)
   RequestModel(fallback_model)
        while not HasModelLoaded(fallback_model) do
            RequestModel(fallback_model)
            Citizen.Wait(0)
        end
   StartScreenEffect("PeyoteEndIn", 3.0, 0)
   StartScreenEffect("PeyoteEndOut", 3.0, 0)
   DoScreenFadeOut(1000)
   SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
   Wait(10000)
   SetPlayerModel(PlayerId(), fallback_model)
   DoScreenFadeIn(1000)
   StopScreenEffect("PeyoteEndIn")
   StopScreenEffect("PeyoteEndOut")
   QBCore.Functions.Notify("The effects wore off things seem to be normal now [Change Your Skin]", "success")
end
