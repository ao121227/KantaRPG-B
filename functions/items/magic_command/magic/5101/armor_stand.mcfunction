scoreboard players add @s magicArmorTime 1
tp @s ~~~
execute positioned ~~-1000~ if entity @e[tag=monster,r=1.75] as @e[tag=monster,r=1.75,c=1] at @s run damage @s 11
execute positioned ~~-1000~ if entity @e[tag=monster,r=1.75] as @e[tag=monster,r=1.75,c=1] at @s run effect @s levitation 1 5 false
execute positioned ~~-1000~ run particle r:5101Wind ~ ~ ~
execute positioned ~~-1000~ run particle r:5101Wind2 ~ ~ ~
execute positioned ~~-1000~ run particle r:5101Wind3 ~ ~ ~
kill @s[scores={magicArmorTime=80..}]