# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 12b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:12b}]
    loot replace block ~ ~ ~ container.12 loot gnottero:placeholders/locked_slot