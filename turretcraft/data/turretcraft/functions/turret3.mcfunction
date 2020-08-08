#All Vanilla commands for Rocket Launcher logic
#Made by Viper1618
#---

#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=PlayerT] if entity @a[tag=!Owner,distance=..16] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..16,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[tag=!Owner,distance=16..21] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..21,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0..1}] if entity @a[tag=!Owner,distance=6..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[tag=!Owner,distance=16..27] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..27,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[tag=!Owner,distance=6..26] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=FriendlyT] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..16] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Friendly,distance=..16,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=16..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Friendly,distance=..21,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=5..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=16..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Friendly,distance=..27,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=6..26] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=NeutralT] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=..16] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Neutral,distance=..16,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=16..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Neutral,distance=1..21,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=6..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=16..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Neutral,distance=1..27,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=6..26] run tag @s add Firing

execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=HostileT] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..16] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Hostile,distance=..16,sort=nearest,limit=1]
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=16..21] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Hostile,distance=..21,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=0..1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=5..20] run tag @s add Firing
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=16..27] run tp @s ~ ~ ~ facing entity @e[nbt=!{Invisible:1b},tag=Hostile,distance=..27,sort=nearest,limit=1] eyes
execute at @s[type=minecraft:armor_stand,tag=Turret3C,tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=6..26] run tag @s add Firing
