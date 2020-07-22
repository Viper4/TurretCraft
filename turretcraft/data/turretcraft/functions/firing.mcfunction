scoreboard players add @e[type=minecraft:armor_stand,tag=Turret1H,tag=Firing] TurretBDL 1
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret1H,tag=Firing] TurretBDR 1
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded,tag=!Upgraded1,tag=Firing] TurretBDL 2
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=!Upgraded,tag=!Upgraded1,tag=Firing] TurretBDR 2
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded,tag=!Upgraded1,tag=Firing] TurretBDL 3
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded,tag=!Upgraded1,tag=Firing] TurretBDR 3
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1,tag=!Upgraded,tag=Firing] TurretBDL 4
scoreboard players add @e[type=minecraft:armor_stand,tag=Turret2H,tag=Upgraded1,tag=!Upgraded,tag=Firing] TurretBDR 4
scoreboard players set @e[type=armor_stand,tag=TurretH,tag=!Firing] TurretBDL 0
scoreboard players set @e[type=armor_stand,tag=TurretH,tag=!Firing] TurretBDR 0
scoreboard players set @e[type=armor_stand,scores={TurretBDL=16..}] TurretBDL 0
scoreboard players set @e[type=armor_stand,scores={TurretBDR=16..}] TurretBDR 0
execute at @e[type=armor_stand,tag=Firing,scores={TurretBDL=0}] run summon armor_stand ^0.3 ^0.5 ^0.6 {ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"dark_oak_button",Count:1b},{}],DisabledSlots:2039583,Pose:{RightArm:[360f,307f,218f]},Tags:["Bullet"],NoGravity:1,Invisible:1b}
execute as @e[type=armor_stand,tag=Firing,scores={TurretBDL=0}] at @s run tp @e[type=armor_stand,tag=Bullet,nbt={HandItems:[{id:"minecraft:dark_oak_button",Count:1b},{}]},distance=..1] ^0.3 ^0.5 ^0.6 ~ ~
execute at @e[type=armor_stand,tag=Firing,tag=!Upgraded,scores={TurretBDR=8}] run summon armor_stand ^-0.3 ^0.5 ^0.6 {ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"dark_oak_button",Count:1b},{}],DisabledSlots:2039583,Pose:{RightArm:[360f,307f,218f]},Tags:["Bullet"],NoGravity:1,Invisible:1b}
execute as @e[type=armor_stand,tag=Firing,tag=!Upgraded,scores={TurretBDR=8}] at @s run tp @e[type=armor_stand,tag=Bullet,nbt={ShowArms:1b},distance=..1] ^-0.3 ^0.5 ^0.6 ~ ~
execute at @e[type=armor_stand,tag=Firing,scores={TurretBDL=0}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 6 1
execute at @e[type=armor_stand,tag=Firing,tag=!Upgraded,scores={TurretBDR=8}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 6 1
execute at @e[type=armor_stand,tag=Firing,tag=Turret1H,tag=Upgraded,scores={TurretBDR=8}] run summon armor_stand ^-0.3 ^0.5 ^0.6 {ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"dark_oak_button",Count:1b},{}],DisabledSlots:2039583,Pose:{RightArm:[360f,307f,218f]},Tags:["Bullet"],NoGravity:1,Invisible:1b}
execute as @e[type=armor_stand,tag=Firing,tag=Turret1H,tag=Upgraded,scores={TurretBDR=8}] at @s run tp @e[type=armor_stand,tag=Bullet,nbt={ShowArms:1b},distance=..1] ^-0.3 ^0.5 ^0.6 ~ ~
execute at @e[type=armor_stand,tag=Firing,tag=Turret1H,tag=Upgraded,scores={TurretBDR=8}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 6 1
execute at @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded,scores={TurretBDR=9}] run summon armor_stand ^-0.3 ^0.5 ^0.6 {ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"dark_oak_button",Count:1b},{}],DisabledSlots:2039583,Pose:{RightArm:[360f,307f,218f]},Tags:["Bullet"],NoGravity:1,Invisible:1b}
execute as @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded,scores={TurretBDR=9}] at @s run tp @e[type=armor_stand,tag=Bullet,nbt={ShowArms:1b},distance=..1] ^-0.3 ^0.5 ^0.6 ~ ~
execute at @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded,scores={TurretBDR=9}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 6 1
execute at @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded1,scores={TurretBDR=8}] run summon armor_stand ^-0.3 ^0.5 ^0.6 {ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"dark_oak_button",Count:1b},{}],DisabledSlots:2039583,Pose:{RightArm:[360f,307f,218f]},Tags:["Bullet"],NoGravity:1,Invisible:1b}
execute as @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded1,scores={TurretBDR=8}] at @s run tp @e[type=armor_stand,tag=Bullet,nbt={ShowArms:1b},distance=..1] ^-0.3 ^0.5 ^0.6 ~ ~
execute at @e[type=armor_stand,tag=Firing,tag=Turret2H,tag=Upgraded1,scores={TurretBDR=8}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 6 1
execute as @e[type=armor_stand,tag=Bullet] at @s if entity @e[type=armor_stand,tag=Turret1H,tag=!Upgraded,distance=..1] run tag @s add Bullet1
execute as @e[type=armor_stand,tag=Bullet] at @s if entity @e[type=armor_stand,tag=Turret2H,distance=..1] run tag @s add Bullet2
execute as @e[type=armor_stand,tag=Bullet] at @s if entity @e[type=armor_stand,tag=Turret1H,tag=Upgraded,tag=!Upgraded1,distance=..1] run tag @s add Bullet3
execute as @e[type=armor_stand,tag=Bullet] at @s if entity @e[type=armor_stand,tag=Turret1H,tag=Upgraded1,distance=..1] run tag @s add Bullet5
scoreboard players add @e[tag=Bullet] TC_Timer 1
execute at @e[scores={TC_Timer=..1},type=armor_stand,tag=Bullet] run particle campfire_cosy_smoke ^ ^1 ^-0.8 0.2 0.2 0.2 0.04 1
execute at @e[scores={TC_Timer=..1},type=armor_stand,tag=Bullet] run particle smoke ~ ~1 ~ 0.1 0.1 0.1 0.02 1
function turretcraft:check_inobject
function turretcraft:check_inobject
function turretcraft:check_inobject
function turretcraft:check_inobject
function turretcraft:check_inobject
function turretcraft:check_inobject
#X Y Z knockback doesn't work so using slowness instead
#execute as @e[type=armor_stand,tag=TurretH] at @s store result score @s TurretPX run data get entity @s Pos[0]
#execute as @e[type=armor_stand,tag=TurretH] at @s store result score @s TurretPY run data get entity @s Pos[1]
#execute as @e[type=armor_stand,tag=TurretH] at @s store result score @s TurretPZ run data get entity @s Pos[2]
#execute as @e[type=armor_stand,tag=Bullet,tag=InObject] store result score @s TurretPXIO run data get entity @s Pos[0]
#execute as @e[type=armor_stand,tag=Bullet,tag=InObject] store result score @s TurretPYIO run data get entity @s Pos[1]
#execute as @e[type=armor_stand,tag=Bullet,tag=InObject] store result score @s TurretPZIO run data get entity @s Pos[2]
#execute as @e[type=armor_stand,tag=Bullet] run scoreboard players operation @s TurretPXIO -= @s PX
#execute as @e[type=armor_stand,tag=Bullet] run scoreboard players operation @s TurretPYIO -= @s PY
#execute as @e[type=armor_stand,tag=Bullet] run scoreboard players operation @s TurretPZIO -= @s PZ
#execute at @e[type=armor_stand,tag=Bullet,tag=InObject,tag=!Slow] as @e[type=!player,type=!armor_stand,type=!item,type=!arrow,distance=..1,limit=1] at @s store result entity @s Motion[1] double 0.003 run scoreboard players get @e[type=armor_stand,tag=Bullet,tag=InObject,limit=1,tag=!Slow,distance=..1] TurretPYIO
#execute at @e[type=armor_stand,tag=Bullet,tag=InObject,tag=Slow] as @e[type=!player,type=!armor_stand,type=!item,type=!arrow,sort=nearest,limit=1] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @e[type=armor_stand,tag=Bullet,tag=InObject,limit=1,tag=Slow,distance=..1] TurretPYIO
