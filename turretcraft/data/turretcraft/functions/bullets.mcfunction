scoreboard players set @a[tag=!Stop] TC_M16_Ammo 30
scoreboard players set @a[tag=!Stop] TC_AK47_Ammo 30
scoreboard players set @a[tag=!Stop] TC_DE_Ammo 8
scoreboard players set @a[tag=!Stop] TC_AWP_Ammo 10
scoreboard players set @a[tag=!Stop] TC_Recoil 0
tag @a[tag=!Stop] add Stop

execute as @e[type=armor_stand,tag=TurretC,tag=!Firing,scores={TC_FireTimer=1..}] run scoreboard players set @s TC_FireTimer 0
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0}] run scoreboard players set @s[scores={TC_TurretCon=0..1}] TC_FireTimer 18
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0}] run scoreboard players set @s[scores={TC_TurretCon=2}] TC_FireTimer 15
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] run scoreboard players set @s[scores={TC_TurretCon=0}] TC_FireTimer 10
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] run scoreboard players set @s[scores={TC_TurretCon=1}] TC_FireTimer 6
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] run scoreboard players set @s[scores={TC_TurretCon=2}] TC_FireTimer 3
execute as @e[type=armor_stand,tag=TurretC,tag=Firing] run scoreboard players remove @s TC_FireTimer 1
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=0}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 1"}',Tags:["Bullet","New"],PierceLevel:1,damage:2.4,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=1}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 2"}',Tags:["Bullet","New"],PierceLevel:2,damage:4.25,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=2}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 3"}',Tags:["Bullet","New"],PierceLevel:3,damage:8.0,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=0}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 1"}',Tags:["Bullet","New"],damage:0.8,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=1}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 2"}',Tags:["Bullet","New"],damage:1.0,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0}] at @s[scores={TC_TurretCon=2}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 3"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.5,SoundEvent:"minecraft:block.stone.break"}
execute at @e[type=arrow,tag=Bullet,tag=New,tag=!Player] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 10 1
execute at @e[type=arrow,tag=Bullet,tag=New] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 1
execute at @e[type=arrow,tag=Bullet] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet] if block ^ ^ ^1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet] run fill ^ ^ ^1 ^ ^ ^1 air replace #impermeable
execute at @e[type=arrow,tag=Bullet] if block ^ ^ ^-1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet] run fill ^ ^ ^-1 ^ ^ ^-1 air replace #impermeable
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s PosX run data get entity @s Pos[0] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s PosY run data get entity @s Pos[1] 100000
execute as @e[type=armor_stand,tag=BulletAnchor] store result score @s PosZ run data get entity @s Pos[2] 100000
execute as @e[type=arrow,tag=Bullet,tag=New] store result score @s PosX run data get entity @s Pos[0] 100000
execute as @e[type=arrow,tag=Bullet,tag=New] store result score @s PosY run data get entity @s Pos[1] 100000
execute as @e[type=arrow,tag=Bullet,tag=New] store result score @s PosZ run data get entity @s Pos[2] 100000
execute as @e[type=arrow,tag=Bullet,tag=New] at @s run scoreboard players operation @s PosX -= @e[tag=BulletAnchor,limit=1,sort=nearest] PosX
execute as @e[type=arrow,tag=Bullet,tag=New] at @s run scoreboard players operation @s PosY -= @e[tag=BulletAnchor,limit=1,sort=nearest] PosY
execute as @e[type=arrow,tag=Bullet,tag=New] at @s run scoreboard players operation @s PosZ -= @e[tag=BulletAnchor,limit=1,sort=nearest] PosZ
execute as @e[type=arrow,tag=Bullet,tag=New] store result entity @s Motion[0] double 0.0002 run scoreboard players get @s PosX
execute as @e[type=arrow,tag=Bullet,tag=New] store result entity @s Motion[1] double 0.0002 run scoreboard players get @s PosY
execute as @e[type=arrow,tag=Bullet,tag=New] store result entity @s Motion[2] double 0.0002 run scoreboard players get @s PosZ
execute as @e[type=arrow,tag=Bullet,tag=New] run tag @s remove New
execute at @e[type=arrow,tag=Bullet,nbt={inGround:1b}] run particle large_smoke ~ ~ ~ 0 0 0 0.01 1
kill @e[type=arrow,tag=Bullet,nbt={inGround:1b}]
kill @e[type=armor_stand,tag=BulletAnchor,tag=Player]