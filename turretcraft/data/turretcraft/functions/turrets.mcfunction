# All Vanilla commands for all Turrets (Sniper, Machine Gun)
# Made by: Viper1618
#Note: Must throw turret components one at a time
# please report any bugs found
#--------------------

execute at @e[type=wither_skeleton,tag=TurretHealth,scores={TC_TurretRot=1..35}] run particle smoke ~ ~1 ~ 0 0 0 0.01 1
execute at @a[tag=!MaxTurret,scores={TC_Turret=1..99}] unless entity @e[tag=TurretC,distance=..1] run scoreboard players add @p TC_TurretRotS 1
execute at @a[scores={TC_Turret=-1,TC_TurretRotS=1..},tag=Owner] if entity @e[tag=TurretC,distance=..3] run scoreboard players remove @p TC_TurretRotS 1
execute at @a[scores={TC_TurretRotS=1..,TC_Turret=1..99}] run scoreboard players operation @p TC_TurretRot = @p TC_TurretRotS
execute at @a[scores={TC_TurretRotS=1..,TC_Turret=1..99}] run scoreboard players operation @p TC_TurretRot -= @e[type=armor_stand,tag=TurretLimit] TC_TurretRot
execute at @a[tag=!MaxTurret,scores={TC_Turret=1}] unless entity @e[tag=TurretC,distance=..1] run summon item_frame ~ ~ ~ {Tags:["Turret1","Frame"]}
execute at @a[tag=!MaxTurret,scores={TC_Turret=2}] unless entity @e[tag=TurretC,distance=..1] run summon item_frame ~ ~ ~ {Tags:["Turret2","Frame"]}
execute at @a[tag=!MaxTurret,scores={TC_Turret=3}] unless entity @e[tag=TurretC,distance=..1] run summon item_frame ~ ~ ~ {Tags:["Turret3","Frame"]}
execute at @a[tag=!MaxTurret,scores={TC_Turret=4}] unless entity @e[tag=TurretC,distance=..1] run summon item_frame ~ ~ ~ {Tags:["Turret4","Frame"]}
execute at @a[tag=!MaxTurret,scores={TC_Turret=1..99}] as @e[tag=TurretC,distance=..1,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Can't spawn turret inside ","color":"red"},{"selector":"@s"},{"text":".","color":"red"}]
execute unless entity @e[type=armor_stand,tag=TurretLimit,scores={TC_TurretRot=-1}] run tag @a[tag=!MaxTurret,scores={TC_TurretRot=0..,TC_TurretRotS=1..}] add MaxTurret
tag @a[tag=MaxTurret,scores={TC_TurretRot=..-1}] remove MaxTurret
tag @a[tag=MaxTurret,scores={TC_TurretRot=0,TC_TurretRotS=0}] remove MaxTurret
execute if entity @e[type=armor_stand,tag=TurretLimit,scores={TC_TurretRot=-1}] run tag @a[tag=MaxTurret] remove MaxTurret
tellraw @a[tag=MaxTurret,scores={TC_Turret=1..99}] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Reached turret limit of ","color":"red"},{"score":{"name":"@e[type=armor_stand,tag=TurretLimit]","objective":"TC_TurretRot"},"color":"red"},{"text":" set by Admin.","color":"red"}]

execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=Firing] run tag @s remove Firing
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=PlayerT] at @s if entity @a[tag=!Admin,distance=1..60] run function turretcraft:uuidcheck
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=FriendlyT] at @s if entity @e[tag=Friendly,tag=!TC,distance=1..60] run function turretcraft:uuidcheck
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=NeutralT] at @s if entity @e[tag=Neutral,tag=!TC,distance=1..60] run function turretcraft:uuidcheck
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=HostileT] at @s if entity @e[tag=Hostile,tag=!TC,distance=1..60] run function turretcraft:uuidcheck
execute at @a[tag=!Owner,scores={TC_Turret=-3..-1}] if entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" You do not own ","color":"red"},{"selector":"@e[type=armor_stand,distance=..3,tag=TurretC,limit=1,sort=nearest]"},{"text":".","color":"red"}]
execute at @a[scores={TC_Turret=-3..-1}] unless entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" No Turret found, stand within 3 blocks of desired turret.","color":"red"}]
execute at @a[tag=!Owner] unless entity @p[scores={TC_Target=0}] if entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" You do not own ","color":"red"},{"selector":"@e[type=armor_stand,distance=..3,tag=TurretC,limit=1,sort=nearest]"},{"text":".","color":"red"}]
execute at @a unless entity @p[scores={TC_Target=0}] unless entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" No Turret found, stand within 3 blocks of desired turret.","color":"red"}]
tag @a[tag=Admin,tag=!Owner] add Owner

#Sniper Construction
	#Setblock and summons armor stands
		execute at @e[type=minecraft:item_frame,tag=Turret1] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["TurretC","Turret1C","Frame","TC","V1"]}
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ stone_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-5}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"minecraft:iron_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["TurretC","Turret1C","TC","Frame","V1"],CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],Marker:1b,HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run summon minecraft:armor_stand ~ ~1.2 ~ {DisabledSlots:2039583,Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute at @e[type=armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run summon wither_skeleton ~ ~-0.3 ~ {CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 1","color":"white"}]',PersistenceRequired:1b,DeathLootTable:"turretcraft:sniper",NoGravity:1b,Silent:1b,NoAI:1b,Health:125f,Tags:["TurretHealth","Neutral"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:125}]}
		execute at @e[type=armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run scoreboard players set @e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest] TC_TurretRotS 125
#Sniper Logic
	execute as @e[type=armor_stand,tag=Turret1C,tag=!Frame] at @s if entity @e[tag=!TC,tag=!Owner,distance=..59] run function turretcraft:turret1

#Machine Gun Construction
	#Setblock and summons armor stands
		execute at @e[type=minecraft:item_frame,tag=Turret2] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["Turret2C","TurretC","Frame","TC","V2"]}
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ stone_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"minecraft:quartz_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["Turret2C","TurretC","TC","Frame","V2"],CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] unless entity @e[type=minecraft:armor_stand,tag=TurretH,distance=..1] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],Marker:1b,HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] unless entity @e[type=minecraft:armor_stand,tag=BulletAnchor,distance=..1] run summon minecraft:armor_stand ~ ~1.2 ~ {DisabledSlots:2039583,Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute at @e[type=armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] run summon wither_skeleton ~ ~-0.3 ~ {CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 1","color":"white"}]',PersistenceRequired:1b,DeathLootTable:"turretcraft:machinegun",NoGravity:1b,Silent:1b,NoAI:1b,Health:125f,Tags:["TurretHealth","Neutral"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:125}]}
		execute at @e[type=armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] run scoreboard players set @e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest] TC_TurretRotS 125
#Machine Gun Logic
	execute as @e[type=armor_stand,tag=Turret2C,tag=!Frame] at @s if entity @e[tag=!TC,tag=!Owner,distance=..26] run function turretcraft:turret2

#Rocket Launcher Construction
	#Setblock and summons armor stands
		execute at @e[type=minecraft:item_frame,tag=Turret3] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Rocket Launcher ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["Turret3C","TurretC","Frame","TC","V3"]}
		execute at @e[type=minecraft:armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:polished_blackstone_brick_wall run setblock ~ ~ ~ polished_blackstone_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-4}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"minecraft:polished_andesite",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["Turret3C","TurretC","TC","Frame","V1"],CustomName:'[{"text":"Rocket Launcher ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-3}] unless entity @e[type=minecraft:armor_stand,tag=TurretH,distance=..1] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],Marker:1b,HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-3}] unless entity @e[type=minecraft:armor_stand,tag=BulletAnchor,distance=..1] run summon minecraft:armor_stand ~ ~1.2 ~ {DisabledSlots:2039583,Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute at @e[type=armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-3}] run summon wither_skeleton ~ ~-0.3 ~ {CustomName:'[{"text":"Rocket Launcher ","color":"gray"},{"text":"Tier 1","color":"white"}]',PersistenceRequired:1b,DeathLootTable:"turretcraft:rocketlauncher",NoGravity:1b,Silent:1b,NoAI:1b,Health:150f,Tags:["TurretHealth","Neutral"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:150}]}
		execute at @e[type=armor_stand,tag=Turret3C,tag=Frame,scores={TC_TurretCon=-3}] run scoreboard players set @e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest] TC_TurretRotS 150
#Rocket Launcher Logic
	execute as @e[type=armor_stand,tag=Turret3C,tag=!Frame] at @s if entity @e[tag=!TC,tag=!Owner,distance=..26] run function turretcraft:turret3

#Flamethrower Construction
	#Setblock and summons armor stands
		execute at @e[type=minecraft:item_frame,tag=Turret4] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Flamethrower ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["Turret4C","TurretC","Frame","TC","V3"]}
		execute at @e[type=minecraft:armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:nether_brick_wall run setblock ~ ~ ~ nether_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-4}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"chainmail_chestplate",Count:1b},{id:"minecraft:nether_bricks",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,35f,0f],RightArm:[270f,325f,0f]},Tags:["Turret4C","TurretC","TC","Frame","V2"],CustomName:'[{"text":"Flamethrower ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-3}] unless entity @e[type=minecraft:armor_stand,tag=TurretH,distance=..1] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],Marker:1b,HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-3}] unless entity @e[type=minecraft:armor_stand,tag=BulletAnchor,distance=..1] run summon minecraft:armor_stand ~ ~1.2 ~ {DisabledSlots:2039583,Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute at @e[type=armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-3}] run summon wither_skeleton ~ ~-0.3 ~ {CustomName:'[{"text":"Flamethrower ","color":"gray"},{"text":"Tier 1","color":"white"}]',PersistenceRequired:1b,DeathLootTable:"turretcraft:flamethrower",NoGravity:1b,Silent:1b,NoAI:1b,Health:120f,Tags:["TurretHealth","Neutral"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:120}]}
		execute at @e[type=armor_stand,tag=Turret4C,tag=Frame,scores={TC_TurretCon=-3}] run scoreboard players set @e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest] TC_TurretRotS 120
#Flamethrower Logic
	execute as @e[type=armor_stand,tag=Turret4C,tag=!Frame] at @s if entity @e[tag=!TC,tag=!Owner,distance=..17] run function turretcraft:turret4

#Universal commands
	#Turret Owner UUID pairing
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID0 run data get entity @p[scores={TC_Turret=1..}] UUID[0]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID1 run data get entity @p[scores={TC_Turret=1..}] UUID[1]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID2 run data get entity @p[scores={TC_Turret=1..}] UUID[2]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID3 run data get entity @p[scores={TC_Turret=1..}] UUID[3]
	#Player UI selections
		tellraw @a[scores={TC_Turret=-4}] ["",{"text":"[TurretCraft] ","color":"dark_green"},{"text":"Hover / Click:\n","color":"gray"},{"text":"Turret Component ","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -8"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x2 gold ingot, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nG,B,G"},{"text":"\nIB,C,IB"}]}},{"text":"(V1)","color":"white","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -8"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x2 gold ingot, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nG,B,G"},{"text":"\nIB,C,IB"}]}},{"text":"\n"},{"text":"Turret Component ","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -9"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x2 nether quartz, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nQ,B,Q"},{"text":"\nIB,C,IB"}]}},{"text":"(V2)","color":"white","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -9"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x2 nether quartz, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nQ,B,Q"},{"text":"\nIB,C,IB"}]}},{"text":"\n"},{"text":"Turret Component ","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -23"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x1 prismarine shard, x1 prismarine crystal, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nPS,B,PC"},{"text":"\nIB,C,IB"}]}},{"text":"(V3)","color":"white","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -23"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron block, x1 observer, x1 prismarine shard, x1 prismarine crystal, x1 beacon, x1 comparator","color":"gray"},{"text":"\nPattern","underlined":"true"},{"text":"\nIB,O,IB","underlined":"reset"},{"text":"\nPS,B,PC"},{"text":"\nIB,C,IB"}]}}]
		tellraw @a[scores={TC_Turret=-5}] ["",{"text":"[TurretCraft]","color":"dark_green"},{"text":" Hover / Click:\n","color":"gray"},{"text":"Rifle Barrel","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -10"},"hoverEvent":{"action":"show_text","contents":[{"text":"x2 iron ingot\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,-\n-,I,-\n-,-,I","color":"gray"}]}},{"text":"\n","color":"gray"},{"text":"Rifle Body","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -11"},"hoverEvent":{"action":"show_text","contents":[{"text":"x2 iron block, x1 oak log\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,-\n-,IB,-\n-,OL,IB","color":"gray"}]}},{"text":"\n","color":"gray"},{"text":"Shoulder Stock","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -12"},"hoverEvent":{"action":"show_text","contents":[{"text":"x3 iron ingot, x1 oak log\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nI,-,-\n-,I,-\n-,OL,I","color":"gray"}]}}]
		tellraw @a[scores={TC_Turret=-6}] ["",{"text":"[TurretCraft]","color":"dark_green"},{"text":" Hover / Click:\n","color":"gray"},{"text":"Desert Eagle","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -13"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron nugget, x1 rifle body, x1 iron ingot, x1 gray wool, x1 deagle ammo\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,-\nIN,RB,I\nGW,DA,-","color":"gray"}]}},{"text":" | ","color":"gray"},{"text":"Ammo","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -14"},"hoverEvent":{"action":"show_text","contents":[{"text":"x8 gunpowder, x8 gold nugget, x3 iron ingot\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,GP,GN\n-,GP,GN\nI,I,I","color":"gray"}]}},{"text":"\n","color":"gray"},{"text":"AK47","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -15"},"hoverEvent":{"action":"show_text","contents":[{"text":"x1 rifle barrel, x2 iron nugget, x1 ak47 ammo, x1 rifle body, x1 oak log, x1 shoulder stock\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nRb,IN,-\nAA,RB,-\n-,OL,ST","color":"gray"}]}},{"text":" | ","color":"gray"},{"text":"Ammo","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -16"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron ingot, x30 gunpowder\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,I\nI,I,GP\nI,GP,-","color":"gray"}]}},{"text":"\n","color":"gray"},{"text":"M16","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -17"},"hoverEvent":{"action":"show_text","contents":[{"text":"x1 rifle barrel, x2 iron ingot, x1 m16 ammo, x1 rifle body, x1 gray wool, x1 shoulder stock\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nRb,I,-\nMA,RB,I\n-,GW,ST","color":"gray"}]}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"x1 rifle barrel, x2 iron ingot, x1 m16 ammo, x1 rifle body, x1 gray wool, x1 shoulder stock\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nRb,I,-\nMA,RB,I\n-,GW,ST","color":"gray"}]}},{"text":"| ","color":"gray"},{"text":"Ammo","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -18"},"hoverEvent":{"action":"show_text","contents":[{"text":"x3 iron ingot, x30 gunpowder, x1 gold ingot\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,I\nI,I,GP\nG,GP,-","color":"gray"}]}},{"text":"\n","color":"gray"},{"text":"AWP","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -19"},"hoverEvent":{"action":"show_text","contents":[{"text":"x1 rifle barrel, x2 glass pane, x1 iron ingot, x1 awp ammo, x1 rifle body, x4 green dye, x1 shoulder stock\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nRb,Gp,I\naA,RB,Gp\n-,GD,ST","color":"gray"}]}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"x1 rifle barrel, x2 glass pane, x1 iron ingot, x1 awp ammo, x1 rifle body, x4 green dye, x1 shoulder stock\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nRb,Gp,I\naA,RB,Gp\n-,GD,ST","color":"gray"}]}},{"text":"| ","color":"gray"},{"text":"Ammo","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TC_Turret -20"},"hoverEvent":{"action":"show_text","contents":[{"text":"x3 iron ingot, x16 gunpowder, x10 iron nugget, x10 gold nugget\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,IN\nI,GP,GN\nI,I,-","color":"gray"}]}}]
		tellraw @a[scores={TC_Turret=100}] ["",{"text":"[TurretCraft]","color":"dark_green"},{"text":" Hover / Click:","color":"gray"},{"text":"\n"},{"text":"Sniper","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (Fire Rate: 0.9s, Damage: 14HP, Pierce: 1, Range: 27 blocks): x2 Turret Component (V1)","color":"gray"},{"text":"\nTier 2 (Fire Rate: 0.9s, Damage: 32HP, Pierce: 2, Range: 33 blocks): x1 Turret Component (V1)"},{"text":"\nTier 3 (Fire Rate: 0.75s, Damage: 50HP, Pierce: 3, Range: 59 blocks): x1 Turret Component (V1)"}]}},{"text":" | ","color":"gray"},{"text":"7.62x39mm","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -16"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron ingot, x30 gunpowder\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,I\nI,I,GP\nI,GP,-","color":"gray"}]}},{"text":"\n"},{"text":"Machine Gun","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (Fire Rate: 0.5s, Damage: 5HP, Pierce: 0, Range: 21 blocks): x2 Turret Component (V2)","color":"gray"},{"text":"\nTier 2 (Fire Rate: 0.3s, Damage: 9HP, Pierce: 0, Range: 21 blocks): x1 Turret Component (V2)"},{"text":"\nTier 3 (Fire Rate: 0.15s, Damage: 12HP, Pierce: 1, Range: 26 blocks): x1 Turret Component (V2)"}]}},{"text":" | ","color":"gray"},{"text":"7.62x39mm","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -16"},"hoverEvent":{"action":"show_text","contents":[{"text":"x4 iron ingot, x30 gunpowder\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,-,I\nI,I,GP\nI,GP,-","color":"gray"}]}},{"text":"\n"},{"text":"Rocket Launcher","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (Fire Rate: 1.75s, Damage: 45HP, Pierce: 0, Range: 21 blocks): x2 Turret Component (V3), x1 Turret Component (V1)","color":"gray"},{"text":"\nTier 2 (Fire Rate: 1.75s, Damage: 45HP, Pierce: 0, Range: 27 blocks): x1 Turret Component (V1)"},{"text":"\nTier 3 (Fire Rate: 1.25s, Damage: 45HP, Pierce: 0, Range: 27 blocks): x1 Turret Component (V1)"}]}},{"text":" | ","color":"gray"},{"text":"Missile","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -21"},"hoverEvent":{"action":"show_text","contents":[{"text":"x6 gunpowder, x6 iron nugget, x4 firework rocket (duration 1)\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\n-,GP,-\nIN,F,IN\n-,-,-","color":"gray"}]}},{"text":"\n"},{"text":"Flamethrower","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (Fire Rate: 0.15s, Damage: 2HP, Pierce: 1, Range: 14 blocks): x2 Turret Component (V3), x1 Turret Component (V2)","color":"gray"},{"text":"\nTier 2 \u0020(Fire Rate: 0.1s, Damage: 2HP, Pierce: 1, Range: 14 blocks): x1 Turret Component (V2)"},{"text":"\nTier 3 \u0020(Fire Rate: 0.1s, Damage: 3HP, Pierce: 1, Range: 17 blocks): x1 Turret Component (V2)"}]}},{"text":" | ","color":"gray"},{"text":"Gasoline","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -22"},"hoverEvent":{"action":"show_text","contents":[{"text":"x2 blaze powder, x1 fire charge, x1 water bucket\n","color":"gray"},{"text":"Pattern","underlined":"true","color":"gray"},{"text":"\nBP,FC,BP\n-,W,-\n-,-,-","color":"gray"}]}}]
		execute at @a[scores={TC_Turret=-2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Hiding name.","color":"gray"}]
		execute at @a[scores={TC_Turret=-2},tag=Owner] run data merge entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] {CustomNameVisible:0b}
		execute at @a[scores={TC_Turret=-3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Showing name.","color":"gray"}]
		execute at @a[scores={TC_Turret=-3},tag=Owner] run data merge entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] {CustomNameVisible:1b}
		execute at @a[scores={TC_Turret=-24},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Hiding stats.","color":"gray"}]
		execute at @a[scores={TC_Turret=-24},tag=Owner] run tag @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] remove Stats
		execute at @a[scores={TC_Turret=-25},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Showing stats.","color":"gray"}]
		execute at @a[scores={TC_Turret=-25},tag=Owner] run tag @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] add Stats
		execute as @e[type=armor_stand,tag=Stats,tag=TurretC,tag=TC] at @s run title @a[distance=..10] actionbar [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Ammo: ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" | Health: ","color":"gray"},{"score":{"name":"@e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest]","objective":"TC_TurretRot"},"color":"dark_gray"},{"text":" / ","color":"gray"},{"score":{"name":"@e[type=wither_skeleton,tag=TurretHealth,distance=..1,limit=1,sort=nearest]","objective":"TC_TurretRotS"},"color":"dark_gray"}]
	#Turret construction
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] at @s if entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run tag @s remove Frame
		execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,scores={TC_TurretCon=-6..-1}] run scoreboard players set @s TC_TurretCon 0
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-5..}] run scoreboard players set @s TC_TurretCon -6
		execute at @e[type=item_frame,tag=Frame] run tellraw @a[distance=..5] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Constructing ","color":"gray"},{"selector":"@e[type=armor_stand,tag=TurretC,limit=1,sort=nearest,distance=..3]"},{"text":".","color":"gray"}]
		execute as @e[type=minecraft:item_frame,tag=Frame] at @s if entity @e[type=armor_stand,tag=Frame,distance=..1] run kill @s
		execute as @s[tag=TC,tag=!Frame] at @s unless entity @e[type=armor_stand,tag=TurretC,distance=..1.3] run kill @s
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=Frame,scores={TC_TurretCon=0}] run tag @s remove Frame
		execute as @e[type=armor_stand,tag=Frame,scores={TC_TurretCon=-6}] run scoreboard players set @s TC_FireTimer 0
		execute as @e[type=armor_stand,tag=Frame,scores={TC_TurretCon=-6}] run scoreboard players set @s TC_AK47_Ammo 0
	#Rotation of Turrets and playing ambient sound
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=!Frame,tag=!Firing] at @s run tp @s ~ ~ ~ ~1.5 ~
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=!Frame] run tp @e[type=minecraft:armor_stand,tag=TurretH,distance=..1.3] ^ ^-0.35 ^-0.05 ~ ~
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=!MaxTier,tag=!Frame] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.2 2
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=MaxTier,tag=!Frame] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.08 2
	#Pointing all aesthetic pieces towards unwanted target
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @e[type=armor_stand,tag=!TurretC,tag=TC,distance=..1.3,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
		execute as @e[type=armor_stand,tag=TurretC] at @s store result score @s TC_TurretRot run data get entity @s Rotation[1] 1
		execute as @e[type=armor_stand,tag=TurretC] run scoreboard players operation @s TC_TurretRot += @s TC_TurretRotS
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s TC_TurretRot
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s TC_TurretRot
