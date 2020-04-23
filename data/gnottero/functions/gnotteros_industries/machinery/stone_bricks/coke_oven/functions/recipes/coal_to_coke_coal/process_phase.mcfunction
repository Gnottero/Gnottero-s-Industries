# Scheduling the process every 9 seconds
    execute store result score $current gn.action_time run time query gametime
    execute as @e[type=armor_stand,tag=gn.scheduled] if score @s gn.action_time = $current gn.action_time run scoreboard players add @s gn.process_phase 1
    execute as @e[type=armor_stand,tag=gn.scheduled,scores={gn.process_phase=1..5}] if score @s gn.action_time = $current gn.action_time at @s run function gnottero:dev_gui/trait/alloy_foundry/function/recipes/ancient_steel_ingot/result
    execute as @e[type=armor_stand,tag=gn.scheduled,scores={gn.process_phase=1..4}] if score @s gn.action_time = $current gn.action_time at @s run function gnottero:dev_gui/trait/alloy_foundry/function/recipes/ancient_steel_ingot/result