# Save all the data of the irregular item in the "gnottero:gnotteros_industries/coke_oven" and put back the right item
    execute if data block ~ ~ ~ Items[{Slot: 3b}].Count run data modify storage gnottero:gnotteros_industries/coke_oven drop_items insert -1 from block ~ ~ ~ Items[{Slot:3b}]
    loot replace block ~ ~ ~ container.3 loot gnottero:placeholders/locked_slot