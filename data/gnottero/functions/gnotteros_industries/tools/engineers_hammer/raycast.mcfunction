# Running a raycast to check if the player hit the core of a structure and then running the right structure confirm function
    execute if block ~ ~ ~ #gnottero:machines_cores run function gnottero:gnotteros_industries/tools/engineers_hammer/structure_check/main
    execute unless block ~ ~ ~ #gnottero:air run scoreboard players set @s gn.raycast 0
    execute as @s[distance=..5] if score @s gn.raycast matches 1.. positioned ^ ^ ^0.1 run function gnottero:gnotteros_industries/tools/engineers_hammer/raycast