# If the player puts some coal inside the right slot of the coke oven, then start the processing of the coal
# Turns 1 coal into coke coal in 45 seconds and produces 1 coke coal and 500mb of Creosote Oil

    # Decrease the number of the coal inside by 1
        execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players remove @s gn.get_num 1

    # Adding some tags to the executor
        tag @s add gn.is_working
        tag @s add gn.scheduled

    # Storing the actual gametime in the "gn.action_time" score, then adding the interval
        execute store result score @s gn.action_time run time query gametime
        scoreboard players operation @s gn.action_time += $interval gn.action_time

    # Scheduling the "gnottero:dev_gui/trait/alloy_foundry/function/recipes/ancient_steel_ingot/result" running it in 20s
        execute unless score @s gn.process_phase matches 6 run schedule function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/functions/recipes/coal_to_coke_coal/process_phase 9s append