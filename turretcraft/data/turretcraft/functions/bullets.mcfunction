scoreboard players set @a[tag=!Stop] TC_M16_Ammo 30
scoreboard players set @a[tag=!Stop] TC_AK47_Ammo 30
scoreboard players set @a[tag=!Stop] TC_DE_Ammo 8
scoreboard players set @a[tag=!Stop] TC_AWP_Ammo 10
scoreboard players set @a[tag=!Stop] TC_Recoil 0
tag @a[tag=!Stop] add Stop

#Setting FireTimers
execute as @e[type=armor_stand,tag=TurretC,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..}] run scoreboard players remove @s TC_AK47_Ammo 1
execute as @e[type=armor_stand,tag=TurretC,tag=!Firing,scores={TC_FireTimer=1..}] run scoreboard players set @s TC_FireTimer 0
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0..1}] run scoreboard players set @s TC_FireTimer 18
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=2}] run scoreboard players set @s TC_FireTimer 15
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] run scoreboard players set @s TC_FireTimer 10
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1}] run scoreboard players set @s TC_FireTimer 6
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=2}] run scoreboard players set @s TC_FireTimer 3
execute as @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] run scoreboard players set @s TC_FireTimer 25
execute as @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1..2}] run scoreboard players set @s TC_FireTimer 21
execute as @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=0}] run scoreboard players set @s TC_FireTimer 3
execute as @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_TurretCon=1..2}] run scoreboard players set @s TC_FireTimer 2

#Setting Ammo
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 30
execute as @e[type=armor_stand,tag=Turret3C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 4
execute as @e[type=armor_stand,tag=Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 40
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Replenished Ammo. Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"gray","bold":"true"},{"text":"Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret3C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Replenished Ammo. Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"gray","bold":"true"},{"text":"Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Replenished Ammo. Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"gray","bold":"true"},{"text":"Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret3C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret4C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1]

execute as @e[type=armor_stand,tag=TurretC,tag=Firing] run scoreboard players remove @s TC_FireTimer 1
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 1"}',Tags:["Bullet","New"],PierceLevel:1,damage:2.4,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=1}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 2"}',Tags:["Bullet","New"],PierceLevel:2,damage:4.25,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret1C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Sniper Tier 3"}',Tags:["Bullet","New"],PierceLevel:3,damage:8.0,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 1"}',Tags:["Bullet","New"],damage:0.8,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=1}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 2"}',Tags:["Bullet","New"],damage:1.0,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret2C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=2}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.4 {CustomName:'{"text":"Machine Gun Tier 3"}',Tags:["Bullet","New"],PierceLevel:1,damage:1.5,SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=armor_stand,tag=Turret4C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0..}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.085 {CustomName:'{"text":"Flamethrower"}',Tags:["Bullet","Flame","New"],damage:0.2,SoundEvent:"minecraft:block.fire.ambient"}
execute as @e[type=armor_stand,tag=Turret3C,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..,TC_TurretCon=0..}] at @s positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Missile"}',Tags:["Bullet","Missile","New"],PierceLevel:1,damage:0.5,SoundEvent:"minecraft:entity.firework_rocket.blast"}

scoreboard players add @e[type=arrow,tag=Bullet,tag=Missile,tag=!New] TC_FireTimer 1
execute at @e[type=arrow,tag=Bullet,tag=New,tag=!Flame,tag=!Player] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 10 1
execute at @e[type=arrow,tag=Bullet,tag=New,tag=Flame,tag=!Player] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 10 1.2
execute at @e[type=arrow,tag=Bullet,tag=New,tag=Missile,tag=!Player] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 10 1.4
execute at @e[type=arrow,tag=Bullet,tag=New] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 1
execute at @e[type=arrow,tag=Bullet] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet,tag=Flame] run particle minecraft:flame ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^1 ^ ^ ^1 air replace #impermeable
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^-1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^-1 ^ ^ ^-1 air replace #impermeable
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
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt={inGround:1b},scores={TC_FireTimer=..59}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:2,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt=!{inGround:1b},scores={TC_FireTimer=60}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:2,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt=!{inGround:1b},scores={TC_FireTimer=..59}] if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!TC,tag=!Missile,distance=..2] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:2,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Flame] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire replace air
kill @e[type=arrow,tag=Bullet,nbt={inGround:1b}]
kill @e[type=arrow,tag=Bullet,tag=Missile,scores={TC_FireTimer=60..}]
execute as @e[type=arrow,tag=Bullet,tag=Missile] at @s if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!Missile,tag=!TC,distance=..2] run kill @s
kill @e[type=armor_stand,tag=BulletAnchor,tag=Player]
