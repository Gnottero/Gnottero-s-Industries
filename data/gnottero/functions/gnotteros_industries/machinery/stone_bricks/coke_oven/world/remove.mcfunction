# Removing the barrel, killing the placeholders and killing the executor

    execute unless block ~ ~ ~ barrel run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_bricks",Count:1b}}
    execute if block ~ ~ ~ barrel run setblock ~ ~ ~ stone_bricks
    execute if entity @e[type=item,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}},distance=..1] run kill @e[type=item,nbt={Item:{tag:{ctc:{traits:["placeholder"]}}}},distance=..1]
    kill @s