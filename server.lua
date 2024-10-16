Framework.CreateUseableItem('bluepeyoteplant', function(source, item, data)
    local src = source
    Framework.RemoveItem(src, 'bluepeyoteplant', 1)
    TriggerClientEvent("DHS-Peyote:client:peyoteEffect", src)
end)

Framework.CreateUseableItem('pinkpeyoteplant', function(source, item, data)
    local src = source
    Framework.RemoveItem(src, 'pinkpeyoteplant', 1)
    TriggerClientEvent("DHS-Peyote:client:peyoteEffect", src)
end)

Framework.CreateUseableItem('whitepeyoteplant', function(source, item, data)
    local src = source
    Framework.RemoveItem(src, 'whitepeyoteplant', 1)
    TriggerClientEvent("DHS-Peyote:client:peyoteEffect", src)
end)

Framework.CreateUseableItem("yellowpeyoteplant", function(source, item, data)
    local src = source
    Framework.RemoveItem(src, 'yellowpeyoteplant', 1)
    TriggerClientEvent("DHS-Peyote:client:peyoteEffect", src)
end)