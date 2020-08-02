#TurretCraft
scoreboard objectives add TC_FireTimer dummy
scoreboard objectives add TurretCon dummy
scoreboard objectives add TurretRot dummy
scoreboard objectives add TurretRotS dummy
scoreboard objectives add TurretPS dummy
scoreboard objectives add Turret trigger
scoreboard objectives add TC_DelTurret trigger
scoreboard objectives add TurretA trigger
scoreboard players enable @a Turret
scoreboard players enable @a TC_DelTurret
scoreboard players enable @a TurretA
scoreboard players set @e[tag=TC] TurretRotS -90
tellraw @a[scores={Turret=1}] [{"text":"[TurretCraft] ","color":"dark_green"},{"text":"Choose a turret to construct: ","color":"gray"},{"text":"\nV1 (Sniper)","color":"white","clickEvent":{"action":"run_command","value":"/summon item_frame ~ ~ ~ {Tags:[Turret1]}"}},{"text":"\nV2 (Machine Gun)","color":"white","clickEvent":{"action":"run_command","value":"/summon item_frame ~ ~ ~ {Tags:[Turret2]}"}}]
tag @a[scores={Turret=1}] add Allowed
scoreboard players reset @a[scores={Turret=1..}] Turret
#Entity picking is a work in progress
#scoreboard objectives add TC_RightClick minecraft.used:minecraft.carrot_on_a_stick
#scoreboard objectives add TurretPick dummy
scoreboard players add @a[tag=!Stop] TurretPS 1 
tag @a[scores={TurretPS=2}] add Stop
scoreboard players reset @a[scores={TurretPS=3..}]
give @a[scores={TurretPS=1}] minecraft:written_book{pages:['[{"text":"   Creating a Turret   ","color":"dark_red","underlined":"true","italic":"true"},{"text":"Type /trigger Turret to create a turret. Type /trigger TC_DelTurret to delete the turret you are next to, but doing this will only refund 2 components regardless of upgrades.","color":"black","underlined":"false","italic":"false"}]','[{"text":"        Upgrading        ","color":"dark_red","underlined":"true","italic":"true"},{"text":"Craft one component for the corresponding turret and throw the component onto the turret. Ex: Turret V1 requires one V1 component to upgrade.","color":"black","underlined":"false","italic":"false"}]','[{"text":"         Allowing          ","color":"dark_red","underlined":"true","italic":"true"},{"text":"Player (Includes you!) ","color":"dark_green","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set 1"}},{"text":"Friendly                 ","color":"green","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set 2"}},{"text":"Neutral                  ","color":"gold","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set 3"}},{"text":"Hostile                   ","color":"red","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set 4"}},{"text":"Pick Entity               ","color":"blue","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set 5"}},{"text":"Note: You must stand next to the Turret you wish to implement these changes on.","color":"black","underlined":"false"}]','[{"text":"        Unallowing        ","color":"dark_red","underlined":"true","italic":"true"},{"text":"Player (Includes you!) ","color":"dark_green","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set -1"}},{"text":"Friendly                 ","color":"green","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set -2"}},{"text":"Neutral                  ","color":"gold","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set -3"}},{"text":"Hostile                   ","color":"red","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set -4"}},{"text":"Pick Entity               ","color":"blue","underlined":"false","italic":"false","clickEvent":{"action":"run_command","value":"/trigger TurretA set -5"}},{"text":"Note: You must stand next to the Turret you wish to implement these changes on.","color":"black","underlined":"false"}]'],title:"Turrets for Dummys",author:"Viper1618"}

#Guns
scoreboard objectives add TC_RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add TC_Ammo dummy
scoreboard objectives add TC_Shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add TC_Recoil dummy
scoreboard objectives add TC_CheckAmmo trigger
scoreboard players enable @a TC_CheckAmmo
scoreboard players set @a[scores={TurretPS=1}] TC_Ammo 200
scoreboard players set @a[tag=Bypass] TC_Ammo 200
execute as @a[scores={TC_CheckAmmo=1..}] run tellraw @s [{"text":"Ammo: ","color":"gray"},{"score":{"name":"@s","objective":"TC_Ammo"},"color":"yellow"}]
scoreboard players set @a TC_RightClick 0
scoreboard players set @a TC_Shifting 0
scoreboard players set @a TC_CheckAmmo 0
scoreboard players set @a[tag=!Stop] TC_Recoil 0
