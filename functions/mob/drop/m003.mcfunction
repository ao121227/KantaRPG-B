# mob:002 = husk
scoreboard players random @s random 1 100
execute if score @s random matches 1..90 run structure load "loot:0031" ~ ~1 ~
execute if score @s random matches 91..100 run structure load "loot:0032" ~ ~1 ~
execute if score @s random matches 61..81 run structure load "loot:0033" ~ ~1 ~
execute if score @s random matches 51..56 run structure load "loot:0034" ~ ~1 ~
execute if score @s random matches 77 run structure load "loot:0035" ~ ~1 ~
scoreboard players add @a[r=4] nowMp 7
playsound random.orb @a[r=4] ~~~ 0.2 1
execute as @p at @s run scriptevent status:result {"xp":7,"g":3}
execute as @a[r=4] at @s unless score @s vampire matches 0 run scriptevent status:vampire 0