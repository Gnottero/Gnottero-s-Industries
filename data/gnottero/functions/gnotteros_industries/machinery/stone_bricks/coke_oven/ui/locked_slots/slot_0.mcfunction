# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 0b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:0b}]
    replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "item/gui_idle_placeholder"], id: "gui_idle_placeholder"}, CustomModelData: 128000, display: {Name: '{"text":""}'}}