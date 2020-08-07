execute at @s[tag=!Flame,tag=!Player] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 10 1
execute at @s[tag=Flame,tag=!Player] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 10 1.2
execute at @s[tag=Missile,tag=!Player] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 10 1.4
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 1
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosX run data get entity @s Pos[0] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosY run data get entity @s Pos[1] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosZ run data get entity @s Pos[2] 100000
execute store result score @s TC_PosX run data get entity @s Pos[0] 100000
execute store result score @s TC_PosY run data get entity @s Pos[1] 100000
execute store result score @s TC_PosZ run data get entity @s Pos[2] 100000
execute at @s run scoreboard players operation @s TC_PosX -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosX
execute at @s run scoreboard players operation @s TC_PosY -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosY
execute at @s run scoreboard players operation @s TC_PosZ -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosZ
execute as @s[tag=!Missile,tag=!Flame] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s TC_PosX
execute as @s[tag=!Missile,tag=!Flame] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s TC_PosY
execute as @s[tag=!Missile,tag=!Flame] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s TC_PosZ
execute as @s[tag=Flame] store result entity @s Motion[0] double 0.00002 run scoreboard players get @s TC_PosX
execute as @s[tag=Flame] store result entity @s Motion[1] double 0.00002 run scoreboard players get @s TC_PosY
execute as @s[tag=Flame] store result entity @s Motion[2] double 0.00002 run scoreboard players get @s TC_PosZ
execute as @s[tag=Missile] store result entity @s Motion[0] double 0.000022 run scoreboard players get @s TC_PosX
execute as @s[tag=Missile] store result entity @s Motion[1] double 0.000022 run scoreboard players get @s TC_PosY
execute as @s[tag=Missile] store result entity @s Motion[2] double 0.000022 run scoreboard players get @s TC_PosZ
tag @s remove New
