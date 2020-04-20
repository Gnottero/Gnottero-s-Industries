# If the barrel slots aren't matching the regular positioning, then find all the irregularities and fix them

    # Executing a research to find the irregularities in each slot and running the releated slot function to fix them [Can be pretty laggy, still need some testing]
        execute unless data block ~ ~ ~ Items[{Slot: 0b}].tag{ctc: {traits: ["item", "item/gui_idle_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_0
        execute unless data block ~ ~ ~ Items[{Slot: 1b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_1
        execute unless data block ~ ~ ~ Items[{Slot: 2b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_2
        execute unless data block ~ ~ ~ Items[{Slot: 3b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_3
        execute unless data block ~ ~ ~ Items[{Slot: 4b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_4
        execute unless data block ~ ~ ~ Items[{Slot: 5b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_5
        execute unless data block ~ ~ ~ Items[{Slot: 6b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_6
        execute unless data block ~ ~ ~ Items[{Slot: 8b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_8
        execute unless data block ~ ~ ~ Items[{Slot: 9b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_9
        execute unless data block ~ ~ ~ Items[{Slot: 11b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_11
        execute unless data block ~ ~ ~ Items[{Slot: 12b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_12
        execute unless data block ~ ~ ~ Items[{Slot: 13b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_13
        execute unless data block ~ ~ ~ Items[{Slot: 15b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_15
        execute unless data block ~ ~ ~ Items[{Slot: 16b}].tag{ctc: {traits: ["item","item/creosote_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_16
        execute unless data block ~ ~ ~ Items[{Slot: 17b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_17
        execute unless data block ~ ~ ~ Items[{Slot: 18b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_18
        execute unless data block ~ ~ ~ Items[{Slot: 19b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_19
        execute unless data block ~ ~ ~ Items[{Slot: 20b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_20
        execute unless data block ~ ~ ~ Items[{Slot: 21b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_21
        execute unless data block ~ ~ ~ Items[{Slot: 22b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_22
        execute unless data block ~ ~ ~ Items[{Slot: 23b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_23
        execute unless data block ~ ~ ~ Items[{Slot: 24b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_24
        execute unless data block ~ ~ ~ Items[{Slot: 26b}].tag{ctc: {traits: ["item", "item/locked_placeholder"]}} run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/locked_slots/slot_26


    # If there was an item in a locked slot, then take all its data from the storage, summon a copy of it and remove it from the storage
        execute if data storage gnottero:dev_gui/disenchanter drop_items[] run function gnottero:dev_gui/trait/disenchanter/ui/return_item

    # If there is a player with a placeholder in his inventory, then clear it
        clear @a[distance=..5.5] #gnottero:placeholders{ctc:{traits:["placeholder"]}}

    # If the player drops a placeholder, then kill it
        execute if entity @e[type=item,distance=..5.5,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}}] run kill @e[type=item,distance=..5.5,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}}]