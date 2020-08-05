execute at @e[type=armor_stand,tag=Frame] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run fill ~ ~ ~ ~ ~ ~ air replace #walls
execute at @e[type=armor_stand,tag=Frame] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run kill @e[tag=TC,distance=..1.3]
execute at @e[type=armor_stand,tag=Turret2C] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:2b,tag:{isComponent:1b,component:1,display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V1)","color":"white"}]'}}}}
execute at @e[type=armor_stand,tag=Turret2C] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:2b,tag:{isComponent:1b,component:2,display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}}}}
execute at @e[type=armor_stand,tag=TurretC] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run fill ~ ~ ~ ~ ~ ~ air replace #walls
execute at @e[type=armor_stand,tag=TurretC] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run kill @e[tag=TC,distance=..1.3]
execute as @e[type=armor_stand,tag=TC,tag=!Frame] at @s unless entity @e[type=armor_stand,tag=TurretC,distance=..1.3] run kill @s
