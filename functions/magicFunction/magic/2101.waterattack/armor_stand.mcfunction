scoreboard players add @s magicArmorTime 1
tp @s ^^^0.3
execute positioned ~~-1000~ if entity @e[tag=monster,r=3.5] as @e[tag=monster,r=3.5,c=1] at @s run function magicFunction/magic/2101.waterattack/hit
execute positioned ~~-1000~ run particle r:2101Water ~ ~1 ~
execute positioned ~~-1000~ run particle r:2101Water2 ~ ~1 ~
execute positioned ~~-1000~ run particle r:2101Water3 ~ ~1 ~
execute positioned ~~-1000~ run particle minecraft:weaving_emitter ~ ~1 ~
execute positioned ~~-1000~ if entity @e[tag=monster,r=3.5] run kill @s
execute positioned ~~-1000~ unless block ~~~ air unless block ~~1~ air unless block ~~2~ air unless block ~~-1~ air run kill @s
kill @s[scores={magicArmorTime=20..}]