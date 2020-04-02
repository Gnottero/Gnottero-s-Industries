# Main function of the Engineer's Hammer subfolder

    # Runs the raycasting function if the player has right clicked with an Engineer's Hammer
        execute if entity @s[predicate=gnottero:tools/engineers_hammer] if score @s gn.raycast matches 1.. anchored eyes positioned ^ ^ ^0.1 run function gnottero:gnotteros_industries/tools/engineers_hammer/raycast
    
    # Set the scoreboard "gn.raycast" back to 0
        execute if score @s gn.raycast matches 1.. run scoreboard players set @s gn.raycast 0