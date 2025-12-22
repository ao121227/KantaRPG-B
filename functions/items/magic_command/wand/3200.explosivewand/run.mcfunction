scoreboard players remove @s nowMp 9
execute positioned ^^^4 run particle minecraft:large_explosion ~~1~
execute positioned ^^^4 run damage @e[tag=monster,r=2.5] 10 block_explosion
execute positioned ^^^4 as @e[tag=monster,r=2.5] at @s run scriptevent kb:jump 0 0 1 0.5
execute positioned ^^^4 as @e[tag=monster,r=2.5] at @s run scriptevent effect:fire 20
playsound firework.blast