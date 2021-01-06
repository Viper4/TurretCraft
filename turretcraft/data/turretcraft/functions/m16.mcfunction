scoreboard players set @a[tag=Admin,scores={TC_M16_Ammo=..29}] TC_M16_Ammo 30
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 0.3
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1.6
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 15 1.15
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] positioned ~ ~1.6 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"M16"}',Tags:["Bullet","New","Player"],damage:0.5,SoundEvent:"minecraft:block.stone.break"}
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run summon armor_stand ~ ~1.6 ~ {Tags:["BulletAnchor","Player"],Invisible:1b,Small:1b,NoGravity:1b}
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run scoreboard players set @p TC_Recoil 2
execute at @p[scores={TC_Recoil=2,TC_Shifting=0},distance=..1] run tp @p ~ ~ ~ ~ ~-3
execute at @p[scores={TC_Recoil=2,TC_Shifting=1..},distance=..1] run tp @p ~ ~ ~ ~ ~-1.5
execute at @p[scores={TC_M16_Ammo=1..30},distance=..1] run scoreboard players remove @p TC_M16_Ammo 1
execute at @p[tag=!Admin,scores={TC_M16_Ammo=0},distance=..1] run playsound minecraft:block.dispenser.fail master @p ~ ~ ~ 1 2
