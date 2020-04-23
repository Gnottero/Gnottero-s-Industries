# Summon a placeholder item (minecraft:stone) and copy the item data into it
    summon item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b,tag:{ctc:{id:"dummy_item",from:"gnottero:dev_gui",traits:["item","dummy","item/dummy_item"]}}}}
    data modify entity @e[type=item,distance=..1.2,limit=1,nbt={Item:{id:"minecraft:stone",tag:{ctc:{id:"dummy_item",from:"gnottero:dev_gui",traits:["item","dummy","item/dummy_item"]}}}}] Item set from storage gnottero:gnotteros_industries/coke_oven drop_items[0]
    data remove storage gnottero:gnotteros_industries/coke_oven drop_items[0]