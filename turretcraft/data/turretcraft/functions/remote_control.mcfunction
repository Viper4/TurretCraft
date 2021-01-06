# All Vanilla commands to remote control turrets
# Made by: Viper1618
#--------------------

effect give @a[tag=TC_RemoteControl] invisibility 1 0 true
effect give @a[tag=TC_RemoteControl] resistance 1 255 true
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p[tag=TC_RemoteControl] TC_Frequency store result entity @s Rotation[0] float 1 run data get entity @p[tag=TC_RemoteControl] Rotation[0]
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p[tag=TC_RemoteControl] TC_Frequency store result entity @s Rotation[1] float 1 run data get entity @p[tag=TC_RemoteControl] Rotation[1]
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest] at @s if score @s TC_Frequency = @p[tag=TC_RemoteControl,distance=0.1..] TC_Frequency run tp @p @s
execute as @e[type=armor_stand,tag=Firing,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p[tag=TC_RemoteControl,scores={TC_RightClick=0}] TC_Frequency run tag @s remove Firing
execute as @e[type=armor_stand,tag=!Firing,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest] if score @s TC_Frequency = @p[tag=TC_RemoteControl,scores={TC_RightClick=1..}] TC_Frequency run tag @s add Firing
