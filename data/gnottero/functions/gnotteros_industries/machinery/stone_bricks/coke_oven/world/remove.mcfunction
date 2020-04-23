# Removing the barrel, killing the placeholders and killing the executor

    execute unless block ~ ~ ~ barrel run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_bricks",Count:1b}}
    execute if block ~ ~ ~ barrel run setblock ~ ~ ~ stone_bricks
    clear @a[distance=..5.5,nbt={Inventory:[{id:"minecraft:black_stained_glass_pane",tag:{ctc:{traits:["placeholder"]}}}]}] minecraft:black_stained_glass_pane{ctc:{traits:["placeholder"]}}
    execute if entity @e[type=item,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}},distance=..1] run kill @e[type=item,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}},distance=..1]
    kill @s