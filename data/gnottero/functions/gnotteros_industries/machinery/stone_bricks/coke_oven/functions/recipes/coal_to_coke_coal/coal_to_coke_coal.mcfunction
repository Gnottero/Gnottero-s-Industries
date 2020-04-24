# If the player puts some coal inside the right slot of the coke oven, then start the processing of the coal
# Turns 1 coal into coke coal in 45 seconds and produces 1 coke coal and 500mb of Creosote Oil

    # Decrease the number of the coal inside by 1
        execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players remove @s gn.get_num 1
        
    # Adding some tags to the executor
        tag @s add gn.is_working
        tag @s add gn.scheduled

    # Setting the 'gn.process_phase' to 1 and replacing the gui placeholder
        scoreboard players set @s gn.process_phase 1
        replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{ctc: {from: "gnotteros_industries", traits: ["item", "placeholder", "item/gui_placeholder"], id: "gui_placeholder"}, CustomModelData: 1280001, display: {Name: '{"text":""}'}}