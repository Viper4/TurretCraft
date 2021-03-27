scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add Timer dummy
execute as @e[type=item,nbt={Item:{tag:{applyMotion:1b}}}] run scoreboard players add @s Timer 1
execute as @e[type=item,nbt={Item:{tag:{applyMotion:1b}}},scores={Timer=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["MotionAnchor"]}
execute as @e[type=item,nbt={Item:{tag:{applyMotion:1b}}},scores={Timer=2..}] run function datapack:apply_motion
