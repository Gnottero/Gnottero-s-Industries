# If the barrel slots aren't matching the regular positioning, then find all the irregularities and fix them
        say debug
    # Executing a research to find the irregularities in each slot and running the releated slot function to fix them [Can be pretty laggy, still need some testing]
        execute unless data block ~ ~ ~ Items[{Slot: 0b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/gui_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_0
        execute unless data block ~ ~ ~ Items[{Slot: 1b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_1
        execute unless data block ~ ~ ~ Items[{Slot: 2b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_2
        execute unless data block ~ ~ ~ Items[{Slot: 3b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_3
        execute unless data block ~ ~ ~ Items[{Slot: 4b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_4
        execute unless data block ~ ~ ~ Items[{Slot: 5b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_5
        execute unless data block ~ ~ ~ Items[{Slot: 6b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_6
        execute unless data block ~ ~ ~ Items[{Slot: 8b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_8
        execute unless data block ~ ~ ~ Items[{Slot: 9b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_9
        execute unless data block ~ ~ ~ Items[{Slot: 11b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_11
        execute unless data block ~ ~ ~ Items[{Slot: 12b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_12
        execute unless data block ~ ~ ~ Items[{Slot: 13b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_13
        execute unless data block ~ ~ ~ Items[{Slot: 15b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_15
        execute unless data block ~ ~ ~ Items[{Slot: 16b, Count:1b}].tag{ctc: {traits: ["item","placeholder","item/creosote_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_16
        execute unless data block ~ ~ ~ Items[{Slot: 17b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_17
        execute unless data block ~ ~ ~ Items[{Slot: 18b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_18
        execute unless data block ~ ~ ~ Items[{Slot: 19b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_19
        execute unless data block ~ ~ ~ Items[{Slot: 20b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_20
        execute unless data block ~ ~ ~ Items[{Slot: 21b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_21
        execute unless data block ~ ~ ~ Items[{Slot: 22b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_22
        execute unless data block ~ ~ ~ Items[{Slot: 23b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_23
        execute unless data block ~ ~ ~ Items[{Slot: 24b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_24
        execute unless data block ~ ~ ~ Items[{Slot: 26b, Count:1b}].tag{ctc: {traits: ["item","placeholder", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_26


    # If there was an item in a locked slot, then take all its data from the storage, summon a copy of it and remove it from the storage
        execute if data storage gnottero:gnotteros_industries/coke_oven drop_items[] run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/return_item

    # If there is a player with a placeholder in his inventory, then clear it
        clear @a[distance=..5.5,nbt={Inventory:[{id:"minecraft:black_stained_glass_pane",tag:{ctc:{traits:["placeholder"]}}}]}] minecraft:black_stained_glass_pane{ctc:{traits:["placeholder"]}}

    # If the player drops a placeholder, then kill it
        execute if entity @e[type=item,distance=..5.5,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}}] run kill @e[type=item,distance=..5.5,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}}]