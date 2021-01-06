# All Vanilla commands to switch remote control
# Made by: Viper1618
#--------------------

tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Switched remote control.","color":"gray"}]
tag @s add TC_RemoteControl
tp @p @s
