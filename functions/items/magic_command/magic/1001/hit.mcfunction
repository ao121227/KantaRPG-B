# 着弾システム
damage @e[tag=monster,r=2.5] 10
execute as @e[tag=monster,r=2.5] at @s run scriptevent effect:fire 10
particle minecraft:large_explosion ~~1~