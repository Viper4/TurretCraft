# All Vanilla commands to remote control pair with turrets
# Made by: Viper1618
#--------------------

scoreboard players operation @s TC_Frequency = @p TC_Frequency
tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"] ","color":"dark_green"},{"text":"Tuned frequency to ","color":"gray"},{"score":{"name":"@s","objective":"TC_Frequency"},"color":"dark_gray"},{"text":".","color":"gray"}]
