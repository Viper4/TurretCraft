#All Vanilla commands for Sniper logic
#Made by Viper1618
#---

#Detecting for unwanted entities in a radius, facing towards them, and adding the "Firing" tag
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0}] if entity @a[tag=!Owner,distance=..27] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..27,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=0}] if entity @a[tag=!Owner,distance=..26] run tag @s add Firing
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=1}] if entity @a[tag=!Owner,distance=..33] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..33,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=1}] if entity @a[tag=!Owner,distance=..32] run tag @s add Firing
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[tag=!Owner,distance=..59] run tp @s ~ ~ ~ facing entity @a[tag=!Owner,distance=..59,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=PlayerT,scores={TC_TurretCon=2}] if entity @a[tag=!Owner,distance=..58] run tag @s add Firing

execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..27] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..27,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..26] run tag @s add Firing
execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..33] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..33,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..32] run tag @s add Firing
execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..59] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..59,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=FriendlyT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Friendly,distance=..58] run tag @s add Firing

execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..27] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..27,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..26] run tag @s add Firing
execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..33] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..33,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..32] run tag @s add Firing
execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..59] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..59,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=NeutralT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Neutral,distance=1..58] run tag @s add Firing

execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..27] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..27,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=0}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..26] run tag @s add Firing
execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..33] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..33,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=1}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..32] run tag @s add Firing
execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..59] run tp @s ~ ~ ~ facing entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..59,sort=nearest,limit=1]
execute at @s[tag=!Frame,tag=HostileT,scores={TC_TurretCon=2}] if entity @e[tag=!Owner,nbt=!{Invisible:1b},tag=Hostile,distance=..58] run tag @s add Firing
