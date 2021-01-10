tag @a[tag=!Admin,tag=Owner,distance=..60] remove Owner
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID0 run data get entity @p UUID[0]
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID1 run data get entity @p UUID[1]
execute at @a[tag=!Admin,distance=..60] store result score @p TC_UUID2 run data get entity @p UUID[2]
execute at @a[tag=!Admin,distance=..60] if score @p TC_UUID0 = @s TC_UUID0 if score @p TC_UUID1 = @s TC_UUID1 if score @p TC_UUID2 = @s TC_UUID2 run tag @p add Owner
