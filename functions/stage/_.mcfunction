execute as @e[type=minecraft:armor_stand,name=spawn_marker] at @s run tp @s ~~~
scoreboard players add @e[type=minecraft:armor_stand,name=spawn_marker] spawn 1
execute as @e[type=minecraft:armor_stand,name=spawn_marker,scores={spawn=200..}] at @s positioned ~~-1000~ run setblock ~~1~ minecraft:dead_brain_coral_block
kill @e[type=minecraft:armor_stand,name=spawn_marker,scores={spawn=200..}]

# reset
execute if entity @a[tag=reset] run kill @e[type=minecraft:armor_stand,name=spawn_marker]
title @a[tag=reset] times 0 5 0
title @a[tag=reset] title resetのタグを消してください

# stage4
execute as @a[scores={artifacts=!2001,artifacts2=!2001}] at @s if block ~~-1~ minecraft:amethyst_block run effect @s blindness 3 1 true
execute as @a[scores={artifacts=!2001,artifacts2=!2001}] at @s if block ~~-1~ minecraft:amethyst_block run effect @s poison 1 255 false
execute as @a[scores={artifacts=!2001,artifacts2=!2001}] at @s if block ~~-1~ minecraft:amethyst_block run damage @s 10