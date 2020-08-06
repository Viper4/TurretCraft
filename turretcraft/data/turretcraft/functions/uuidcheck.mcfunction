execute at @s run tag @e[tag=!Admin,tag=Owner,distance=..60] remove Owner
execute at @s at @a[distance=..60] store result score @p TC_UUID0 run data get entity @p UUID[0]
execute at @s at @a[distance=..60] store result score @p TC_UUID1 run data get entity @p UUID[1]
execute at @s at @a[distance=..60] store result score @p TC_UUID2 run data get entity @p UUID[2]
execute at @s at @a[distance=..60] store result score @p TC_UUID3 run data get entity @p UUID[3]
execute at @s run scoreboard players operation @a[distance=..60] TC_UUID0 -= @s TC_UUID0
execute at @s run scoreboard players operation @a[distance=..60] TC_UUID1 -= @s TC_UUID1
execute at @s run scoreboard players operation @a[distance=..60] TC_UUID2 -= @s TC_UUID2
execute at @s run scoreboard players operation @a[distance=..60] TC_UUID3 -= @s TC_UUID3
execute at @s run tag @e[tag=!Owner,distance=..60,scores={TC_UUID0=0,TC_UUID1=0,TC_UUID2=0,TC_UUID3=0}] add Owner
