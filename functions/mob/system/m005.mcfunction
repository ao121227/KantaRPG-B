# mob:005 = 赤キノコ
execute as @e[tag="mob:005"] at @s run particle minecraft:eyeofender_death_explode_particle ^^1^1
execute as @e[tag="mob:005"] at @s run particle minecraft:eyeofender_death_explode_particle ^^1^-1
execute as @e[tag="mob:005"] at @s run particle minecraft:eyeofender_death_explode_particle ^1^1^
execute as @e[tag="mob:005"] at @s run particle minecraft:eyeofender_death_explode_particle ^-1^1^
execute as @e[tag="mob:005"] at @s run scoreboard players remove @a[r=4] spd 1