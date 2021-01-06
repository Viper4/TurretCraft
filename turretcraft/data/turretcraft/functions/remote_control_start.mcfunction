# All Vanilla commands to start remote control
# Made by: Viper1618
#--------------------

execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=!TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p TC_Frequency run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"] ","color":"dark_green"},{"text":"Remote control started.","color":"gray"}]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["RemoteControlHome","New"]}
execute as @e[type=armor_stand,tag=New,tag=RemoteControlHome,limit=1,sort=nearest] store result score @s TC_UUID0 run data get entity @p UUID[0]
execute as @e[type=armor_stand,tag=New,tag=RemoteControlHome,limit=1,sort=nearest] store result score @s TC_UUID1 run data get entity @p UUID[1]
execute as @e[type=armor_stand,tag=New,tag=RemoteControlHome,limit=1,sort=nearest] store result score @s TC_UUID2 run data get entity @p UUID[2]
execute as @e[type=armor_stand,tag=New,tag=RemoteControlHome,limit=1,sort=nearest] store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[type=armor_stand,tag=New,tag=RemoteControlHome,limit=1,sort=nearest] store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
tag @e[type=armor_stand,tag=New,tag=RemoteControlHome] remove New
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=!TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p TC_Frequency run tp @p @s
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=!TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p TC_Frequency run tag @s add TC_RemoteControl
tag @p add TC_RemoteControl
tag @p remove TC_RemoteControlStart
