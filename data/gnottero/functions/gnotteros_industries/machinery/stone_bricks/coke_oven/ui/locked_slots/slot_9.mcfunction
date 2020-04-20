# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 9b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:9b}]
    replaceitem block ~ ~ ~ container.9 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "item/locked_placeholder"], id: "locked_placeholder"}, CustomModelData: 128001, display: {Name: '{"text":""}'}}
