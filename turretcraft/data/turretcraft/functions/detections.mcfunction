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
execute as @e[type=armor_stand,tag=TurretC] at @s if entity @a[scores={TC_Turret=-1},tag=Owner,distance=..3] run function turretcraft:turret_deletion
execute as @e[type=armor_stand,tag=TurretC,tag=!Frame] at @s unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run function turretcraft:turret_deletion
execute as @e[tag=TurretC,tag=!Frame] at @s unless entity @e[type=wither_skeleton,tag=TurretHealth,distance=..1] run kill @s
execute as @e[tag=TC,tag=!TurretLimit] at @s unless entity @e[tag=TurretC,distance=..1.3] run kill @s
execute as @e[tag=TurretHealth] at @s unless entity @e[tag=TurretC,distance=..1] run kill @s

#Turret firing
scoreboard players remove @e[type=armor_stand,tag=TurretC,tag=Firing,scores={TC_FireTimer=1..}] TC_FireTimer 1
execute as @e[type=armor_stand,tag=TurretC,tag=Firing,scores={TC_FireTimer=0,TC_AK47_Ammo=1..}] run function turretcraft:firing
execute as @e[type=arrow,tag=Bullet,tag=New] run function turretcraft:bullets
scoreboard players set @e[type=armor_stand,tag=TurretC,tag=InfiniteAmmo] TC_AK47_Ammo 1337
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 30
execute as @e[type=armor_stand,tag=Turret3C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 4
execute as @e[type=armor_stand,tag=Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1] run scoreboard players add @s TC_AK47_Ammo 50
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret3C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=Turret4C] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1] run tellraw @a[distance=..5] [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]","color":"dark_green"},{"text":" Now at ","color":"gray"},{"score":{"name":"@s","objective":"TC_AK47_Ammo"},"color":"dark_gray"},{"text":" Ammo.","color":"gray"}]
execute as @e[type=armor_stand,tag=TurretC,tag=!Turret3C,tag=!Turret4C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret3C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:5}}},distance=..1,limit=1]
execute as @e[type=armor_stand,tag=Turret4C] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:6}}},distance=..1,limit=1]

scoreboard players add @e[type=arrow,tag=Bullet,tag=Missile] TC_FireTimer 1
execute at @e[type=arrow,tag=Bullet] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet,tag=Flame] run particle minecraft:flame ~ ~ ~ 0 0 0 0.001 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^1 ^ ^ ^1 air replace #impermeable
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] if block ^ ^ ^-1 #impermeable run playsound block.glass.break master @a ~ ~ ~ 1 1
execute at @e[type=arrow,tag=Bullet,tag=!Flame,tag=!Missile] run fill ^ ^ ^-1 ^ ^ ^-1 air replace #impermeable
execute at @e[type=arrow,tag=Bullet,nbt={inGround:1b}] run particle large_smoke ~ ~ ~ 0 0 0 0.01 1
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt={inGround:1b},scores={TC_FireTimer=..59}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,nbt=!{inGround:1b},scores={TC_FireTimer=60}] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Missile,tag=!New,nbt=!{inGround:1b},scores={TC_FireTimer=3..59}] positioned ~ ~-1 ~ if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!TC,tag=!Missile,distance=..1.5] run summon creeper ~ ~ ~ {Tags:["Missile"],ExplosionRadius:3,Fuse:0}
execute at @e[type=arrow,tag=Bullet,tag=Flame] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire replace air
kill @e[type=arrow,tag=Bullet,nbt={inGround:1b}]
kill @e[type=arrow,tag=Bullet,tag=Missile,scores={TC_FireTimer=60..}]
execute as @e[type=arrow,tag=Bullet,tag=!New,tag=Missile,scores={TC_FireTimer=3..}] at @s positioned ~ ~-1 ~ if entity @e[type=!#arrows,type=!#impact_projectiles,type=!item,tag=!Missile,tag=!TC,distance=..1.5] run kill @s
kill @e[type=armor_stand,tag=BulletAnchor,tag=Player]

#Upgrades
execute as @e[type=wither_skeleton,tag=TurretHealth,tag=InfiniteHealth,scores={TC_TurretRot=..1336}] store result entity @s Health float 1 run scoreboard players set @s TC_TurretRot 1337
execute as @e[type=armor_stand,tag=TurretC] at @s if entity @e[type=item,distance=..1,limit=1] run function turretcraft:upgrades

#Player Desert Eagle
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_DE_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"8","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run function turretcraft:deserteagle
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}]}] run scoreboard players set @p TC_FireTimer 40
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run replaceitem entity @p weapon.mainhand carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 8     ","color":"yellow"},{"text":"Fire rate "},{"text":"70RPM","color":"yellow"},{"text":"     Damage "},{"text":"12HP","color":"yellow"}]'],Name:'{"text":"Desert Eagle","italic":"false"}'}}
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]},nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,scores={TC_FireTimer=40,TC_DE_Ammo=0..7},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] wooden_pickaxe{CustomModelData:2} 1
execute at @a[tag=!Admin,scores={TC_DE_Ammo=0..7},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run replaceitem entity @p weapon.offhand air
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=-1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_DE_Ammo=0..7,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run scoreboard players set @p TC_DE_Ammo 8
execute at @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}]},scores={TC_FireTimer=0}] run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1
tellraw @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}]},scores={TC_FireTimer=39}] {"text":"Reloading...","color":"gray"}

#Player AK47
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_AK47_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"30","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run function turretcraft:ak47
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]}] run scoreboard players set @p TC_FireTimer 50
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] run replaceitem entity @p weapon.mainhand carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"380RPM","color":"yellow"},{"text":"     Damage "},{"text":"8HP","color":"yellow"}]'],Name:'{"text":"AK47","italic":"false"}'}}
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]},nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,scores={TC_FireTimer=50,TC_AK47_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] wooden_pickaxe{CustomModelData:1} 1
execute at @a[tag=!Admin,scores={TC_AK47_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] run replaceitem entity @p weapon.offhand air
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=-1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_AK47_Ammo=0..29,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players set @p TC_AK47_Ammo 30
execute at @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]},scores={TC_FireTimer=0}] run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.1
tellraw @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]},scores={TC_FireTimer=49}] {"text":"Reloading...","color":"gray"}

#Player M16
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_M16_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"30","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run function turretcraft:m16
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}}]}] run scoreboard players set @p TC_FireTimer 50
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]}] run replaceitem entity @p weapon.mainhand carrot_on_a_stick{CustomModelData:4,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"400RPM","color":"yellow"},{"text":"     Damage "},{"text":"5HP","color":"yellow"}]'],Name:'{"text":"M16","italic":"false"}'}}
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29,TC_FireTimer=..0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]},nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,scores={TC_FireTimer=50,TC_M16_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]}] wooden_pickaxe{CustomModelData:4} 1
execute at @a[tag=!Admin,scores={TC_M16_Ammo=0..29},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]}] run replaceitem entity @p weapon.offhand air
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_M16_Ammo=0..29,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run scoreboard players set @p TC_M16_Ammo 30
execute at @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}}]},scores={TC_FireTimer=0}] run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1
tellraw @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}}]},scores={TC_FireTimer=49}] {"text":"Reloading...","color":"gray"}

#Player AWP
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run title @p actionbar [{"score":{"name":"@p","objective":"TC_AWP_Ammo"},"color":"gray"},{"text":" / ","color":"gray"},{"text":"10","color":"gray"}]
execute at @a[scores={TC_FireTimer=-1,TC_RightClick=1,TC_Recoil=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run function turretcraft:awp
execute at @a[tag=!Admin,scores={TC_AWP_Ammo=0..9,TC_FireTimer=-1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}}]}] run scoreboard players set @p TC_FireTimer 70
execute at @a[tag=!Admin,scores={TC_AWP_Ammo=0..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run replaceitem entity @p weapon.mainhand carrot_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 10     ","color":"yellow"},{"text":"Fire rate "},{"text":"40RPM","color":"yellow"},{"text":"     Damage "},{"text":"30HP","color":"yellow"}]'],Name:'{"text":"AWP","italic":"false"}'}}
execute at @a[tag=!Admin,scores={TC_AWP_Ammo=0..9,TC_FireTimer=..0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]},nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}}]}] run tellraw @p {"text":"No Ammo left","color":"red"}
clear @a[tag=!Admin,scores={TC_FireTimer=70,TC_AWP_Ammo=0..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] wooden_pickaxe{CustomModelData:3} 1
execute at @a[tag=!Admin,scores={TC_AWP_Ammo=0..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run replaceitem entity @p weapon.offhand air
scoreboard players remove @a[scores={TC_FireTimer=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] TC_FireTimer 1
execute at @a[scores={TC_Recoil=1..,TC_FireTimer=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run scoreboard players remove @p TC_Recoil 1
execute at @a[scores={TC_AWP_Ammo=0..9,TC_FireTimer=0},nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run scoreboard players set @p TC_AWP_Ammo 10
execute at @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}}]},scores={TC_FireTimer=0}] run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1
tellraw @a[tag=!Admin,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}}]},scores={TC_FireTimer=69}] {"text":"Reloading...","color":"gray"}
execute at @a[scores={TC_Shifting=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run effect give @p slowness 1 255 true
execute at @a[scores={TC_Shifting=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},nbt={ActiveEffects:[{Id:2b,Amplifier:-1b}]}] run effect clear @p slowness
