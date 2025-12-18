execute as @e[tag=treasurechest,c=1] at @s run tag @s add openchest
execute if score @s stage matches 0 if score @e[tag=treasurechest,c=1] treasurechestNumber matches 1 run scriptevent dungeon:loot test1
execute if score @s stage matches 0 if score @e[tag=treasurechest,c=1] treasurechestNumber matches 2 run scriptevent dungeon:loot test2
execute if score @s stage matches 0 unless score @e[tag=treasurechest,c=1] treasurechestNumber matches 1..2 run scriptevent dungeon:loot none