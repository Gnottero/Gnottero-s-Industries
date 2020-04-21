# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 16b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:16b}]
    scoreboard players operation #gn.stored_creosote gn.creosote_tank = @s gn.creosote_tank
    setblock ^ ^ ^1 minecraft:oak_sign{Text1:'[{"text":"Creosote: ","color":"gray","italic":false},{"score":{"name":"#gn.stored_creosote","objective":"gn.creosote_tank"}},{"text":"/12000mb"}]'} replace
    replaceitem block ~ ~ ~ container.16 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/creosote_placeholder"], id: "creosote_placeholder"}, CustomModelData: 128001, display: {Lore: ['[{"text":"Creosote:","italic":false,"color":"gray"},{"text":""}]'], Name: '{"text":"Stored Creosote","italic":false}'}}
    data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[0] set from block ^ ^ ^1 Text1
    setblock ^ ^ ^1 stone_bricks