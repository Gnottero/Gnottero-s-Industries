# When the ray hits a block, check the area to see if it is a multi-block structure, and if so run the right function
    scoreboard players set @s gn.raycast 0
    summon armor_stand ~ ~ ~ {UUID:[I;0,128001,0,128001],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
    # summon armor_stand ~ ~ ~ {UUIDMost:128001L,UUIDLeast:128001L,NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
    execute as 00000000-0001-f401-0000-00000001f401 run function gnottero:gnotteros_industries/tools/engineers_hammer/structure_check/check_face
    execute as 00000000-0001-f401-0000-00000001f401 at 00000000-0001-f401-0000-00000001f401 if score 00000000-0001-f401-0000-00000001f401 gn.check_face matches 0..4 if block ^ ^ ^ stone_bricks run function gnottero:gnotteros_industries/tools/engineers_hammer/structure_check/stone_bricks/main
    kill 00000000-0001-f401-0000-00000001f401