tag @a[tag=!Admin,tag=Owner,distance=..60] remove Owner
#execute at @s run scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID0 = @s TC_UUID0
#execute at @s run scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID1 = @s TC_UUID1
#execute at @s run scoreboard players operation @e[type=wither_skeleton,tag=TurretHealth,distance=..60] TC_UUID2 = @s TC_UUID2
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID0 run data get entity @p UUID[0]
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID1 run data get entity @p UUID[1]
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID2 run data get entity @p UUID[2]
scoreboard players operation @a[tag=!Admin,distance=..60] TC_UUID0 -= @s TC_UUID0
scoreboard players operation @a[tag=!Admin,distance=..60] TC_UUID1 -= @s TC_UUID1
scoreboard players operation @a[tag=!Admin,distance=..60] TC_UUID2 -= @s TC_UUID2
# Checking ownership of other turrets when there's many turrets caused too much lag and had bugs I'm too tired to fix
#scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID0 -= @s TC_UUID0
#scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID1 -= @s TC_UUID1
#scoreboard players operation @e[tag=TurretHealth,distance=1..60] TC_UUID2 -= @s TC_UUID2
tag @a[tag=!Owner,tag=!TC,distance=..60,scores={TC_UUID0=0,TC_UUID1=0,TC_UUID2=0}] add Owner
