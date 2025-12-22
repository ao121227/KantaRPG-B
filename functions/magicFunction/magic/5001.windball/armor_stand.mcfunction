scoreboard players add @s magicArmorTime 1
tp @s ^^^0.7
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] as @e[tag=monster,r=2,c=1] at @s run function magicFunction/magic/5001.windball/hit
execute positioned ~~-1000~ run particle r:wind ~ ~1 ~
execute positioned ~~-1000~ run particle r:wind2 ~ ~1 ~
execute positioned ~~-1000~ run particle r:wind3 ~ ~1 ~
execute positioned ~~-1000~ run particle minecraft:weaving_emitter ~ ~1 ~
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] run kill @s
execute positioned ~~-1000~ unless block ~~~ air unless block ~~1~ air unless block ~~2~ air unless block ~~-1~ air run kill @s
kill @s[scores={magicArmorTime=25..}]