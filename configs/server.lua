return {
    payOut = {              -- Payout min/max
        min = 50,
        max = 250,
    },
    payOutChance = {        -- Chance player receives cash
        min = 70,
        max = 80
    },
    chanceItemsFound = {    -- Chance player finds items
        min = 80,
        max = 90
    },
    lootableItems = {       -- Items player can loot
        { item = 'rolex', min = 1, max = 2 },
        { item = 'phone', min = 1, max = 2 },
        { item = 'goldchain', min = 1, max = 2 },
        { item = 'diamond_ring', min = 1, max = 2 },
        { item = '10kgoldchain', min = 1, max = 2 },
        { item = 'tablet', min = 1, max = 2 },
    },
    policeJobs = {
        'police',
        'lspd'
    },

    addCash = function(src, amount)
        local player = getPlayer(src) -- Here's your player, use that as you want
        -- player.Functions.AddMoney('cash', amount)  -- qb/qbx

        return exports.ox_inventory:AddItem(src, 'money', amount)
    end,

    addItem = function(src, item, amount)
        local player = getPlayer(src) -- Here's your player, use that as you want
        -- player.Functions.AddItem(item, amount)  -- qb/qbx

        return exports.ox_inventory:AddItem(src, item, amount)
    end
}