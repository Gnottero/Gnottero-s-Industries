# Changes the GUI basing on the process phase

    execute if score @s gn.process_phase matches 1 run replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 12800002, display: {Name: '{"text":""}'}} 