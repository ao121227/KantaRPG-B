scoreboard players add @s magicArmorTime 1
tp @s ~~~
execute positioned ~~-1000~ if entity @e[tag=monster,r=1.75] as @e[tag=monster,r=1.75,c=1] at @s run damage @s 11
execute positioned ~~-1000~ if entity @e[tag=monster,r=1.75] as @e[tag=monster,r=1.75,c=1] at @s run scriptevent effect:fire 2
execute positioned ~~-1000~ run particle r:1102Fire ~ ~ ~
execute positioned ~~-1000~ run particle r:1102Fire2 ~ ~ ~
execute positioned ~~-1000~ run particle r:1102Fire3 ~ ~ ~
execute positioned ~~-1000~ run particle r:1102Fire4 ~ ~ ~
kill @s[scores={magicArmorTime=40..}]