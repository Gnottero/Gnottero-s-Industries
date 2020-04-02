# Main function of the "Experience Extractor" Trait, called by the "gnottero:dev_gui/trait/entity/main"
        
    # Reset the age and duration of the executor
        # execute if block ^ ^ ^ barrel if block ^ ^1 ^ stone_bricks if block ^ ^-1 ^ stone_bricks if block ^ ^ ^1 stone_bricks if block ^ ^1 ^1 stone_bricks if block ^ ^-1 ^1 stone_bricks if block ^ ^ ^2 stone_bricks if block ^ ^1 ^2 stone_bricks if block ^ ^-1 ^2 stone_bricks if block ^-1 ^ ^ stone_bricks if block ^-1 ^1 ^ stone_bricks if block ^-1 ^-1 ^ stone_bricks if block ^-1 ^ ^1 stone_bricks if block ^-1 ^1 ^1 stone_bricks if block ^-1 ^-1 ^1 stone_bricks if block ^-1 ^ ^2 stone_bricks if block ^-1 ^1 ^2 stone_bricks if block ^-1 ^-1 ^2 stone_bricks if block ^1 ^ ^ stone_bricks if block ^1 ^1 ^ stone_bricks if block ^1 ^-1 ^ stone_bricks if block ^1 ^ ^1 stone_bricks if block ^1 ^1 ^1 stone_bricks if block ^1 ^-1 ^1 stone_bricks if block ^1 ^ ^2 stone_bricks if block ^1 ^1 ^2 stone_bricks if block ^1 ^-1 ^2 stone_bricks run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/mantain

    # If the block at the current position isn't a barrel, then kill the entity
        execute unless block ~ ~ ~ barrel run function gnottero:dev_gui/trait/disenchanter/world/remove

    # If a UI component is missing then run the main function of the UI module
        execute if entity @s[predicate=!gnottero:coke_oven/matches_barrel] if block ~ ~ ~ barrel[open=true] run function gnottero:gnotteros_industries/machinery/stone_bricks/coke_oven/ui/main