QBWeed = {}

QBWeed.Progress = { -- How much progress will be added to a healthy plant every GrowthTick
    min = 1,        -- Changing this will change growth time progression. Example 1 to 50 will give 50 progression in the 9.6 min cycle.
    max = 3,        -- See above, make sure max is more then min.
}

QBWeed.ShowStages = true -- Show the stages of the plants
QBWeed.GrowthTick = 9.6  -- Amount of time (in mins) to increase plant growth & update health / nutrition (every second tick)
QBWeed.FoodUsage = 1     -- Amount of food to use per-tick

QBWeed.StageLabels = {
    [1] = 'Germination',
    [2] = 'Cây giống',
    [3] = 'Thực vật',
    [4] = 'Vừa mới nở',
    [5] = 'Chuẩn bị thu hoạch',
    [6] = 'Ra hoa',
    [7] = 'Sẵn sàng thu hoạch',
}

QBWeed.DefaultProps = {
    [1] = 'bkr_prop_weed_01_small_01c',
    [2] = 'bkr_prop_weed_01_small_01b',
    [3] = 'bkr_prop_weed_01_small_01a',
    [4] = 'bkr_prop_weed_med_01b',
    [5] = 'bkr_prop_weed_lrg_01a',
    [6] = 'bkr_prop_weed_lrg_01b',
    [7] = 'bkr_prop_weed_lrg_01b',
}

QBWeed.Plants = {
    ogkush = {
        label = 'OGKush ',
        item = 'weed_ogkush',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    amnesia = {
        label = 'Amnesia ',
        item = 'weed_amnesia',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    skunk = {
        label = 'Skunk ',
        item = 'weed_skunk',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    ak47 = {
        label = 'AK47 ',
        item = 'weed_ak47',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    purplehaze = {
        label = 'Purple Haze ',
        item = 'weed_purplehaze',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    whitewidow = {
        label = 'White Widow ',
        item = 'weed_whitewidow',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
}
