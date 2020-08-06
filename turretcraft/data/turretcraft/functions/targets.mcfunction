# All Vanilla commands for allowing/unallowing entities for turrets
# Made by: Viper1618
#Note: Targeting is positive UnTargeting is negative
# Pick Entity is W.I.P
#--------------------

tag @e[tag=!Frame,type=!experience_orb,type=!arrow,type=!item,type=!armor_stand,type=!item_frame,type=!painting,type=!player,type=!polar_bear,type=!pufferfish,type=!llama,type=!trader_llama,type=!wolf,type=!dolphin,type=!iron_golem,type=!chicken,type=!cow,type=!pig,type=!sheep,type=!wandering_trader,type=!villager,type=!fox,type=!turtle,type=!cod,type=!salmon,type=!snow_golem,type=!tropical_fish,type=!mule,type=!horse,type=!squid,type=!cat,type=!bat,type=!mooshroom,type=!donkey,type=!parrot,type=!panda,type=!strider,type=!bee] add Hostile
tag @e[tag=!Frame,type=!experience_orb,type=!arrow,type=!item,type=!item_frame,type=!painting,type=!player,type=!chicken,type=!cow,type=!pig,type=!sheep,type=!wandering_trader,type=!villager,type=!fox,type=!turtle,type=!cod,type=!salmon,type=!snow_golem,type=!tropical_fish,type=!mule,type=!horse,type=!squid,type=!cat,type=!bat,type=!mooshroom,type=!donkey,type=!parrot,type=!panda,type=!zombie_horse,type=!skeleton_horse,type=!rabbit,type=!ocelot,type=!zombie,type=!skeleton,type=!pillager,type=!ravager,type=!stray,type=!slime,type=!magma_cube,type=!wither_skeleton,type=!witch,type=!evoker,type=!illusioner,type=!vindicator,type=!creeper,type=!spider,type=!cave_spider,type=!husk,type=!drowned,type=!guardian,type=!blaze,type=!elder_guardian,type=!wither,type=!ender_dragon,type=!enderman,type=!endermite,type=!ghast,type=!giant,type=!phantom,type=!shulker,type=!silverfish,type=!vex,type=!zombie_villager,type=!strider] add Neutral
tag @e[tag=!Frame,type=!experience_orb,type=!arrow,type=!item,type=!item_frame,type=!painting,type=!zombified_piglin,type=!zoglin,type=!hoglin,type=!piglin,type=!zombie,type=!skeleton,type=!player,type=!polar_bear,type=!pufferfish,type=!llama,type=!trader_llama,type=!wolf,type=!dolphin,type=!iron_golem,type=!pillager,type=!phantom,type=!ravager,type=!stray,type=!slime,type=!magma_cube,type=!wither_skeleton,type=!witch,type=!evoker,type=!illusioner,type=!vindicator,type=!creeper,type=!spider,type=!cave_spider,type=!husk,type=!drowned,type=!guardian,type=!blaze,type=!ender_dragon,type=!elder_guardian,type=!wither,type=!enderman,type=!endermite,type=!ghast,type=!shulker,type=!silverfish,type=!vex,type=!zombie_villager,type=!guardian,type=!bee,type=!armor_stand] add Friendly

execute at @a[scores={TC_Target=1},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s add PlayerT
execute at @a[scores={TC_Target=1},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Targeting players.","color":"gray"}]

execute at @a[scores={TC_Target=2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s add FriendlyT
execute at @a[scores={TC_Target=2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Targeting friendlies.","color":"gray"}]

execute at @a[scores={TC_Target=3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s add NeutralT
execute at @a[scores={TC_Target=3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Targeting neutrals.","color":"gray"}]

execute at @a[scores={TC_Target=4},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s add HostileT
execute at @a[scores={TC_Target=4},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Targeting hostiles.","color":"gray"}]

execute at @a[scores={TC_Target=-1},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s remove PlayerT
execute at @a[scores={TC_Target=-1},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Not targeting players.","color":"gray"}]

execute at @a[scores={TC_Target=-2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s remove FriendlyT
execute at @a[scores={TC_Target=-2},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Not targeting friendlies.","color":"gray"}]

execute at @a[scores={TC_Target=-3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s remove NeutralT
execute at @a[scores={TC_Target=-3},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Not targeting neutrals.","color":"gray"}]

execute at @a[scores={TC_Target=-4},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tag @s remove HostileT
execute at @a[scores={TC_Target=-4},tag=Owner] as @e[type=armor_stand,tag=TurretC,distance=..3,limit=1,sort=nearest] run tellraw @p [{"text":"[","color":"dark_green"},{"selector":"@s"},{"text":"]"},{"text":" Not targeting hostiles.","color":"gray"}]

#execute at @a[scores={TC_Target=5}] as @e[type=armor_stand,distance=..3] run tag @s add Pick
#execute at @e[type=armor_stand,tag=Pick] 
#execute at @e[type=armor_stand,tag=TurretC] run tag @e[type=!player,distance=100..102] remove Target
tellraw @a[scores={TC_Target=5}] [{"text":"[TurretCraft]","color":"dark_green"},{"text":" Pick Entity","color":"blue"},{"text":", is a work in progress.","color":"gray"}]
#Below is Entity Pick (WIP)
#give @a[scores={TC_Target=5}] minecraft:carrot_on_a_stick{HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:-1}],display:{Name:'{"text":"Entity picker","color":"blue"}'}}
#give @a[scores={TC_Target=-5}] minecraft:carrot_on_a_stick{HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:-1}],display:{Name:'{"text":"Entity picker","color":"blue"}'}}
#execute at @a[scores={TurretTC_RightClick=1}] run summon armor_stand ^ ^ ^1 {Tags:[Pick],Small:1b,NoGravity:1b,Invisible:1b}
#execute at @a[scores={TurretTC_RightClick=1}] run tp @e[type=armor_stand,tag=Pick] ^ ^ ^1 ~ ~
#tag @a[scores={TurretTC_RightClick=1}] add Pick
#tellraw @a[scores={TurretTC_RightClick=1}] [{"text":"[TurretCraft] ","color":"dark_green"},{"text":"Picking entity, this may take a while.","color":"blue"}]
#scoreboard players reset @a TurretTC_RightClick
#execute as @e[type=armor_stand,tag=Pick,tag=!InObject] at @s run tp @s ^ ^ ^0.9
#tag @e[type=armor_stand,tag=Pick] add InObject
#execute as @e[type=armor_stand,tag=Pick] at @s if block ~ ~ ~ air unless entity @e[type=!armor_stand,distance=..1] run tag @s remove InObject
#execute as @e[type=armor_stand,tag=Pick] at @s if block ~ ~ ~ water unless entity @e[type=!armor_stand,distance=..1] run tag @s remove InObject
#execute as @e[type=armor_stand,tag=Pick,tag=InObject] at @s unless entity @e[type=!armor_stand,tag=TFound,distance=..1] run tag @e[type=!armor_stand,distance=..1,limit=1] add TFound
#execute at @e[type=armor_stand,tag=Pick,tag=InObject] run tellraw @a[tag=Pick,distance=..40] [{"text":"[TurretCraft] ","color":"dark_green"},{"text":"Found target:\n","color":"blue"},{"text":"|Allow|","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TurretPick 1"}},{"text":"          "},{"text":"|Unallow|","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TurretPick 2"}},{"text":"\n"},{"text":"|Allow type|","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TurretPick 3"}},{"text":"   "},{"text":"|Unallow type|","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TurretPick 4"}},{"text":"\n"},{"text":"|Cancel|","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s TurretPick 5"}}]
#execute as @a[tag=Pick,scores={TurretPick=1}] run tag @e[tag=TFound,distance=..40,sort=nearest,limit=1]
