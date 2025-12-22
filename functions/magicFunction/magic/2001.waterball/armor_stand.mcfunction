scoreboard players add @s magicArmorTime 1
tp @s ^^^0.8
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] as @e[tag=monster,r=2,c=1] at @s run function magicFunction/magic/2001.waterball/hit
execute positioned ~~-1000~ run particle r:water ~ ~1 ~
execute positioned ~~-1000~ run particle r:water2 ~ ~1 ~
execute positioned ~~-1000~ run particle r:water3 ~ ~1 ~
execute positioned ~~-1000~ run particle minecraft:weaving_emitter ~ ~1 ~
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] run kill @s
execute positioned ~~-1000~ unless block ~~~ air unless block ~~1~ air unless block ~~2~ air unless block ~~-1~ air run kill @s
kill @s[scores={magicArmorTime=30..}]