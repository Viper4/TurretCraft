# All Vanilla commands for turret upgrades
# Made by: Viper1618
#--------------------

#Upgrading
	execute at @s[tag=V1,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1] run scoreboard players add @s TC_TurretCon 1
	execute at @s[tag=V2,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1] run scoreboard players add @s TC_TurretCon 1
	execute at @s[tag=V3,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:3}}},distance=..1,limit=1] run scoreboard players add @s TC_TurretCon 1
	execute at @s[tag=V1,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Installed Component.","color":"gray"}]
	execute at @s[tag=V2,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Installed Component.","color":"gray"}]
	execute at @s[tag=V3,tag=!MaxTier] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:3}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Installed Component.","color":"gray"}]
	execute at @s[tag=V1,tag=!MaxTier,scores={TC_TurretCon=-6..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:1}}},distance=..1,limit=1]
	execute at @s[tag=V2,tag=!MaxTier,scores={TC_TurretCon=-6..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:2}}},distance=..1,limit=1]
	execute at @s[tag=V3,tag=!MaxTier,scores={TC_TurretCon=-6..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{component:3}}},distance=..1,limit=1]
#Data merging aesthetic pieces
	execute as @s[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:smooth_stone",Count:1b}],HandItems:[{},{}]}
	execute as @s[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:green_glazed_terracotta",Count:1b}],HandItems:[{},{}]}
	execute at @e[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:130}]}
	execute at @e[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:140}]}
	execute at @e[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 130
	execute at @e[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 140

	execute as @s[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:chiseled_quartz_block",Count:1b}],HandItems:[{},{}]}
	execute as @s[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:light_gray_glazed_terracotta",Count:1b}],HandItems:[{},{}]}
	execute at @e[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:135}]}
	execute at @e[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:145}]}
	execute at @e[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 135
	execute at @e[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 145

	execute as @s[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Rocket Launcher ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:polished_blackstone",Count:1b}],HandItems:[{},{}]}
	execute as @s[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Rocket Launcher ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_block",Count:1b}],HandItems:[{},{}]}
	execute at @e[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:160}]}
	execute at @e[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:170}]}
	execute at @e[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 160
	execute at @e[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 170

	execute as @s[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @s {CustomName:'[{"text":"Flamethrower ","color":"gray"},{"text":"Tier 2","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:chiseled_nether_bricks",Count:1b}],HandItems:[{},{}]}
	execute as @s[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @s {CustomName:'[{"text":"Flamethrower ","color":"gray"},{"text":"Tier 3","color":"white"}]',ArmorItems:[{},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:red_nether_bricks",Count:1b}],HandItems:[{},{}]}
	execute at @e[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:125}]}
	execute at @e[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run data merge entity @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] {NoGravity:1b,Silent:1b,NoAI:1b,Tags:["TC"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:135}]}
	execute at @e[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=1}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 125
	execute at @e[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run scoreboard players set @e[type=wither_skeleton,tag=TC,distance=..1,limit=1,sort=nearest] TC_TurretRotS 135

#Max Tier upgrade tag
	execute as @s[tag=Turret1C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
	execute as @s[tag=Turret2C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
	execute as @s[tag=Turret3C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
	execute as @s[tag=Turret4C,tag=!Frame,tag=!MaxTier,scores={TC_TurretCon=2}] run tag @s add MaxTier
