scoreboard players add @s magicArmorTime 1
tp @s ^^^0.3
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] as @e[tag=monster,r=2,c=1] at @s run function items/magic_command/magic/7001.poopball/hit
execute positioned ~~-1000~ run particle r:poop ~ ~1 ~
execute positioned ~~-1000~ run particle r:poop2 ~ ~1 ~
execute positioned ~~-1000~ run particle r:poop3 ~ ~1 ~
execute positioned ~~-1000~ run particle r:poop4 ~ ~1 ~
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] run kill @s
execute positioned ~~-1000~ unless block ~~~ air unless block ~~1~ air unless block ~~2~ air unless block ~~-1~ air run kill @s
kill @s[scores={magicArmorTime=60..}]