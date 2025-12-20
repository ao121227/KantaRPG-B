# mob:001 = zombie
scoreboard players random @s random 1 100
execute if score @s random matches 1..90 run structure load "loot:0011" ~ ~1 ~
execute if score @s random matches 91..100 run structure load "loot:0012" ~ ~1 ~
execute if score @s random matches 31..81 run structure load "loot:0013" ~ ~1 ~
execute if score @s random matches 11..61 run structure load "loot:0014" ~ ~1 ~
execute if score @s random matches 77 run structure load "weapon:2100" ~ ~1 ~
execute if score @s random matches 7 run structure load "weapon:2200" ~ ~1 ~
scoreboard players add @a[r=4] nowMp 5
playsound random.orb @a[r=4] ~~~ 0.2 1
execute as @p at @s run scriptevent status:result {"xp":5,"g":2}
execute as @a[r=4] at @s unless score @s vampire matches 0 run scriptevent status:vampire 0