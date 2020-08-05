# All Vanilla commands for all Turrets (Sniper, Machine Gun)
# Made by: Viper1618
#Note: Must throw turret components one at a time
# please report any bugs found
#--------------------

tag @a[tag=Bypass,tag=!Owner] add Owner

execute at @a[scores={TC_Turret=-3..-1}] if entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p[tag=!Owner] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" You do not own ","color":"red"},{"selector":"@e[type=armor_stand,distance=..3,tag=TurretC,limit=1,sort=nearest]"},{"text":".","color":"red"}]
execute at @a[scores={TC_Turret=-3..-1}] unless entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" No Turret found, stand within 3 blocks of desired turret.","color":"red"}]
execute at @a unless entity @p[scores={TC_Target=0}] if entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p[tag=!Owner] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" You do not own ","color":"red"},{"selector":"@e[type=armor_stand,distance=..3,tag=TurretC,limit=1,sort=nearest]"},{"text":".","color":"red"}]
execute at @a unless entity @p[scores={TC_Target=0}] unless entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[TurretCraft]","color":"dark_green"},{"text":" No Turret found, stand within 3 blocks of desired turret.","color":"red"}]

execute at @a[scores={TC_Turret=1}] run summon item_frame ~ ~ ~ {Tags:["Turret1","Frame"]}
execute at @a[scores={TC_Turret=2}] run summon item_frame ~ ~ ~ {Tags:["Turret2","Frame"]}

execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,tag=Firing] run tag @s remove Firing
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame] run function turretcraft:uuidcheck



#Sniper
#
#Summons Turret frame at the centered item frame's position
	execute at @e[type=minecraft:item_frame,tag=Turret1] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["TurretC","Turret1C","Frame","TC"]}
#Sniper Construction - if entity | scoreboard | setblock | summon | tellraw | kill item
	#Setblock and summons armor stands
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ stone_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-5}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"minecraft:iron_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["TurretC","Turret1C","TC","Frame"],CustomName:'[{"text":"Sniper ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run summon minecraft:armor_stand ~ ~1.2 ~ {Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute as @e[type=armor_stand,tag=Turret1C,tag=Frame,scores={TC_TurretCon=-4}] run tag @s remove Frame
#Sniper Logic - at | as | unless | if entity | playsound | tag | scoreboard
	#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..27] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..27,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..26] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=1}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..33] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..33,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=1}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..32] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..59] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..59,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..58] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..27,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..26] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..33] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..33,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..32] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..59] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..59,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..58] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..27,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..26] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..33] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..33,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..32] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..59] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..59,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..58] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..27,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..26] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..33] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..33,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..32] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..59] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..59,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret1C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..58] run tag @s add Firing

#Machine Gun
#
#Turret2 - summon | kill item_frame
#Summons Turret2 frame at the centered item frame's position then kills the item frame
	execute at @e[type=minecraft:item_frame,tag=Turret2] run summon minecraft:armor_stand ~ ~-0.96875 ~ {DisabledSlots:2039583,CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b,NoGravity:1b,Tags:["Turret2C","TurretC","Frame","TC"]}
#Machine Gun Construction - if entity | scoreboard | setblock | summon | tellraw | kill item
	#Setblock and summons armor stands
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-5}] unless block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ stone_brick_wall
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-5}] run data merge entity @s {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"minecraft:quartz_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["Turret2C","TurretC","TC","Frame"],CustomName:'[{"text":"Machine Gun ","color":"gray"},{"text":"Tier 1","color":"white"}]',CustomNameVisible:1b}
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] unless entity @e[type=minecraft:armor_stand,tag=TurretH,distance=..1] run summon minecraft:armor_stand ^ ^-0.35 ^-0.05 {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretH","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
		execute at @e[type=minecraft:armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] unless entity @e[type=minecraft:armor_stand,tag=BulletAnchor,distance=..1] run summon minecraft:armor_stand ~ ~1.2 ~ {Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
		execute as @e[type=armor_stand,tag=Turret2C,tag=Frame,scores={TC_TurretCon=-4}] run tag @s remove Frame
#Machine Gun Logic - at | as | unless | if entity | playsound | tag | scoreboard | 
	#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,scores={TC_TurretCon=2}] at @s unless entity @e[tag=!TC,tag=!Owner,tag=!ModCrafter,tag=!Bullet,tag=Target,distance=..25] run tag @s remove Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..21] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..21,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..20] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..26] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..26,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] at @s if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..25] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..21,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..20] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..26,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..25] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..21,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..20] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..26,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..25] run tag @s add Firing

		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..21,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..20] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..26,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..25] run tag @s add Firing

#Universal commands
	scoreboard players set @e[tag=TC] TC_TurretRotS -90
	#Turret Owner UUID pairing
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID0 run data get entity @p[scores={TC_Turret=1..}] UUID[0]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID1 run data get entity @p[scores={TC_Turret=1..}] UUID[1]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID2 run data get entity @p[scores={TC_Turret=1..}] UUID[2]
		execute as @e[type=armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-6..}] at @s store result score @s TC_UUID3 run data get entity @p[scores={TC_Turret=1..}] UUID[3]
	#Player UI selections
		tellraw @a[scores={TC_Turret=100}] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Select a turret","color":"gray"},{"text":"\n"},{"text":"Sniper ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (x2 Turret Component V1): 1 round/0.9s, 9.6HP/1 round, 26 block range","color":"gray"},{"text":"\nTier 2 (x1 Turret Component V1): 1 round/0.75s, 17HP/1 round, 32 block range"},{"text":"\nTier 3 (x1 Turret Component V1): 1 round/0.5s, 32HP/1 round, 58 block range"}]}},{"text":"\n","color":"gray"},{"text":"Machine Gun","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Tier 1 (x2 Turret Component V2): 1 round/0.5s, 3.2HP/1 round, 20 block range","color":"gray"},{"text":"\nTier 2 (x1 Turret Component V2): 1 round/0.3s, 4HP/1 round, 20 block range"},{"text":"\nTier 3 (x1 Turret Component V2): 1 round/0.15s, 6HP/1 round, 25 block range"}]}},{"text":"\n "}]
		execute at @a[scores={TC_Turret=-2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Hiding name.","color":"gray"}]
		execute at @a[scores={TC_Turret=-2},tag=Owner] run data merge entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] {CustomNameVisible:0b}
		execute at @a[scores={TC_Turret=-3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Showing name.","color":"gray"}]
		execute at @a[scores={TC_Turret=-3},tag=Owner] run data merge entity @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] {CustomNameVisible:1b}
	#Turret construction
		execute as @e[type=armor_stand,tag=TurretC,tag=!Frame,scores={TC_TurretCon=-6..-1}] run scoreboard players set @s TC_TurretCon 0
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=Frame] unless entity @s[scores={TC_TurretCon=-5..}] run scoreboard players set @s TC_TurretCon -6
		execute at @e[type=item_frame,tag=Frame] run tellraw @a[distance=..5] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Constructing Turret.","color":"gray"}]
		execute as @e[type=minecraft:item_frame,tag=Frame] at @s if entity @e[type=armor_stand,tag=Frame,distance=..1] run kill @s
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=Frame,scores={TC_TurretCon=0}] run tag @s remove Frame
		execute as @e[type=armor_stand,tag=Frame] run scoreboard players set @s TC_FireTimer 0
	#Rotation of Turrets and playing ambient sound
		execute as @e[type=minecraft:armor_stand,tag=TurretC,tag=!Frame,tag=!Firing] at @s run tp @s ~ ~ ~ ~1.5 ~
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=!Frame] run tp @e[type=minecraft:armor_stand,tag=TurretH,distance=..1.3] ^ ^-0.35 ^-0.05 ~ ~
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=!MaxTier,tag=!Frame] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.6 2
		execute at @e[type=minecraft:armor_stand,tag=TurretC,tag=MaxTier,tag=!Frame] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.2 2
	#Pointing all aesthetic pieces towards unwanted target
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @e[type=armor_stand,tag=!TurretC,tag=TC,distance=..1.3,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
		execute as @e[type=armor_stand,tag=TurretC] at @s store result score @s TC_TurretRot run data get entity @s Rotation[1] 1
		execute as @e[type=armor_stand,tag=TurretC] run scoreboard players operation @s TC_TurretRot += @s TC_TurretRotS
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s TC_TurretRot
		execute as @e[type=armor_stand,tag=TurretC] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s TC_TurretRot
