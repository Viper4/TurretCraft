tag @e[type=armor_stand,tag=Bullet,tag=!New] add InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ air unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ #trapdoors unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ #buttons unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ #impermeable unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ water unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ grass unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ tall_grass unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ #leaves unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ cobweb unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ redstone_wire unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s if block ~ ~1 ~ water unless entity @e[type=!item,type=!armor_stand,type=!arrow,type=!experience_orb,distance=..1] run tag @s add Slow
execute at @e[type=armor_stand,tag=Bullet] if block ~ ~1 ~ #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=armor_stand,tag=Bullet] run fill ~ ~1 ~ ~ ~1 ~ air replace #impermeable
execute as @e[type=armor_stand,tag=Bullet] at @s positioned ~ ~1 ~ if entity @e[tag=TurretH,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=Bullet] at @s positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=TurretC,distance=..1] run tag @s remove InObject
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=!Slow,tag=!InObject,scores={TC_Timer=100..200}] at @s run tp @s ~ ~-0.03 ~
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=!Slow,tag=!InObject,scores={TC_Timer=201..350}] at @s run tp @s ~ ~-0.2 ~
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=!Slow,tag=!InObject,scores={TC_Timer=351..}] at @s run tp @s ~ ~-1.2 ~
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=Slow,tag=!InObject,scores={TC_Timer=50..100}] at @s run tp @s ~ ~-0.03 ~
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=Slow,tag=!InObject,scores={TC_Timer=101..250}] at @s run tp @s ~ ~-0.2 ~
execute as @e[type=armor_stand,tag=!Bullet3,tag=!Bullet4,tag=Slow,tag=!InObject,scores={TC_Timer=251..}] at @s run tp @s ~ ~-1.2 ~
execute as @e[type=armor_stand,tag=Bullet,tag=!Slow,tag=!InObject,scores={TC_Timer=..200}] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=Bullet,tag=Slow,tag=!InObject,scores={TC_Timer=..100}] at @s run tp @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=Bullet,tag=!Slow,tag=!InObject,scores={TC_Timer=201..400}] at @s run tp @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=Bullet,tag=Slow,tag=!InObject,scores={TC_Timer=101..300}] at @s run tp @s ^ ^ ^0.6
execute as @e[type=armor_stand,tag=Bullet4,tag=!Slow,tag=!InObject,scores={TC_Timer=..200}] at @s run tp @s ^ ^ ^0.4
execute as @e[type=armor_stand,tag=Bullet4,tag=Slow,tag=!InObject,scores={TC_Timer=..100}] at @s run tp @s ^ ^ ^0.2
execute as @e[type=armor_stand,tag=Bullet4,tag=!Slow,tag=!InObject,scores={TC_Timer=201..400}] at @s run tp @s ^ ^ ^0.2
execute as @e[type=armor_stand,tag=Bullet4,tag=Slow,tag=!InObject,scores={TC_Timer=101..300}] at @s run tp @s ^ ^ ^0.001
execute as @e[type=armor_stand,tag=Bullet5,tag=!Slow,tag=!InObject,scores={TC_Timer=..200}] at @s run tp @s ^ ^ ^0.05
execute as @e[type=armor_stand,tag=Bullet5,tag=Slow,tag=!InObject,scores={TC_Timer=..100}] at @s run tp @s ^ ^ ^0.03
execute as @e[type=armor_stand,tag=Bullet5,tag=!Slow,tag=!InObject,scores={TC_Timer=201..400}] at @s run tp @s ^ ^ ^0.03
execute as @e[type=armor_stand,tag=Bullet5,tag=Slow,tag=!InObject,scores={TC_Timer=101..300}] at @s run tp @s ^ ^ ^0.01
execute at @e[tag=Bullet,tag=InObject] unless entity @e[type=!armor_stand,distance=..1] run particle large_smoke ^ ^1 ^-0.4 0.2 0.2 0.2 0.01 1
execute at @e[tag=Bullet,tag=InObject] unless entity @e[type=!armor_stand,distance=..1] run playsound block.stone.hit master @a ~ ~ ~ 1.2 0.7
execute as @e[type=!armor_stand,type=!player] store result score @s Turrethealth run data get entity @s Health
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet1,tag=InObject] as @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s Turrethealth 12
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet1,tag=InObject] run effect give @e[type=player,distance=..1,limit=1,sort=nearest] minecraft:instant_damage 1 1 true
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet2,tag=InObject] as @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s Turrethealth 6
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet2,tag=InObject] run effect give @e[type=player,distance=..1,limit=1,sort=nearest] minecraft:instant_damage 1 0 true
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet3,tag=InObject] as @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s Turrethealth 24
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet3,tag=InObject] run effect give @e[type=player,distance=..1,limit=1,sort=nearest] minecraft:instant_damage 1 2 true
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet4,tag=InObject] as @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s Turrethealth 48
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet4,tag=InObject] run effect give @e[type=player,distance=..1,limit=1,sort=nearest] minecraft:instant_damage 1 3 true
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet5,tag=InObject] as @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s Turrethealth 96
execute at @e[type=armor_stand,tag=Bullet,tag=Bullet5,tag=InObject] run effect give @e[type=player,distance=..1,limit=1,sort=nearest] minecraft:instant_damage 1 4 true
execute at @e[tag=Bullet,tag=InObject] if entity @e[type=!armor_stand,distance=..1] run particle block redstone_block ^ ^1 ^-0.4 0.2 0.2 0.2 0.01 2
execute at @e[tag=Bullet,tag=InObject] if entity @e[type=!armor_stand,distance=..1] run playsound entity.player.hurt master @a ~ ~ ~ 0.6 1
execute at @e[tag=Bullet,tag=InObject] run effect give @e[type=!armor_stand,type=!player,distance=..1,limit=1,sort=nearest] slowness 1 1 true 
kill @e[type=armor_stand,tag=Bullet,tag=InObject]
