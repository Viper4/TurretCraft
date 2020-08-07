#Setting FireTimer
scoreboard players set @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0..1}] TC_FireTimer 18
scoreboard players set @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=2}] TC_FireTimer 15
scoreboard players set @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] TC_FireTimer 10
scoreboard players set @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1}] TC_FireTimer 6
scoreboard players set @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=2}] TC_FireTimer 3
scoreboard players set @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] TC_FireTimer 35
scoreboard players set @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1..2}] TC_FireTimer 25
scoreboard players set @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] TC_FireTimer 3
scoreboard players set @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1..2}] TC_FireTimer 2

execute as @e[type=armor_stand,tag=TurretC,tag=Firing] run scoreboard players remove @s TC_FireTimer 1
scoreboard players remove @e[type=armor_stand,tag=TurretC,tag=!InfiniteAmmo,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..}] TC_AK47_Ammo 1
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Sniper Tier 1"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.4,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=1}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Sniper Tier 2"}',Tags:["Bullet","New"],PierceLevel:2,damage:3.2,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Sniper Tier 3"}',Tags:["Bullet","New"],PierceLevel:3,damage:5.0,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Machine Gun Tier 1"}',Tags:["Bullet","New"],damage:0.5,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=1}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Machine Gun Tier 2"}',Tags:["Bullet","New"],damage:0.9,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Machine Gun Tier 3"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.2,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0..}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Missile"}',Tags:["Bullet","Missile","New"],PierceLevel:2,damage:0.9,SoundEvent:"minecraft:entity.firework_rocket.blast"}
execute as @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0..1}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Flamethrower"}',Tags:["Bullet","Flame","New"],PierceLevel:1,damage:0.2,SoundEvent:"minecraft:block.fire.ambient"}
execute as @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^1 {CustomName:'{"text":"Flamethrower"}',Tags:["Bullet","Flame","New"],PierceLevel:1,damage:0.3,SoundEvent:"minecraft:block.fire.ambient"}
