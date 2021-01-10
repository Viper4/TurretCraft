execute at @s[tag=!Flame,tag=!Player] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 10 1
execute at @s[tag=Flame,tag=!Player] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 10 1.2
execute at @s[tag=Missile,tag=!Player] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 10 1.4
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.03 1
execute store result entity @s[tag=Player] Owner[0] int 1 run data get entity @p UUID[0]
execute store result entity @s[tag=Player] Owner[1] int 1 run data get entity @p UUID[1]
execute store result entity @s[tag=Player] Owner[2] int 1 run data get entity @p UUID[2]
execute store result entity @s[tag=Player] Owner[3] int 1 run data get entity @p UUID[3]
execute store result entity @s[tag=!Player] Owner[0] int 1 run data get entity @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] UUID[0]
execute store result entity @s[tag=!Player] Owner[1] int 1 run data get entity @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] UUID[1]
execute store result entity @s[tag=!Player] Owner[2] int 1 run data get entity @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] UUID[2]
execute store result entity @s[tag=!Player] Owner[3] int 1 run data get entity @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] UUID[3]
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosX run data get entity @s Pos[0] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosY run data get entity @s Pos[1] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s TC_PosZ run data get entity @s Pos[2] 100000
execute store result score @s TC_PosX run data get entity @s Pos[0] 100000
execute store result score @s TC_PosY run data get entity @s Pos[1] 100000
execute store result score @s TC_PosZ run data get entity @s Pos[2] 100000
execute at @s run scoreboard players operation @s TC_PosX -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosX
execute at @s run scoreboard players operation @s TC_PosY -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosY
execute at @s run scoreboard players operation @s TC_PosZ -= @e[tag=BulletAnchor,limit=1,sort=nearest] TC_PosZ
execute store result entity @s[tag=!Missile,tag=!Flame] Motion[0] double 0.001 run scoreboard players get @s TC_PosX
execute store result entity @s[tag=!Missile,tag=!Flame] Motion[1] double 0.001 run scoreboard players get @s TC_PosY
execute store result entity @s[tag=!Missile,tag=!Flame] Motion[2] double 0.001 run scoreboard players get @s TC_PosZ
execute store result entity @s[tag=Flame] Motion[0] double 0.0002 run scoreboard players get @s TC_PosX
execute store result entity @s[tag=Flame] Motion[1] double 0.0002 run scoreboard players get @s TC_PosY
execute store result entity @s[tag=Flame] Motion[2] double 0.0002 run scoreboard players get @s TC_PosZ
execute store result entity @s[tag=Missile] Motion[0] double 0.00022 run scoreboard players get @s TC_PosX
execute store result entity @s[tag=Missile] Motion[1] double 0.00022 run scoreboard players get @s TC_PosY
execute store result entity @s[tag=Missile] Motion[2] double 0.00022 run scoreboard players get @s TC_PosZ
execute if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run tag @s[tag=Player] add AK47
execute if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run tag @s[tag=Player] add DE
execute if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run tag @s[tag=Player] add AWP
execute if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run tag @s[tag=Player] add M16
tag @s remove New