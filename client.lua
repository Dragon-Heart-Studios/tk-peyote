RegisterNetEvent('DHS-Peyote:client:peyoteEffect', function()
   Framework.ProgressBar({
      duration = math.random(3000, 6000),
      label = "Eating Strange Plant...",
      canCancel = true,
      disable = {
          move = true,
          vehicle = true,
          combat = true,
          mouse = false
      },
      onFinish = function()
         Framework.Notify("Plant Tasted Ok. You Feel Fine", "success")
         PeyoteEffect()
      end,
      onCancel = function()
         Framework.Notify("Cancelled..", "error")
      end
  })
end)

function PeyoteEffect()
   local ped = PlayerPedId()
   local randomSpawn = math.random(1,14)
   local ranmodel
   if randomSpawn == 1 then
      ranmodel = 'a_c_boar'
    elseif randomSpawn == 2 then
      ranmodel = 'a_c_chickenhawk'
   elseif randomSpawn == 3 then
      ranmodel = 'a_c_chimp'
   elseif randomSpawn == 4 then
      ranmodel = 'a_c_cormorant'
   elseif randomSpawn == 5 then
      ranmodel = 'a_c_cow'
   elseif randomSpawn == 6 then
      ranmodel = 'a_c_coyote'
   elseif randomSpawn == 7 then
      ranmodel = 'a_c_crow'
   elseif randomSpawn == 8 then
      ranmodel = 'a_c_deer'
   elseif randomSpawn == 9 then
      ranmodel = 'a_c_mtlion'
   elseif randomSpawn == 10 then
      ranmodel = 'a_c_pig'
   elseif randomSpawn == 11 then
      ranmodel = 'a_c_pigeon'
   elseif randomSpawn == 12 then
      ranmodel = 'a_c_rabbit_01'
   elseif randomSpawn == 13 then
      ranmodel = 'a_c_rat'
   else
      ranmodel = 'a_c_seagull'
   end
   local model = GetHashKey(ranmodel)
   local setbackmodel = GetHashKey('a_m_y_skater_01')
   RequestModel(model)
      while not HasModelLoaded(model) do
         RequestModel(model)
         Wait(0)
      end
   Wait(240000)
   Framework.Notify("Mouth Begins to Get Dry", "success")
   Wait(30000)
   Framework.Notify("Head is Pounding, and You begin to sweat", "success")
   Wait(10000)
   Framework.Notify("You feel sharp pains in all your bones", "success")
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
   RequestModel(setbackmodel)
      while not HasModelLoaded(setbackmodel) do
         RequestModel(setbackmodel)
         Wait(0)
      end
   StartScreenEffect("PeyoteEndIn", 3.0, 0)
   StartScreenEffect("PeyoteEndOut", 3.0, 0)
   DoScreenFadeOut(1000)
   SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
   Wait(10000)
   SetPlayerModel(PlayerId(), setbackmodel)
   DoScreenFadeIn(1000)
   StopScreenEffect("PeyoteEndIn")
   StopScreenEffect("PeyoteEndOut")
   Framework.Notify("The effects wore off things seem to be normal now [Change Your Skin]", "success")
end

