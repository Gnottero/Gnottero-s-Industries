# Creating all the scoreboards that are need by the datapack

    # Initializing all the scoreboards
        scoreboard objectives add gn.raycast minecraft.used:minecraft.carrot_on_a_stick
        scoreboard objectives add gn.check_face dummy
        scoreboard objectives add gn.creosote_tank dummy
        scoreboard objectives add gn.get_num dummy
        scoreboard objectives add gn.action_time dummy
        scoreboard objectives add gn.process_phase dummy

    # Setting up fake players scoreboards value
        scoreboard players set $interval gn.action_time 180