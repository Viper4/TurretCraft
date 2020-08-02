execute as @a[scores={TC_DelTurret=1..}] at @s if entity @e[type=armor_stand,tag=Turret1H,distance=..2,limit=1,sort=nearest] run give @s conduit{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V1)","color":"white"}]'}} 2
execute as @a[scores={TC_DelTurret=1..}] at @s if entity @e[type=armor_stand,tag=Turret2H,distance=..2,limit=1,sort=nearest] run give @s conduit{display:{Name:'[{"text":"Turret Component","color":"gray"},{"text":" (V2)","color":"white"}]'}} 2
execute at @a[scores={TC_DelTurret=1..}] at @e[type=armor_stand,tag=TurretB,distance=..2,limit=1,sort=nearest] run fill ~ ~1 ~ ~ 1 ~ air replace stone_brick_wall
execute at @a[scores={TC_DelTurret=1..}] at @e[type=armor_stand,tag=TurretH,distance=..2,limit=1,sort=nearest] run kill @e[type=armor_stand,tag=TC,distance=..2,limit=4,sort=nearest]
scoreboard players reset @a[scores={TC_DelTurret=1..}] TC_DelTurret
