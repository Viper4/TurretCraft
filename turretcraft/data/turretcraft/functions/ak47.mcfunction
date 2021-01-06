scoreboard players set @a[tag=Admin,scores={TC_AK47_Ammo=..29}] TC_AK47_Ammo 30
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 0.1
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1.4
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 20 1
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] positioned ~ ~1.6 ~ run summon arrow ^ ^ ^0.1 {CustomName:'{"text":"AK47"}',Tags:["Bullet","New","Player"],damage:0.8,SoundEvent:"minecraft:block.stone.break"}
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] run summon armor_stand ~ ~1.6 ~ {Tags:["BulletAnchor","Player"],Invisible:1b,Small:1b,NoGravity:1b}
execute at @p[distance=..1,scores={TC_AK47_Ammo=1..30}] run scoreboard players set @p TC_Recoil 3
execute at @p[distance=..1,scores={TC_Recoil=3,TC_Shifting=0}] run tp @p ~ ~ ~ ~ ~-5
execute at @p[distance=..1,scores={TC_Recoil=3,TC_Shifting=1..}] run tp @p ~ ~ ~ ~ ~-2.5
execute at @p[distance=..1,tag=!Admin,scores={TC_AK47_Ammo=1..30,TC_Recoil=3}] run scoreboard players remove @p TC_AK47_Ammo 1
execute at @p[distance=..1,tag=!Admin,scores={TC_AK47_Ammo=0}] run playsound minecraft:block.dispenser.fail master @p ~ ~ ~ 1 2
