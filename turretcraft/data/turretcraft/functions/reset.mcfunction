scoreboard players set @a[tag=!Stop] TC_M16_Ammo 30
scoreboard players set @a[tag=!Stop] TC_AK47_Ammo 30
scoreboard players set @a[tag=!Stop] TC_DE_Ammo 8
scoreboard players set @a[tag=!Stop] TC_AWP_Ammo 10
scoreboard players set @a[tag=!Stop] TC_Recoil 0
scoreboard players set @a[tag=!Stop] TC_FireTimer 0
scoreboard players set @a[tag=!Stop] TC_TurretRotS 0
scoreboard players set @a[tag=!Stop] TC_TurretRot 0
tag @a[tag=!Stop] add Stop
scoreboard players set @e[tag=TurretLimit,type=armor_stand,scores={TC_TurretRot=..-2}] TC_TurretRot 0
scoreboard players reset @a TC_Turret
scoreboard players reset @a TC_Target
scoreboard players set @a[scores={TC_RightClick=1..}] TC_RightClick 0
scoreboard players set @a[scores={TC_Shifting=1..}] TC_Shifting 0
scoreboard players enable @a TC_Turret
scoreboard players enable @a TC_Target
