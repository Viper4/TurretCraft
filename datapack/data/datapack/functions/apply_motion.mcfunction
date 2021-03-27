data merge entity @s {Item:{tag:{applyMotion:0b}}}
execute as @e[tag=MotionAnchor,limit=1,sort=nearest] store result score @s PosX run data get entity @s Pos[0] 3000
execute as @e[tag=MotionAnchor,limit=1,sort=nearest] store result score @s PosY run data get entity @s Pos[1] 3000
execute as @e[tag=MotionAnchor,limit=1,sort=nearest] store result score @s PosZ run data get entity @s Pos[2] 3000
execute store result score @s PosX run data get entity @s Pos[0] 3000
execute store result score @s PosY run data get entity @s Pos[1] 3000
execute store result score @s PosZ run data get entity @s Pos[2] 3000
execute at @s store result entity @s Motion[0] double 0.001 run scoreboard players operation @s PosX -= @e[tag=MotionAnchor,limit=1,sort=nearest] PosX
execute at @s store result entity @s Motion[1] double 0.001 run scoreboard players operation @s PosY -= @e[tag=MotionAnchor,limit=1,sort=nearest] PosY
execute at @s store result entity @s Motion[2] double 0.001 run scoreboard players operation @s PosZ -= @e[tag=MotionAnchor,limit=1,sort=nearest] PosZ
kill @e[tag=MotionAnchor,limit=1,sort=nearest]
