if GetResourceState('es_extended') ~= 'started' then return end

local ESX = exports['es_extended']:getSharedObject()

function getPlayer(src)
    return ESX.GetPlayerFromId(src)
end

function getPlayerJob(src)
    local Player = getPlayer(src)
    return Player.job.name
end