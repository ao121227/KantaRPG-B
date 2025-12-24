# mob:004 = oak
scoreboard players random @s random 1 100
execute if score @s random matches 1..90 run structure load "loot:0041" ~ ~1 ~
execute if score @s random matches 91..100 run structure load "loot:0042" ~ ~1 ~
execute if score @s random matches 61..81 run structure load "loot:0043" ~ ~1 ~
execute if score @s random matches 51..56 run structure load "loot:0044" ~ ~1 ~
scoreboard players add @a[r=4] nowMp 15
playsound random.orb @a[r=4] ~~~ 0.2 1
execute as @p at @s run scriptevent status:result {"xp":15,"g":7}
execute as @a[r=4] at @s unless score @s vampire matches 0 run scriptevent status:vampire 0
summon minecraft:xp_orb
summon minecraft:xp_orb
summon minecraft:xp_orb