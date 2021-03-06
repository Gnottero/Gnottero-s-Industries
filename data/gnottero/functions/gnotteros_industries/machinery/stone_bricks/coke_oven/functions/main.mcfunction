# Execute the functions in the recipe folder

    # Getting the number of the items inside the 10th slot of the barrel
        execute if data block ~ ~ ~ Items[{Slot:10b}].Count store result score @s gn.get_num run data get block ~ ~ ~ Items[{Slot:10b}].Count
        
    # Executing the recipe functions basing on which item is inside the barrel
        execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:coal"}].Count unless entity @s[tag=gn.is_working] run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/functions/recipes/coal_to_coke_coal/coal_to_coke_coal
        
    # Increasing the 'gn.process_phase' score
        scoreboard players add @e[type=armor_stand,tag=gn.is_working] gn.process_phase 1

    # Executing the chenge_gui function, to change the GUI
        function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/functions/recipes/coal_to_coke_coal/process