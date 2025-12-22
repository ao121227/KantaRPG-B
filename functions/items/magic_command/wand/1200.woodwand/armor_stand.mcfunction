scoreboard players add @s magicArmorTime 1
tp @s ^^^0.4
execute positioned ~~-1000~ run damage @e[tag=monster,r=2] 4
execute positioned ~~-1000~ run particle minecraft:explosion_particle ~ ~1 ~
execute positioned ~~-1000~ run particle minecraft:dust_plume ~ ~1 ~
execute positioned ~~-1000~ run particle minecraft:weaving_emitter ~ ~1 ~
execute positioned ~~-1000~ if entity @e[tag=monster,r=2] run kill @s
execute positioned ~~-1000~ unless block ~~~ air unless block ~~1~ air unless block ~~2~ air unless block ~~-1~ air run kill @s
kill @s[scores={magicArmorTime=40..}]