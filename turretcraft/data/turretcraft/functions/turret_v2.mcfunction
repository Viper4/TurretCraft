# All Vanilla commands for V2 Turret or Machine gun
# Made by: Viper1618
#Note: Must throw turret components one at a time
# please report any bugs found
#--------------------

#Turret2 - summon | kill item_frame
#Summons Turret2 frame at the centered item frame's position then kills the item frame
	execute at @e[type=minecraft:item_frame,tag=Turret2] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'[{"text":"Turret Frame ","color":"green"},{"text":"(V2)","color":"white"}]',CustomNameVisible:1b,Tags:["Turret2"],Invulnerable:1b}
	execute at @e[type=item_frame,tag=Turret2] as @a[distance=..10,sort=nearest,limit=1] run tellraw @a [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Constructing V2 Turret.","color":"gray"}]
	kill @e[type=minecraft:item_frame,tag=Turret2]
	
#V2 Construction - if entity | scoreboard | setblock | summon | tellraw | kill item
#Searchs for V2 component then adds 1 to TurretCon and tellraws message to player
	execute as @e[type=minecraft:armor_stand,tag=Turret2] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}}}},distance=..1,limit=1] run scoreboard players add @s TurretCon 1
	execute as @e[type=minecraft:armor_stand,tag=Turret2] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'{"color":"gray","extra":[{"color":"white","text":" (V2)"}],"text":"Turret Component"}'}}}},distance=..1,limit=1] run scoreboard players add @s TurretCon 1
		execute at @e[type=minecraft:armor_stand,tag=Turret2] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}}}},distance=..1,limit=1] run tellraw @a[distance=..10] [{"text":"[","color":"dark_green"},{"text":"Turret ","color":"gray"},{"text":"(V2)","color":"white"},{"text":"]","color":"dark_green"},{"text":" Successfully installed component","color":"gray"}]
		execute at @e[type=minecraft:armor_stand,tag=Turret2] if entity @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'{"color":"gray","extra":[{"color":"white","text":" (V2)"}],"text":"Turret Component"}'}}}},distance=..1,limit=1] run tellraw @a[distance=..10] [{"text":"[","color":"dark_green"},{"text":"Turret ","color":"gray"},{"text":"(V2)","color":"white"},{"text":"]","color":"dark_green"},{"text":" Successfully installed component","color":"gray"}]
	#Deletes correct amount of components when constructed
		execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}}}},distance=..1,limit=1]
		execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=1..}] run kill @e[type=item,nbt={Item:{id:"minecraft:conduit",Count:1b,tag:{display:{Name:'{"color":"gray","extra":[{"color":"white","text":" (V2)"}],"text":"Turret Component"}'}}}},distance=..1,limit=1]
		#Setblock and summons armor stands
			execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=1}] unless block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ stone_brick_wall
			execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=2}] unless entity @e[type=minecraft:armor_stand,tag=TurretB,distance=..1] run summon minecraft:armor_stand ~ ~-0.5 ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"quartz_block",Count:1b}],HandItems:[{},{}],Tags:["TurretB","TC"],DisabledSlots:2039583}
			execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=3}] unless entity @e[type=minecraft:armor_stand,tag=Turret2H,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[180f,0f,0f],LeftLeg:[0f,0f,10f],RightLeg:[0f,0f,350f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["Turret2H","TurretH","TC"],CustomName:'[{"text":"Turret ","color":"gray"},{"text":"(V2)","color":"white"}]',CustomNameVisible:1b}
			execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=3}] unless entity @e[type=minecraft:armor_stand,tag=TurretC,distance=..1] run summon minecraft:armor_stand ^ ^-0.3 ^-0.05 {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1113502024,843466295,-1803561648,-487382137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkMTVlNzJhY2YyMTliYzFkYThhZTc2ODZmNGY4M2M3NzNhZGNiNGY4ZmFjYzg3Y2JiZDQzZWU3OTA1N2YzIn19fQ=="}]}}}}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["TurretC","TC"],Pose:{Head:[0.1f,0.1f,0.1f]}}
			execute at @e[type=minecraft:armor_stand,tag=Turret2,scores={TurretCon=3}] unless entity @e[type=minecraft:armor_stand,tag=BulletAnchor,distance=..1] run summon minecraft:armor_stand ~ ~1.2 ~ {Small:1b,Invisible:1b,NoGravity:1b,Tags:["BulletAnchor","TC"]}
			execute at @e[type=armor_stand,tag=Turret2,scores={TurretCon=3}] run scoreboard players set @e[tag=Turret2H,distance=..1] TC_FireTimer 0
			#Deletes Turret2 frame
				execute as @e[type=minecraft:armor_stand,tag=Turret2] at @s if entity @e[type=minecraft:armor_stand,tag=TurretC,distance=..1] run kill @s

#V2 Logic - at | as | unless | if entity | playsound | tag | scoreboard | 
#Rotation of V2 and playing ambient sound
	execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded1] unless entity @e[type=!experience_orb,type=!item_frame,type=!painting,type=!minecraft:item,type=!minecraft:arrow,type=!minecraft:armor_stand,tag=!Allowed,distance=..21,tag=!Door] as @e[type=minecraft:armor_stand,distance=..1,tag=!TurretC,tag=TC] at @s run tp @s ~ ~ ~ ~1.5 ~
	execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1] unless entity @e[type=!experience_orb,type=!item_frame,type=!painting,type=!minecraft:item,type=!minecraft:arrow,type=!minecraft:armor_stand,tag=!Allowed,distance=..26,tag=!Door] as @e[type=minecraft:armor_stand,distance=..1,tag=!TurretC,tag=TC] at @s run tp @s ~ ~ ~ ~1.5 ~
	execute at @e[type=minecraft:armor_stand,tag=Turret2H] run tp @e[type=minecraft:armor_stand,tag=TurretC,distance=..1] ^ ^-0.35 ^-0.05 ~ ~
		execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded,tag=!Upgraded1] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.7 2
		execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.2 2
	#Detecting for unwanted entities in 10 block radius facing towards them, and adding the "Firing" tag
		execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded1] if entity @e[type=!minecraft:armor_stand,tag=!Allowed,distance=..21,tag=!Door] as @e[type=minecraft:armor_stand,distance=..1,tag=!Bullet,tag=!TurretC,tag=TC] at @s run tp @s ~ ~ ~ facing entity @e[type=!experience_orb,type=!painting,type=!item_frame,type=!minecraft:item,type=!minecraft:arrow,type=!minecraft:armor_stand,tag=!Allowed,tag=!Door,distance=..21,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded1] at @s if entity @e[type=!experience_orb,type=!item,type=!arrow,type=!minecraft:armor_stand,type=!item_frame,type=!painting,tag=!Allowed,distance=..20,tag=!Door] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded1] at @s unless entity @e[type=!experience_orb,type=!item,type=!arrow,type=!item_frame,type=!minecraft:armor_stand,type=!painting,tag=!Allowed,distance=..20,tag=!Door] run tag @s remove Firing
		execute at @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1] if entity @e[type=!minecraft:armor_stand,tag=!Allowed,distance=..26,tag=!Door] as @e[type=minecraft:armor_stand,distance=..1,tag=!Bullet,tag=!TurretC,tag=TC] at @s run tp @s ~ ~ ~ facing entity @e[type=!experience_orb,type=!painting,type=!item_frame,type=!minecraft:item,type=!minecraft:arrow,type=!minecraft:armor_stand,tag=!Allowed,tag=!Door,distance=..26,sort=nearest,limit=1]
		execute as @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1] at @s if entity @e[type=!experience_orb,type=!item,type=!arrow,type=!minecraft:armor_stand,type=!item_frame,type=!painting,tag=!Allowed,distance=..25,tag=!Door] run tag @s add Firing
		execute as @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1] at @s unless entity @e[type=!experience_orb,type=!item,type=!arrow,type=!item_frame,type=!minecraft:armor_stand,type=!painting,tag=!Allowed,distance=..25,tag=!Door] run tag @s remove Firing
		#Pointing all aesthetic pieces towards unwanted target
			execute as @e[type=armor_stand,tag=Turret2H] at @s store result entity @e[type=armor_stand,tag=TurretC,distance=..1,limit=1] Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
			execute as @e[type=armor_stand,tag=Turret2H] at @s store result score @s TurretRot run data get entity @s Rotation[1] 1
			execute as @e[type=armor_stand,tag=Turret2H] run scoreboard players operation @s TurretRot += @s TurretRotS
			execute as @e[type=armor_stand,tag=Turret2H] at @s store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s TurretRot
			execute as @e[type=armor_stand,tag=Turret2H] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s TurretRot
