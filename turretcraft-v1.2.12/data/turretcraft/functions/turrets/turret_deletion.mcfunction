execute at @s[tag=TurretC,tag=!Frame] unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run fill ~ ~ ~ ~ ~ ~ air replace #walls
execute at @s[tag=TurretC,tag=!Frame] unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run summon tnt ~ ~1 ~ {Fuse:1}
execute at @s[tag=TurretC,tag=!Frame] unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run kill @e[tag=TC,tag=!TurretLimit,distance=..1.3]

execute at @s[tag=Frame,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-5..-1}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:1b,tag:{isComponent:1b,component:1}}}
execute at @s[tag=Frame,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-5..-1}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:1b,tag:{isComponent:1b,component:2}}}
execute at @s[tag=Frame,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-5}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:1b,tag:{isComponent:1b,component:3}}}
execute at @s[tag=Frame,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-4}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:2b,tag:{isComponent:1b,component:3}}}
execute at @s[tag=Frame,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-5}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:1b,tag:{isComponent:1b,component:3}}}
execute at @s[tag=Frame,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-4}] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:2b,tag:{isComponent:1b,component:3}}}
execute at @s[tag=Frame] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run kill @e[tag=TC,distance=..1.3]

execute at @s[tag=TurretC] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run kill @e[tag=TurretHealth,distance=..1]
execute at @s[tag=TurretC] if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run kill @e[tag=TC,tag=!TurretLimit,distance=..1.3]
