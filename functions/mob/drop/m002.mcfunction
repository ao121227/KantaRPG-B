# mob:002 = skeleton
scoreboard players random @s random 1 100
execute if score @s random matches 1..90 run structure load "loot:0021" ~ ~1 ~
execute if score @s random matches 91..100 run structure load "loot:0022" ~ ~1 ~
execute if score @s random matches 61..81 run structure load "loot:0023" ~ ~1 ~
execute if score @s random matches 51..56 run structure load "loot:0024" ~ ~1 ~
execute if score @s random matches 77 run structure load "loot:0025" ~ ~1 ~
scoreboard players add @a[r=4] nowMp 10
playsound random.orb @a[r=4] ~~~ 0.2 1
execute as @p at @s run scriptevent status:result {"xp":10,"g":5}
execute as @a[r=4] at @s unless score @s vampire matches 0 run scriptevent status:vampire 0