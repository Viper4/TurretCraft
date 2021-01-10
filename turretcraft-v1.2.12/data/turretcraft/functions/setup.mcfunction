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
scoreboard objectives add TC_PosX dummy
scoreboard objectives add TC_PosY dummy
scoreboard objectives add TC_PosZ dummy
scoreboard objectives add TC_Frequency trigger
scoreboard objectives add TC_KillVillager minecraft.killed:minecraft.villager
scoreboard objectives add TC_MaxTurrets dummy
execute in minecraft:overworld unless entity @e[tag=TurretLimit,type=armor_stand] run summon armor_stand 0 0 0 {Tags:["TurretLimit","TC"],CustomName:'{"text":"Turret Limit"}',Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}
execute in minecraft:overworld unless entity @e[tag=TurretLimit,type=armor_stand,scores={TC_TurretRot=-1..},distance=0..] run scoreboard players set @e[type=armor_stand,tag=TurretLimit] TC_TurretRot 10
execute in minecraft:overworld run forceload add 0 0

#Guns scoreboards
scoreboard objectives add TC_RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add TC_M16_Ammo dummy
scoreboard objectives add TC_AK47_Ammo dummy
scoreboard objectives add TC_DE_Ammo dummy
scoreboard objectives add TC_AWP_Ammo dummy
scoreboard objectives add TC_Shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add TC_Recoil dummy

tellraw @a [{"text":"[Turretcraft]","color":"dark_green"},{"text":" Loaded v1.2.12","color":"gray"}]
