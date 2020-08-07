tag @e[tag=!Admin,tag=Owner,distance=..60] remove Owner
scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID0 = @s TC_UUID0
scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID1 = @s TC_UUID1
scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID2 = @s TC_UUID2
scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID3 = @s TC_UUID3
execute at @e[tag=!TurretHealth,tag=!TC,distance=..60] store result score @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] TC_UUID0 run data get entity @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] UUID[0]
execute at @e[tag=!TurretHealth,tag=!TC,distance=..60] store result score @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] TC_UUID1 run data get entity @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] UUID[1]
execute at @e[tag=!TurretHealth,tag=!TC,distance=..60] store result score @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] TC_UUID2 run data get entity @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] UUID[2]
execute at @e[tag=!TurretHealth,tag=!TC,distance=..60] store result score @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] TC_UUID3 run data get entity @e[tag=!TurretHealth,tag=!TC,limit=1,sort=nearest] UUID[3]
scoreboard players operation @e[tag=!TC,tag=!TurretHealth,distance=..60] TC_UUID0 -= @s TC_UUID0
scoreboard players operation @e[tag=!TC,tag=!TurretHealth,distance=..60] TC_UUID1 -= @s TC_UUID1
scoreboard players operation @e[tag=!TC,tag=!TurretHealth,distance=..60] TC_UUID2 -= @s TC_UUID2
scoreboard players operation @e[tag=!TC,tag=!TurretHealth,distance=..60] TC_UUID3 -= @s TC_UUID3
scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID0 -= @s TC_UUID0
scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID1 -= @s TC_UUID1
scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID2 -= @s TC_UUID2
scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID3 -= @s TC_UUID3
tag @e[tag=!Owner,tag=!TC,distance=..60,scores={TC_UUID0=0,TC_UUID1=0,TC_UUID2=0,TC_UUID3=0}] add Owner
