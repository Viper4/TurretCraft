#Turret scoreboards
scoreboard objectives add TC_FireTimer dummy
scoreboard objectives add TC_TurretCon dummy
scoreboard objectives add TC_TurretRot dummy
scoreboard objectives add TC_TurretRotS dummy
scoreboard objectives add TC_Turret trigger
scoreboard objectives add TC_Target trigger
scoreboard objectives add TC_UUID0 dummy
scoreboard objectives add TC_UUID1 dummy
scoreboard objectives add TC_UUID2 dummy
scoreboard objectives add TC_UUID3 dummy
scoreboard objectives add TC_PosX dummy
scoreboard objectives add TC_PosY dummy
scoreboard objectives add TC_PosZ dummy
execute unless entity @e[tag=TurretLimit,type=armor_stand] run summon armor_stand 0 0 0 {Tags:["TurretLimit","TC"],CustomName:'{"text":"Turret Limit"}',Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}
execute unless entity @e[tag=TurretLimit,type=armor_stand,scores={TC_TurretRot=-1..}] run scoreboard players set @e[type=armor_stand,tag=TurretCraft] TC_TurretRot 10
team add TC_NoColl
team modify TC_NoColl collisionRule never

#Guns scoreboards
scoreboard objectives add TC_RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add TC_M16_Ammo dummy
scoreboard objectives add TC_AK47_Ammo dummy
scoreboard objectives add TC_DE_Ammo dummy
scoreboard objectives add TC_AWP_Ammo dummy
scoreboard objectives add TC_Shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add TC_Recoil dummy

give @a written_book{pages:['["",{"text":" \\u0020Table of Contents \\u0020","underlined":true},{"text":"\\n","color":"reset"},{"text":"Turret Settings","color":"dark_gray"},{"text":" Pg.","color":"dark_gray"},{"text":" ","color":"blue"},{"text":"2","color":"blue","clickEvent":{"action":"change_page","value":2}},{"text":", ","color":"dark_gray"},{"text":"3","color":"blue","clickEvent":{"action":"change_page","value":3}},{"text":"\\n","color":"reset"},{"text":"Recipes Pg.","color":"dark_gray"},{"text":" ","color":"blue"},{"text":"4","color":"blue","clickEvent":{"action":"change_page","value":4}},{"text":"\\n","color":"reset"},{"text":"Op Settings Pg. ","color":"dark_gray"},{"text":"5","color":"blue","clickEvent":{"action":"change_page","value":5}},{"text":",","color":"black"},{"text":" ","color":"blue"},{"text":"6","color":"blue","clickEvent":{"action":"change_page","value":6}},{"text":"\\n\\n-\\n\\n","color":"reset"},{"text":"Video Tutorial","color":"blue"}]','["",{"text":" Turret Settings \\u0020","underlined":true},{"text":"Pg.1","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}},{"text":"\\n","color":"reset"},{"text":"Turret","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 100"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -1"}},{"text":"\\n","color":"reset"},{"text":"Refunds tier 1 component(s) when deleted/destroyed.","italic":true,"color":"gray"},{"text":"\\nAdd/Remove Targets:\\n","color":"reset"},{"text":"Player","color":"dark_green"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Target set 1"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Target set -1"}},{"text":"\\n","color":"reset"},{"text":"Friendly","color":"green"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Target set 2"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Target set -2"}},{"text":"\\n","color":"reset"},{"text":"Neutral","color":"gold"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Target set 3"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Target set -3"}},{"text":"\\n","color":"reset"},{"text":"Hostile","color":"red"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Target set 4"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Target set -4"}},{"text":"\\n","color":"reset"},{"text":"Pick Entity","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TC_Target set 5"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/trigger TC_Target set -5"}},{"text":"\\n","color":"reset"},{"text":"Stay within 3 blocks of desired turret.","italic":true,"color":"gray"}]','["",{"text":" Turret Settings \\u0020","underlined":true},{"text":"Pg.1","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}},{"text":"\\n","color":"reset"},{"text":"Name","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"Hide","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -2"}},{"text":" | ","color":"reset"},{"text":"Show","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -3"}},{"text":"\\n","color":"reset"},{"text":"Stats","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"Hide","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -24"}},{"text":" |","color":"black"},{"text":" ","color":"blue"},{"text":"Show","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -25"}},{"text":"\\n","color":"reset"},{"text":"Stay within 3 blocks of desired turret.","italic":true,"color":"gray"}]','["",{"text":" \\u0020 \\u0020 \\u0020 Recipes \\u0020 \\u0020","underlined":true},{"text":"Pg.1","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}},{"text":"\\n","color":"reset"},{"text":"Turret Components","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -4"}},{"text":"\\n","color":"blue"},{"text":"Gun Parts","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -5"}},{"text":"\\n","color":"blue"},{"text":"Guns","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set -6"}},{"text":"\\n","color":"blue"},{"text":"Turrets","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TC_Turret set 100"}},{"text":"\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020Op Settings \\u0020 ","underlined":true},{"text":"Pg.1","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}},{"text":"\\n","color":"reset"},{"text":"mobGriefing","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"On","color":"dark_green","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"}},{"text":" | ","color":"reset"},{"text":"Off","color":"red","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"}},{"text":"\\n","color":"reset"},{"text":"fireDamage","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"On","color":"dark_green","clickEvent":{"action":"run_command","value":"/gamerule fireDamage true"}},{"text":" | ","color":"reset"},{"text":"Off","color":"red","clickEvent":{"action":"run_command","value":"/gamerule fireDamage false"}},{"text":"\\n","color":"reset"},{"text":"doFireTick","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"On","color":"dark_green","clickEvent":{"action":"run_command","value":"/gamerule doFireTick true"}},{"text":" | ","color":"reset"},{"text":"Off","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doFireTick false"}},{"text":"\\n","color":"reset"},{"text":"commandFeedback","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"On","color":"dark_green","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":" | ","color":"reset"},{"text":"Off","color":"red","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}},{"text":"\\n","color":"reset"},{"text":"logAdminCommands","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"On","color":"dark_green","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"}},{"text":" | ","color":"reset"},{"text":"Off","color":"red","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"}},{"text":"\\n","color":"reset"},{"text":"Admin Bypass","color":"dark_gray"},{"text":": ","color":"reset"},{"text":"+","color":"dark_green","clickEvent":{"action":"run_command","value":"/tag @s add Admin"}},{"text":" | ","color":"reset"},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Admin"}},{"text":"\\n","color":"reset"},{"text":"Turret limit","color":"dark_gray"},{"text":":\\n","color":"reset"},{"text":"+","color":"dark_green"},{"text":": ","color":"reset"},{"text":"1","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 1"}},{"text":" ","color":"blue"},{"text":"5","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 5"}},{"text":" ","color":"blue"},{"text":"10","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 10"}},{"text":" ","color":"blue"},{"text":"100","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 100"}},{"text":"\\n","color":"reset"},{"text":"=","color":"blue"},{"text":": ","color":"reset"},{"text":"Default","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 10"}},{"text":" ","color":"blue"},{"text":"0","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 0"}},{"text":" ","color":"blue"},{"text":"\\u221e","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[type=armor_stand,tag=TurretLimit] TC_TurretRot -1"}},{"text":"\\n","color":"reset"},{"text":"-","color":"red"},{"text":": ","color":"reset"},{"text":"1","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 1"}},{"text":" ","color":"blue"},{"text":"5","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 5"}},{"text":" ","color":"blue"},{"text":"10","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 10"}},{"text":" ","color":"blue"},{"text":"100","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 100"}}]','["",{"text":" \\u0020 \\u0020Op Settings \\u0020 ","underlined":true},{"text":"Pg.1","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}},{"text":"\\n","color":"reset"},{"text":"Turret Ammo","color":"dark_gray"},{"text":":\\n","color":"reset"},{"text":"+","color":"dark_green"},{"text":": ","color":"reset"},{"text":"1","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 1"}},{"text":" ","color":"blue"},{"text":"5","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 5"}},{"text":" ","color":"blue"},{"text":"10","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 10"}},{"text":" ","color":"blue"},{"text":"100","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 100"}},{"text":"\\n","color":"reset"},{"text":"=","color":"blue"},{"text":": ","color":"reset"},{"text":"Default","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] remove InfiniteAmmo"}},{"text":" ","color":"blue"},{"text":"0","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[type=armor_stand,tag=TurretC,tag=!InfiniteAmmo,limit=1,sort=nearest] TC_AK47_Ammo 0"}},{"text":" ","color":"blue"},{"text":"\\u221e","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] add InfiniteAmmo"}},{"text":"\\n","color":"reset"},{"text":"-","color":"red"},{"text":": ","color":"reset"},{"text":"1","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 1"}},{"text":" ","color":"blue"},{"text":"5","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 5"}},{"text":" ","color":"blue"},{"text":"10","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 10"}},{"text":" ","color":"blue"},{"text":"100","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players remove @e[type=armor_stand,tag=TurretC,limit=1,sort=nearest] TC_AK47_Ammo 100"}}]'],title:"Turret Craft",author:Viper1618}
tellraw @a [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Loaded v1.1.1.","color":"gray"}]
