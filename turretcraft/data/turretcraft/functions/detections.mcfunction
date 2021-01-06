#All Vanilla commands for detecting item/block tags to reduce lag
#Made by Viper1618
#---

#Modified Crafting
execute at @e[type=item,nbt={Item:{Count:1b,id:"minecraft:dispenser"}}] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:repeater"}},distance=..1] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:iron_trapdoor"}},distance=..1] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:redstone_torch"}},distance=..1] run summon item_frame ~ ~ ~ {Tags:["ModCrafter"]}
execute at @e[type=item_frame,tag=ModCrafter] run summon armor_stand ~ ~-0.96 ~ {Tags:["ModCrafter"],Marker:1b,Small:1b,Invisible:1b,NoGravity:1b}
execute at @e[type=item_frame,tag=ModCrafter] run kill @e[type=item,distance=..1.5]
execute at @e[type=item_frame,tag=ModCrafter] run setblock ~ ~ ~ dispenser[facing=up]{CustomName:'{"text":"Modified Crafting"}'}
execute at @e[type=item_frame,tag=ModCrafter] run setblock ~ ~ ~-1 redstone_wall_torch[facing=north]
execute at @e[type=item_frame,tag=ModCrafter] run setblock ~ ~1 ~ iron_trapdoor
kill @e[type=item_frame,tag=ModCrafter]
execute as @e[type=armor_stand,tag=ModCrafter] at @s if block ~ ~ ~ dispenser{Items:[{}]} run function turretcraft:modified_crafter
execute at @e[type=armor_stand,tag=ModCrafter] unless block ~ ~ ~ dispenser run summon item ~-1.3 ~ ~ {Item:{id:"minecraft:repeater",Count:1b}}
execute as @e[type=armor_stand,tag=ModCrafter] at @s unless block ~ ~ ~ dispenser run kill @s

#Turret deletion
execute as @e[type=wither_skeleton,tag=TurretHealth] store result score @s TC_TurretRot run data get entity @s Health
execute at @a[scores={TC_Turret=-1},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run function turretcraft:turret_deletion
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame] at @s unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run function turretcraft:turret_deletion
execute as @e[tag=TurretC,tag=!Frame] at @s unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run kill @s
execute as @e[tag=TC,tag=!TurretLimit] at @s unless entity @e[tag=TurretC,distance=..1.3] run kill @s
execute as @e[tag=TurretHealth] at @s unless entity @e[tag=TurretC,distance=..1] run kill @s

#Remote control
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl] at @s unless entity @p[tag=TC_RemoteControl,distance=..1] run tag @s remove TC_RemoteControl
execute as @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl] at @s unless score @s TC_Frequency = @p[tag=TC_RemoteControl,distance=..1] TC_Frequency run tag @s remove TC_RemoteControl
execute at @a[tag=!TC_RemoteControl,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={TC_RightClick=1..,TC_Shifting=0}] run tag @p add TC_RemoteControlStart
tag @a[tag=TC_RemoteControl,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] add TC_RemoteControlStop
execute at @a[tag=TC_RemoteControl] unless score @p TC_Frequency = @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl,limit=1,sort=nearest,distance=..1] TC_Frequency run tag @p add TC_RemoteControlStop
execute at @a[tag=TC_RemoteControl] unless entity @e[type=armor_stand,tag=TC,tag=TurretC,tag=TC_RemoteControl,distance=..1] run tag @p add TC_RemoteControlStop
execute at @a[tag=TC_RemoteControlStop] store result score @p TC_UUID0 run data get entity @p UUID[0]
execute at @a[tag=TC_RemoteControlStop] store result score @p TC_UUID1 run data get entity @p UUID[1]
execute at @a[tag=TC_RemoteControlStop] store result score @p TC_UUID2 run data get entity @p UUID[2]
execute at @a[tag=TC_RemoteControl] run function turretcraft:remote_control
execute at @a[tag=Owner,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={TC_RightClick=1..,TC_Shifting=1..}] as @e[type=armor_stand,tag=TC,tag=TurretC,limit=1,sort=nearest,distance=..3] run function turretcraft:remote_control_pair
execute at @a[tag=TC_RemoteControlStart] run function turretcraft:remote_control_start
execute at @a[tag=TC_RemoteControlStop] as @e[tag=RemoteControlHome,tag=!New] if score @s TC_UUID0 = @p TC_UUID0 if score @s TC_UUID1 = @p TC_UUID1 if score @s TC_UUID2 = @p TC_UUID2 run function turretcraft:remote_control_stop

#Turret firing
scoreboard players remove @e[type=armor_stand,tag=TurretC,scores={TC_FireTimer=1..}] TC_FireTimer 1
execute as @e[type=armor_stand,tag=TurretC,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..}] run function turretcraft:firing
execute as @e[type=arrow,tag=Bullet,tag=New] run function turretcraft:bullets
scoreboard players set @e[type=armor_stand,tag=TurretC,tag=InfiniteAmmo] TC_AK47_Ammo 1337
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:1}}},distance=..1,limit=1] store result score @s TC_M16_Ammo run data get entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:1}}},distance=..1,limit=1] Item.Count 30
execute as @e[type=armor_stand,tag=Turret3C,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:5}}},distance=..1,limit=1] store result score @s TC_M16_Ammo run data get entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:5}}},distance=..1,limit=1] Item.Count 4
execute as @e[type=armor_stand,tag=Turret4C,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:6}}},distance=..1,limit=1] store result score @s TC_M16_Ammo run data get entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:6}}},distance=..1,limit=1] Item.Count 50
execute as @e[type=armor_stand,tag=TurretC,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock"}},distance=..1,limit=1] run scoreboard players operation @s TC_AK47_Ammo += @s TC_M16_Ammo
execute as @e[type=armor_stand,tag=TurretC,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock"}},distance=..1,limit=1] run scoreboard players set @s TC_M16_Ammo 0
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:1}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret3C,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:5}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret4C,tag=!off] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:6}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C,tag=!off] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:1}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret3C,tag=!off] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:5}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret4C,tag=!off] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:6}}},distance=..1,limit=1]

scoreboard players add @e[type=arrow,tag=Bullet,tag=Missile] TC_FireTimer 1
scoreboard players add @e[type=arrow,tag=Bullet,tag=Player] TC_FireTimer 1
execute as @e[type=arrow,tag=Bullet,tag=AK47,scores={TC_FireTimer=..4}] store result entity @s Motion[0] double 0.001 run scoreboard players get @s TC_PosX
execute as @e[type=arrow,tag=Bullet,tag=AK47,scores={TC_FireTimer=..4}] store result entity @s Motion[1] double 0.001 run scoreboard players get @s TC_PosY
execute as @e[type=arrow,tag=Bullet,tag=AK47,scores={TC_FireTimer=..4}] store result entity @s Motion[2] double 0.001 run scoreboard players get @s TC_PosZ
execute as @e[type=arrow,tag=Bullet,tag=M16,scores={TC_FireTimer=..7}] store result entity @s Motion[0] double 0.001 run scoreboard players get @s TC_PosX
execute as @e[type=arrow,tag=Bullet,tag=M16,scores={TC_FireTimer=..7}] store result entity @s Motion[1] double 0.001 run scoreboard players get @s TC_PosY
execute as @e[type=arrow,tag=Bullet,tag=M16,scores={TC_FireTimer=..7}] store result entity @s Motion[2] double 0.001 run scoreboard players get @s TC_PosZ
execute as @e[type=arrow,tag=Bullet,tag=DE,scores={TC_FireTimer=..11}] store result entity @s Motion[0] double 0.001 run scoreboard players get @s TC_PosX
execute as @e[type=arrow,tag=Bullet,tag=DE,scores={TC_FireTimer=..11}] store result entity @s Motion[1] double 0.001 run scoreboard players get @s TC_PosY
execute as @e[type=arrow,tag=Bullet,tag=DE,scores={TC_FireTimer=..11}] store result entity @s Motion[2] double 0.001 run scoreboard players get @s TC_PosZ
execute as @e[type=arrow,tag=Bullet,tag=AWP,scores={TC_FireTimer=..22}] store result entity @s Motion[0] double 0.001 run scoreboard players get @s TC_PosX
execute as @e[type=arrow,tag=Bullet,tag=AWP,scores={TC_FireTimer=..22}] store result entity @s Motion[1] double 0.001 run scoreboard players get @s TC_PosY
execute as @e[type=arrow,tag=Bullet,tag=AWP,scores={TC_FireTimer=..22}] store result entity @s Motion[2] double 0.001 run scoreboard players get @s TC_PosZ
execute at @e[type=arrow,tag=Bullet] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 1
execute at @e[type=arrow,tag=Bullet,tag=Flame] run particle minecraft:flame ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^0.5 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^0.5 ^ ^ ^0.5 air replace #impermeable
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^-0.5 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^-0.5 ^ ^ ^-0.5 air replace #impermeable
execute at @e[type=arrow,tag=Bullet,nbt={inGround:1b}] run particle large_smoke ~ ~ ~ 0 0 0 0.01 1
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt={inGround:1b},scores={TC_FireTimer=..59}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt=!{inGround:1b},scores={TC_FireTimer=60}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,tag=!New,nbt=!{inGround:1b},scores={TC_FireTimer=3..59}] positioned ~ ~-1 ~ if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!TC,tag=!Missile,distance=..1.5] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Flame] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire replace air
kill @e[type=arrow,tag=Bullet,nbt={inGround:1b}]
kill @e[type=arrow,tag=Bullet,scores={TC_FireTimer=100..}]
execute as @e[type=arrow,tag=Bullet,tag=!New,tag=Missile,scores={TC_FireTimer=3..}] at @s positioned ~ ~-1 ~ if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!Missile,tag=!TC,distance=..1.5] run kill @s
kill @e[type=armor_stand,tag=BulletAnchor,tag=Player]

#Upgrades
execute as @e[type=wither_skeleton,tag=TurretHealth,tag=InfiniteHealth,scores={TC_TurretRot=..1336}] store result entity @s Health float 1 run scoreboard players set @s TC_TurretRot 1337
execute as @e[type=armor_stand,tag=TurretC,tag=!off] at @s if entity @e[type=item,distance=..1,limit=1] run function turretcraft:upgrades

tag @a[tag=!Admin,scores={TC_FireTimer=0}] add Reloaded

#Player Desert Eagle
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_DE_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"8","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run function turretcraft:deserteagle
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},{id:"minecraft:clock",tag:{CustomModelData:2}}]}] run scoreboard players set @p TC_FireTimer 40
execute at @a[tag=!Admin,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},{id:"minecraft:clock",tag:{CustomModelData:2}}]},scores={TC_FireTimer=40}] run tag @p add StartReloading
execute at @a[tag=!Admin,tag=StartReloading,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},{id:"minecraft:clock",tag:{CustomModelData:2}}]}] run tag @p add ReloadingDE
scoreboard players set @a[tag=Reloaded,tag=ReloadingDE] TC_DE_Ammo 8
tag @a[tag=!Admin,tag=Reloaded,tag=ReloadingDE] remove ReloadingDE
replaceitem entity @a[tag=StartReloading,tag=ReloadingDE] weapon.mainhand carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 8     ","color":"yellow"},{"text":"Fire rate "},{"text":"70RPM","color":"yellow"},{"text":"     Damage "},{"text":"12HP","color":"yellow"}]'],Name:'{"text":"Desert Eagle","italic":"false"}'}}
tag @a[tag=!Admin,tag=ReloadingDE,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] add CancelReload
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]},nbt=!{Inventory:[{id:"minecraft:clock",tag:{CustomModelData:2}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,scores={TC_FireTimer=40,TC_DE_Ammo=0..7},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] clock{CustomModelData:2} 1
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=-1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_DE_Ammo=0..7,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:clock",tag:{CustomModelData:2}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run scoreboard players set @p TC_DE_Ammo 8

#Player AK47
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_AK47_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"30","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run function turretcraft:ak47
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},{id:"minecraft:clock",tag:{CustomModelData:1}}]}] run scoreboard players set @p TC_FireTimer 50
execute at @a[tag=!Admin,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},{id:"minecraft:clock",tag:{CustomModelData:1}}]},scores={TC_FireTimer=50}] run tag @p add StartReloading
execute at @a[tag=!Admin,tag=StartReloading,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},{id:"minecraft:clock",tag:{CustomModelData:1}}]}] run tag @p add ReloadingAK47
scoreboard players set @a[tag=Reloaded,tag=ReloadingAK47] TC_AK47_Ammo 30
tag @a[tag=!Admin,tag=ReloadingAK47,tag=Reloaded] remove ReloadingAK47
replaceitem entity @a[tag=!Admin,tag=StartReloading,tag=ReloadingAK47] weapon.mainhand carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"380RPM","color":"yellow"},{"text":"     Damage "},{"text":"8HP","color":"yellow"}]'],Name:'{"text":"AK47","italic":"false"}'}}
tag @a[tag=!Admin,tag=ReloadingAK47,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] add CancelReload
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]},nbt=!{Inventory:[{id:"minecraft:clock",tag:{CustomModelData:1}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,tag=StartReloading,tag=ReloadingAK47] clock{CustomModelData:1} 1
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=-1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_AK47_Ammo=0..29,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:clock",tag:{CustomModelData:1}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players set @p TC_AK47_Ammo 30

#Player M16
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_M16_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"30","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run function turretcraft:m16
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},{id:"minecraft:clock",tag:{CustomModelData:4}}]}] run scoreboard players set @p TC_FireTimer 50
execute at @a[tag=!Admin,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},{id:"minecraft:clock",tag:{CustomModelData:4}}]},scores={TC_FireTimer=50}] run tag @p add StartReloading
execute at @a[tag=!Admin,tag=StartReloading,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},{id:"minecraft:clock",tag:{CustomModelData:4}}]}] run tag @p add ReloadingM16
scoreboard players set @a[tag=Reloaded,tag=ReloadingM16] TC_M16_Ammo 30
tag @a[tag=!Admin,tag=ReloadingM16,tag=Reloaded] remove ReloadingM16
replaceitem entity @a[tag=!Admin,tag=StartReloading,tag=ReloadingM16] weapon.mainhand carrot_on_a_stick{CustomModelData:4,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"400RPM","color":"yellow"},{"text":"     Damage "},{"text":"5HP","color":"yellow"}]'],Name:'{"text":"M16","italic":"false"}'}}
tag @a[tag=!Admin,tag=ReloadingM16,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] add CancelReload
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29,TC_FireTimer=..0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]},nbt=!{Inventory:[{id:"minecraft:clock",tag:{CustomModelData:4}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,tag=StartReloading,tag=ReloadingM16] clock{CustomModelData:4} 1
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_M16_Ammo=0..29,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:clock",tag:{CustomModelData:4}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run scoreboard players set @p TC_M16_Ammo 30

#Player AWP
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_AWP_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"10","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run function turretcraft:awp
execute at @a[tag=!Admin,scores={TC_AWP_Ammo=0..9,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},{id:"minecraft:clock",tag:{CustomModelData:3}}]}] run scoreboard players set @p TC_FireTimer 70
execute at @a[tag=!Admin,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},{id:"minecraft:clock",tag:{CustomModelData:3}}]},scores={TC_FireTimer=70}] run tag @p add StartReloading
execute at @a[tag=!Admin,tag=StartReloading,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},{id:"minecraft:clock",tag:{CustomModelData:3}}]}] run tag @p add ReloadingAWP
scoreboard players set @a[tag=Reloaded,tag=ReloadingAWP] TC_AWP_Ammo 10
tag @a[tag=!Admin,tag=ReloadingAWP,tag=Reloaded] remove ReloadingAWP
replaceitem entity @a[tag=!Admin,tag=StartReloading,tag=ReloadingAWP] weapon.mainhand carrot_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 10     ","color":"yellow"},{"text":"Fire rate "},{"text":"40RPM","color":"yellow"},{"text":"     Damage "},{"text":"30HP","color":"yellow"}]'],Name:'{"text":"AWP","italic":"false"}'}}
tag @a[tag=!Admin,tag=ReloadingAWP,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] add CancelReload
execute at @a[tag=!Admin,tag=StartReloading,tag=ReloadingAWP,nbt=!{Inventory:[{id:"minecraft:clock",tag:{CustomModelData:3}}]}] run tellraw @p {"text":"No 7.62x51mm Ammo left","color":"red"}
clear @a[tag=!Admin,tag=StartReloading,tag=ReloadingAWP] clock{CustomModelData:3} 1
scoreboard players remove @a[scores={TC_FireTimer=0..},tag=ReloadingAWP] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_Shifting=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run effect give @p slowness 1 255 true
execute at @a[scores={TC_Shifting=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},nbt={ActiveEffects:[{Id:2b,Amplifier:-1b}]}] run effect clear @p slowness

execute at @a[tag=!Admin,tag=StartReloading] run replaceitem entity @p weapon.offhand air

#Gun playsounds
tellraw @a[tag=CancelReload] {"text":"Canceled Reload","color":"red"}
scoreboard players set @a[tag=CancelReload] TC_FireTimer -1
give @a[tag=CancelReload,tag=ReloadingDE] clock{CustomModelData:2,display:{Name:'{"text":".44 Magnum","italic":"false"}'}}
give @a[tag=CancelReload,tag=ReloadingAK47] clock{CustomModelData:1,display:{Name:'{"text":"7.62x39mm","italic":"false"}'}}
give @a[tag=CancelReload,tag=ReloadingM16] clock{CustomModelData:4,display:{Name:'{"text":"5.56x45mm","italic":"false"}'}}
give @a[tag=CancelReload,tag=ReloadingAWP] clock{CustomModelData:3,display:{Name:'{"text":"7.62x51mm","italic":"false"}'}}
tag @a[tag=CancelReload] remove StartReloading
tag @a[tag=CancelReload] remove Reloading
tag @a[tag=CancelReload] remove ReloadingDE
tag @a[tag=CancelReload] remove ReloadingAK47
tag @a[tag=CancelReload] remove ReloadingM16
tag @a[tag=CancelReload] remove ReloadingAWP
tag @a[tag=CancelReload] remove CancelReload
tellraw @a[tag=StartReloading] {"text":"Reloading...","color":"gray"}
execute at @a[tag=StartReloading] run playsound minecraft:block.wooden_trapdoor.open player @a ~ ~ ~ 1 2
tag @a[tag=StartReloading] add Reloading
tag @a[tag=StartReloading] remove StartReloading
execute at @a[tag=Reloading,scores={TC_FireTimer=30}] run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
execute at @a[tag=Reloading,scores={TC_FireTimer=5}] run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
tellraw @a[tag=Reloaded] {"text":"Reloaded","color":"green"}
execute at @a[tag=Reloaded] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.8
tag @a[tag=Reloaded,tag=Reloading] remove Reloading
scoreboard players set @a[tag=Reloaded] TC_FireTimer -1
tag @a[tag=Reloaded] remove Reloaded
