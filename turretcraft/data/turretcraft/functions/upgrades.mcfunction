# All Vanilla commands for turret upgrades
# Made by: Viper1618
#--------------------

#Sniper
	execute as @e[type=armor_stand,tag=Turret1C,tag=!MaxTier] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1] run scoreboard players add @s TC_TurretCon 1
	execute as @e[type=armor_stand,tag=Turret1C,tag=!MaxTier] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Installed Component.","color":"gray"}]
	execute as @e[type=armor_stand,tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:smooth_stone",Count:1b}],HandItems:[{},{}]}
	execute as @e[type=armor_stand,tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:green_glazed_terracotta",Count:1b}],HandItems:[{},{}]}

#Machine Gun
	execute as @e[type=armor_stand,tag=Turret2C,tag=!MaxTier] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1] run scoreboard players add @s TC_TurretCon 1
	execute as @e[type=armor_stand,tag=Turret2C,tag=!MaxTier] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Installed Component.","color":"gray"}]
	execute as @e[type=armor_stand,tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:chiseled_quartz_block",Count:1b}],HandItems:[{},{}]}
	execute as @e[type=armor_stand,tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:light_gray_glazed_terracotta",Count:1b}],HandItems:[{},{}]}

execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=!MaxTier,scores={TC_TurretCon=-6..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1]
execute at @e[type=armor_stand,tag=Turret2C,tag=!MaxTier,scores={TC_TurretCon=-6..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
execute as @e[type=armor_stand,tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
		