#All Vanilla commands for Flamethrower logic
#Made by Viper1618
#---

#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..14] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..14,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..13] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..17] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..17,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..16] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..14] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..14,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..13] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..17] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..17,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..16] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..14] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..14,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] at @s if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..13] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..17] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..17,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..16] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..14] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..14,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..13] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..17] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..17,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret4C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..16] run tag @s add Firing
