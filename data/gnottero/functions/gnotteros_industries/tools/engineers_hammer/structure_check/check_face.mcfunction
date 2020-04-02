# Detecting which face the player right-clicked on

        execute as @s store result score #gn.distance_x gn.check_face run data get entity @s Pos[0] 10000
        execute as @s store result score #gn.distance_y gn.check_face run data get entity @s Pos[1] 10000
        execute as @s store result score #gn.distance_z gn.check_face run data get entity @s Pos[2] 10000
        
        execute as @s at @s align xyz run tp @s ~ ~ ~
        execute as @s store result score #gn.block_x gn.check_face run data get entity @s Pos[0] 10000
        execute as @s store result score #gn.block_y gn.check_face run data get entity @s Pos[1] 10000
        execute as @s store result score #gn.block_z gn.check_face run data get entity @s Pos[2] 10000
        
        scoreboard players set #gn.face gn.check_face -10000

        # NORTH
            scoreboard players operation #gn.north gn.check_face = #gn.block_z gn.check_face
            scoreboard players operation #gn.north gn.check_face -= #gn.distance_z gn.check_face
            
            execute if score #gn.north gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.north gn.check_face 1
            execute if score #gn.north gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.north gn.check_face

        # SOUTH    
            scoreboard players operation #gn.south gn.check_face = #gn.distance_z gn.check_face
            scoreboard players operation #gn.south gn.check_face -= #gn.block_z gn.check_face
            scoreboard players remove #gn.south gn.check_face 10000

            execute if score #gn.south gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.south gn.check_face 1
            execute if score #gn.south gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.south gn.check_face
        
        # DOWN
            scoreboard players operation #gn.down gn.check_face = #gn.block_y gn.check_face
            scoreboard players operation #gn.down gn.check_face -= #gn.distance_y gn.check_face
            
            execute if score #gn.down gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.down gn.check_face 1
            execute if score #gn.down gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.down gn.check_face

        # UP    
            scoreboard players operation #gn.up gn.check_face = #gn.distance_y gn.check_face
            scoreboard players operation #gn.up gn.check_face -= #gn.block_y gn.check_face
            scoreboard players remove #gn.up gn.check_face 10000

            execute if score #gn.up gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.up gn.check_face 1
            execute if score #gn.up gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.up gn.check_face
        
        # EST
            scoreboard players operation #gn.east gn.check_face = #gn.distance_x gn.check_face
            scoreboard players operation #gn.east gn.check_face -= #gn.block_x gn.check_face
            scoreboard players remove #gn.east gn.check_face 10000
            
            execute if score #gn.east gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.east gn.check_face 1
            execute if score #gn.east gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.east gn.check_face

        # OVEST    
            scoreboard players operation #gn.west gn.check_face = #gn.block_x gn.check_face
            scoreboard players operation #gn.west gn.check_face -= #gn.distance_x gn.check_face

            execute if score #gn.west gn.check_face = #gn.face gn.check_face run scoreboard players remove #gn.west gn.check_face 1
            execute if score #gn.west gn.check_face > #gn.face gn.check_face run scoreboard players operation #gn.face gn.check_face = #gn.west gn.check_face

        # Assingning a value to each face and rotating the armor_stand to the opposite face
            execute if score #gn.face gn.check_face = #gn.north gn.check_face run scoreboard players set @s gn.check_face 0
            execute if score #gn.face gn.check_face = #gn.east gn.check_face run scoreboard players set @s gn.check_face 1
            execute if score #gn.face gn.check_face = #gn.south gn.check_face run scoreboard players set @s gn.check_face 2
            execute if score #gn.face gn.check_face = #gn.west gn.check_face run scoreboard players set @s gn.check_face 3
            execute if score #gn.face gn.check_face = #gn.up gn.check_face run scoreboard players set @s gn.check_face 90
            execute if score #gn.face gn.check_face = #gn.down gn.check_face run scoreboard players set @s gn.check_face -90

            execute if score @s gn.check_face matches 0..4 store result entity @s Rotation[0] float 90 run scoreboard players get @s gn.check_face
            execute unless score @s gn.check_face matches 0..4 store result entity @s Rotation[1] float 1 run scoreboard players get @s gn.check_face

            

        