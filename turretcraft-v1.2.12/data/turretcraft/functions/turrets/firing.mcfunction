#Setting FireTimer
scoreboard players set @s[tag=Turret1C,scores={TC_TurretCon=0..1}] TC_FireTimer 18
scoreboard players set @s[tag=Turret1C,scores={TC_TurretCon=2}] TC_FireTimer 15
scoreboard players set @s[tag=Turret2C,scores={TC_TurretCon=0}] TC_FireTimer 8
scoreboard players set @s[tag=Turret2C,scores={TC_TurretCon=1}] TC_FireTimer 5
scoreboard players set @s[tag=Turret2C,scores={TC_TurretCon=2}] TC_FireTimer 3
scoreboard players set @s[tag=Turret3C,scores={TC_TurretCon=0}] TC_FireTimer 35
scoreboard players set @s[tag=Turret3C,scores={TC_TurretCon=1..2}] TC_FireTimer 25
scoreboard players set @s[tag=Turret4C,scores={TC_TurretCon=0}] TC_FireTimer 3
scoreboard players set @s[tag=Turret4C,scores={TC_TurretCon=1..2}] TC_FireTimer 2

scoreboard players remove @s TC_AK47_Ammo 1
execute at @s[tag=Turret1C,scores={TC_TurretCon=0}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Sniper Tier 1"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.4,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret1C,scores={TC_TurretCon=1}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Sniper Tier 2"}',Tags:["Bullet","New"],PierceLevel:2,damage:3.2,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret1C,scores={TC_TurretCon=2}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Sniper Tier 3"}',Tags:["Bullet","New"],PierceLevel:3,damage:5.0,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret2C,scores={TC_TurretCon=0}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Machine Gun Tier 1"}',Tags:["Bullet","New"],damage:0.5,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret2C,scores={TC_TurretCon=1}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Machine Gun Tier 2"}',Tags:["Bullet","New"],damage:0.9,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret2C,scores={TC_TurretCon=2}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Machine Gun Tier 3"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.2,SoundEvent:"minecraft:block.stone.break"}
execute at @s[tag=Turret3C,scores={TC_TurretCon=0..}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Missile"}',Tags:["Bullet","Missile","New"],PierceLevel:2,damage:0.9,SoundEvent:"minecraft:entity.firework_rocket.blast"}
execute at @s[tag=Turret4C,scores={TC_TurretCon=0..1}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Flamethrower"}',Tags:["Bullet","Flame","New"],PierceLevel:1,damage:0.3,SoundEvent:"minecraft:block.fire.ambient"}
execute at @s[tag=Turret4C,scores={TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Flamethrower"}',Tags:["Bullet","Flame","New"],PierceLevel:1,damage:0.5,SoundEvent:"minecraft:block.fire.ambient"}
