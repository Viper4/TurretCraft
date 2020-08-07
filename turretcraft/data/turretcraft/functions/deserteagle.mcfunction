scoreboard players set @a[tag=Admin,scores={TC_DE_Ammo=..7}] TC_DE_Ammo 8
execute at @p[scores={TC_DE_Ammo=1..8},distance=..1] run playsound minecraft:block.stone.break master @a ~ ~ ~ 19 1.2
execute at @p[scores={TC_DE_Ammo=1..8},distance=..1] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 20 0.1
execute at @p[scores={TC_DE_Ammo=1..8},distance=..1] positioned ~ ~1.6 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"Desert Eagle"}',Tags:["Bullet","New","Player"],damage:1.0,SoundEvent:"minecraft:block.stone.break"}
execute at @p[scores={TC_DE_Ammo=1..8},distance=..1] run summon armor_stand ~ ~1.6 ~ {Tags:["BulletAnchor","Player"],Invisible:1b,Small:1b,NoGravity:1b}
execute at @p[scores={TC_DE_Ammo=1..8},distance=..1] run scoreboard players set @p TC_Recoil 16
execute at @p[scores={TC_Recoil=16,TC_Shifting=0},distance=..1] run tp @p ~ ~ ~ ~ ~-13
execute at @p[scores={TC_Recoil=16,TC_Shifting=1..},distance=..1] run tp @p ~ ~ ~ ~ ~-6.5
execute at @p[scores={TC_DE_Ammo=1..8,TC_Recoil=13},distance=..1] run scoreboard players remove @p TC_DE_Ammo 1
execute at @p[scores={TC_DE_Ammo=0},distance=..1] run playsound minecraft:block.dispenser.fail master @p ~ ~ ~ 1 2
