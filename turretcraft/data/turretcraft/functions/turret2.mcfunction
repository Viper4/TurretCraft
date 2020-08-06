#All Vanilla commands for Machine Gun logic
#Made by Viper1618
#---

#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..21] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..21,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..26] run tp @s ~ ~ ~ facing entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..26,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[nbt=!{ActiveEffects:[{id:14b}]},tag=!Owner,distance=..25] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..21,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..26,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Friendly,distance=..25] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..21,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=1..26,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Neutral,distance=..25] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..21,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..26] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..26,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret2C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[nbt=!{Invisible:1b},nbt=!{ActiveEffects:[{id:14b}]},tag=Hostile,distance=..25] run tag @s add Firing
