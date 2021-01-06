# All Vanilla commands to stop remote control
# Made by: Viper1618
#--------------------

tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@e[type=armor_stand,tag=TurretC,limit=1,sort=nearest,distance=..1]"},{"text":"] ","color":"dark_green"},{"text":"Remote control stopped.","color":"gray"}]
tp @p @s
execute at @s run forceload remove ~ ~
tag @p remove TC_RemoteControl
tag @p remove TC_RemoteControlStop
kill @s
