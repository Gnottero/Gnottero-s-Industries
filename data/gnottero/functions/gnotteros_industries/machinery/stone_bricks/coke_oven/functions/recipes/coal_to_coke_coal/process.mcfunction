# Changes the GUI basing on the process phase

    # Change the GUI every 9 seconds
        execute if entity @s[scores={gn.process_phase=180..359}] run replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280002, display: {Name: '{"text":""}'}}
        execute if entity @s[scores={gn.process_phase=360..539}] run replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280003, display: {Name: '{"text":""}'}}
        execute if entity @s[scores={gn.process_phase=540..719}] run replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280004, display: {Name: '{"text":""}'}}
        execute if entity @s[scores={gn.process_phase=720..889}] run replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280005, display: {Name: '{"text":""}'}}

    # Running the rusult function at the end of the process
        execute if entity @s[scores={gn.process_phase=900..}] run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/functions/recipes/coal_to_coke_coal/result
