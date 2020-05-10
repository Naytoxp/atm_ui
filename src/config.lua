Config = {}

-------------------------------------------------------------
------ SET TO FALSE UNLESS YOU KNOW WHAT YOU'RE DOING -------
-------------------------------------------------------------

Config.EnableDev = true

-- UNLESS YOU HAVE A BETTER WAY, I ADVICE YOU TO JUST EDIT THE SERVER SIDE
Config.GetPlayerMoney = function(action)
    TriggerServerEvent("atm:handlingMoney", action)
end

Config.MoneyLevel = { ---DO NOT TOUCH TO THE KEY ENTRIES | "MAX" IS IF YOU ANT TO BE ABLE TO DEPOSIT ALL THE CASH
    [1] = 100, 
    [2] = 200,
    [3] = 500,
    [5] = 1000,
    [6] = 2500,
    [7] = "max"
    
}

Config.ATM = {
    [0] = { -- Withdraw
        action = function(amount)
            -- UNLESS YOU HAVE A BETTER WAY, I ADVICE YOU TO JUST EDIT THE SERVER SIDE
            TriggerServerEvent("atm:handlingMoney", "withdraw", amount)

        end
    },
    [1] = { -- Deposit
        action = function(amount)
            -- UNLESS YOU HAVE A BETTER WAY, I ADVICE YOU TO JUST EDIT THE SERVER SIDE
            TriggerServerEvent("atm:handlingMoney", "deposit", amount)

        end
    },

}

--[[
Config.Operations = { -- SOME MESSAGE THAT ARE FROM THE GAME, UNUSABLE FOR NOW, MAYBE LATER
    [0] = {
        [1]  = "MONEY_SPENT_CONTACT_SERVICE",
        [2]  = "MONEY_SPENT_PROPERTY_UTIL",
        [3]  = "MONEY_SPENT_JOB_ACTIVITY",
        [4]  = "MONEY_SPENT_BETTING",
        [5]  = "MONEY_SPENT_STYLE_ENT",
        [6]  = "MONEY_SPENT_HEALTHCARE",
        [7]  = "MONEY_SPENT_DROPPED_STOLEN",
        [8]  = "MONEY_SPENT_VEH_MAINTENANCE",
        [9] = "MONEY_SPENT_PASSIVEMODE",
        [10] = "MONEY_SPENT_PROPERTY_UTIL",
        [11] = "MONEY_SPENT_STYLE_ENT",
        [12] = "MONEY_SPENT_CONTACT_SERVICE",
        
    },
    [1] = {
        [1]  = "MONEY_EARN_REFUND",
        [2]  = "MONEY_EARN_JOBS",
        [3]  = "MONEY_EARN_SELLING_VEH",
        [4]  = "MONEY_EARN_BETTING",
        [5]  = "MONEY_EARN_GOOD_SPORT",
        [6]  = "MONEY_EARN_PICKED_UP",
        [7]  = "MONEY_EARN_SHARED",
        [8]  = "MONEY_EARN_JOBSHARED",
        [9]  = "MONEY_EARN_ROCKSTAR_AWARD",
        [10] = "MONEY_EARN_REFUND",
        [11] = "MONEY_EARN_JOB_BONUS",
        [12] = "MONEY_EARN_HEIST_JOB",
        
    }
}]]

