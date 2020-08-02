execute at @e[type=item,nbt={Item:{Count:1b,id:"minecraft:dispenser"}}] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:repeater"}},distance=..1] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:iron_trapdoor"}},distance=..1] if entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:redstone_torch"}},distance=..1] run summon item_frame ~ ~ ~ {Tags:["ModCrafter"]}
execute at @e[type=item_frame,tag=ModCrafter] run summon armor_stand ~ ~-0.96 ~ {Tags:["ModCrafter"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,tag=ModCrafter] if entity @e[type=item_frame,tag=ModCrafter,distance=..1] run kill @e[type=item,distance=..1.5]
execute at @e[tag=ModCrafter,type=armor_stand] if entity @e[type=item_frame,tag=ModCrafter,distance=..1] run setblock ~ ~ ~ dispenser[facing=up]{CustomName:'{"text":"Modified Crafting"}'}
execute at @e[tag=ModCrafter,type=armor_stand] if entity @e[type=item_frame,tag=ModCrafter,distance=..1] run setblock ~ ~ ~-1 redstone_wall_torch[facing=north]
execute at @e[tag=ModCrafter,type=armor_stand] if entity @e[type=item_frame,tag=ModCrafter,distance=..1] run setblock ~ ~1 ~ iron_trapdoor
kill @e[type=item_frame,tag=ModCrafter]
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:observer",Count:1b},{Slot:2b,id:"minecraft:iron_block",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b},{Slot:4b,id:"minecraft:beacon",Count:1b},{Slot:5b,id:"minecraft:gold_ingot",Count:1b},{Slot:6b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:comparator",Count:1b},{Slot:8b,id:"minecraft:iron_block",Count:1b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:conduit",Count:1b,tag:{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V1)","color":"white"}]'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:observer",Count:1b},{Slot:2b,id:"minecraft:iron_block",Count:1b},{Slot:3b,id:"minecraft:quartz",Count:1b},{Slot:4b,id:"minecraft:beacon",Count:1b},{Slot:5b,id:"minecraft:quartz",Count:1b},{Slot:6b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:comparator",Count:1b},{Slot:8b,id:"minecraft:iron_block",Count:1b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:conduit",Count:1b,tag:{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:oak_log",Count:1b},{Slot:8b,id:"minecraft:iron_ingot",Count:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:3b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:5b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Shoulder Stock"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:4b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:iron_ingot",Count:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:3b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:5b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:7b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":"Rifle Barrel"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:4b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:oak_log",Count:1b},{Slot:8b,id:"minecraft:iron_block",Count:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:3b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:3,display:{Name:'{"text":"Rifle Body"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_ingot",Count:1b},{Slot:5b,id:"minecraft:gunpowder",Count:15b},{Slot:6b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:gunpowder",Count:15b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:8b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"7.62x39mm"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:1b,id:"minecraft:gunpowder",Count:4b},{Slot:2b,id:"minecraft:gold_nugget",Count:4b},{Slot:4b,id:"minecraft:gunpowder",Count:4b},{Slot:5b,id:"minecraft:gold_nugget",Count:4b},{Slot:6b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:iron_ingot",Count:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:3b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":".44 Magnum"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:gunpowder",Count:10b},{Slot:5b,id:"minecraft:gold_nugget",Count:10b},{Slot:6b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:8b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:3,display:{Name:'{"text":"7.62x51mm"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_ingot",Count:1b},{Slot:5b,id:"minecraft:gunpowder",Count:15b},{Slot:7b,id:"minecraft:gunpowder",Count:15b},{Slot:8b,id:"minecraft:gold_nugget",Count:15b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:4,display:{Name:'{"text":"5.56x45mm"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:2}},{Slot:1b,id:"minecraft:iron_nugget",Count:2b},{Slot:3b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:1}},{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:3}},{Slot:7b,id:"minecraft:oak_log",Count:1b},{Slot:8b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:1}}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:5b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"600RPM","color":"yellow"},{"text":"     Damage "},{"text":"3HP","color":"yellow"}]'],Name:'{"text":"AK47","italic":"false"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:3}},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:gray_wool",Count:1b},{Slot:7b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{CustomModelData:2}}]} unless block ~ ~ ~ dispenser{Items:[{Slot:0b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:1b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:8b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 8     ","color":"yellow"},{"text":"Fire rate "},{"text":"75RPM","color":"yellow"},{"text":"     Damage "},{"text":"6HP","color":"yellow"}]'],Name:'{"text":"Desert Eagle","italic":"false"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:2}},{Slot:1b,id:"minecraft:glass_pane",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3}},{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:3}},{Slot:5b,id:"minecraft:glass_pane",Count:1b},{Slot:7b,id:"minecraft:green_dye",Count:4b},{Slot:8b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:1}}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 10     ","color":"yellow"},{"text":"Fire rate "},{"text":"32RPM","color":"yellow"},{"text":"     Damage "},{"text":"48HP","color":"yellow"}]'],Name:'{"text":"AWP","italic":"false"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:2}},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:wooden_pickaxe",tag:{CustomModelData:4}},{Slot:4b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:3}},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:gray_wool",Count:1b},{Slot:8b,id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:1}}]} unless block ~ ~ ~ dispenser{Items:[{Slot:2b}]} unless block ~ ~ ~ dispenser{Items:[{Slot:6b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4,display:{Lore:['[{"text":"Max Ammo","color":"gray"},{"text":" 30     ","color":"yellow"},{"text":"Fire rate "},{"text":"640RPM","color":"yellow"},{"text":"     Damage "},{"text":"3HP","color":"yellow"}]'],Name:'{"text":"M16","italic":"false"}'}}}]}
execute at @e[type=armor_stand,tag=ModCrafter] as @e[distance=..2,type=item,nbt={Item:{id:"minecraft:dispenser",tag:{display:{Name:'{"text":"Modified Crafting"}'}}}}] run kill @s
execute at @e[type=armor_stand,tag=ModCrafter] if entity @e[type=item,distance=..2,nbt=!{Item:{id:"minecraft:redstone_torch"}}] run setblock ~ ~ ~ dispenser[facing=up]{CustomName:'{"text":"Modified Crafting"}'}
execute at @e[type=armor_stand,tag=ModCrafter] unless block ~ ~ ~ dispenser unless entity @e[type=item,nbt={Item:{id:"minecraft:dispenser"}},distance=..1] run summon item ~1 ~ ~ {Item:{id:"minecraft:dispenser",Count:1b}}
execute at @e[type=armor_stand,tag=ModCrafter] unless block ~ ~ ~ dispenser if block ~ ~1 ~ iron_trapdoor run summon item ~ ~ ~-1 {Item:{id:"minecraft:iron_trapdoor",Count:1b}}
execute at @e[type=armor_stand,tag=ModCrafter] unless block ~ ~ ~ dispenser run summon item ~-1.3 ~ ~ {Item:{id:"minecraft:repeater",Count:1b}}
execute at @e[type=armor_stand,tag=ModCrafter] unless block ~ ~ ~ dispenser run fill ~ ~1 ~-1 ~ ~ ~ air
execute as @e[type=armor_stand,tag=ModCrafter] at @s unless block ~ ~ ~ dispenser run kill @s
