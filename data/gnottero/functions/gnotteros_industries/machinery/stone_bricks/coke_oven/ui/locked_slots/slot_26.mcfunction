# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 26b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:26b}]
    replaceitem block ~ ~ ~ container.26 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/locked_placeholder"], id: "locked_placeholder"}, CustomModelData: 1280006, display: {Name: '{"text":""}'}}
