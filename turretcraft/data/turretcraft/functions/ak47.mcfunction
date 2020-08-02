scoreboard players set @a[scores={TC_Recoil=4..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] TC_Recoil 0
scoreboard players set @a[scores={TC_Ammo=31..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] TC_Ammo 30
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 0.1
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1.4
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 20 1
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] positioned ~ ~1.2 ~ run summon arrow ^ ^ ^0.5 {Tags:["Bullet","New","Player"],damage:1.8,SoundEvent:"minecraft:block.stone.break"}
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] run summon armor_stand ~ ~1.2 ~ {Tags:["BulletAnchor","Player"],Invisible:1b,Small:1b,NoGravity:1b}
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=0}] run scoreboard players set @s TC_Recoil 3
execute as @a[scores={TC_Ammo=1..30}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[scores={TC_Recoil=3}] run scoreboard players remove @s TC_Ammo 1
execute as @a[tag=!Bypass,scores={TC_Ammo=0}] at @s[scores={TC_RightClick=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=!Bypass,scores={TC_Ammo=0..29}] at @s[scores={TC_Shifting=0},nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]}] if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players set @s TC_Timer 60
execute as @a[tag=!Bypass,scores={TC_Ammo=0..29}] at @s[scores={TC_Shifting=0}] if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"600RPM","color":"yellow"},{"text":"     Damage "},{"text":"3HP","color":"yellow"}]'],Name:'{"text":"AK47","italic":"false"}'}}
execute as @a[tag=!Bypass,scores={TC_Ammo=0..29},nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]}] at @s[scores={TC_Shifting=0}] if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run title @s actionbar {"text":"No Ammo left","color":"red"}
execute as @a[tag=!Bypass,scores={TC_Ammo=0..29}] at @s[scores={TC_Shifting=0}] run kill @e[distance=..2,sort=nearest,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},limit=1]
scoreboard players remove @a[tag=!Bypass,scores={TC_Ammo=0..29},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] TC_Timer 1
execute as @a[scores={TC_Ammo=0..30},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players remove @s[scores={TC_Recoil=1..3}] TC_Recoil 1
execute as @a[scores={TC_Recoil=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run tp @s ~ ~ ~ ~ ~-3
execute as @a[scores={TC_Ammo=0..29},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players set @s[nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]},scores={TC_Timer=0}] TC_Ammo 30
execute at @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]},scores={TC_Timer=0}] run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1
title @a[tag=!Bypass,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]},scores={TC_Timer=1..60}] actionbar {"text":"Reloading...","color":"gray"}
clear @a[scores={TC_Timer=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] wooden_pickaxe{CustomModelData:1} 1
scoreboard players set @a[scores={TC_Timer=0}] TC_Timer -1
