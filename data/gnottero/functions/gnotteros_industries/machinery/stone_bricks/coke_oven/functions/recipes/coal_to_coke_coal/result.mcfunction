# End of the process
    
    # Removing the tags and settig the scoreboard value to 0
        tag @s remove gn.is_working
        tag @s remove gn.scheduled
        scoreboard players set @s gn.process_phase 0

    # Give the results
        loot insert -7 4 11 mine -7 4 11 minecraft:diamond_axe
        scoreboard players add @s gn.creosote_tank 500
        function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_16
        replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280000, display: {Name: '{"text":""}'}}