execute as @e[type=minecraft:armor_stand,name=w1200] at @s run function items/magic_command/wand/1200/armor_stand
execute as @e[type=minecraft:armor_stand,name=w2200] at @s run function items/magic_command/wand/2200/armor_stand
execute as @e[type=minecraft:armor_stand,name=m1001] at @s run function items/magic_command/magic/1001.fireball/armor_stand
execute as @e[type=minecraft:armor_stand,name=m1102] at @s run function items/magic_command/magic/1102.firewall/armor_stand
execute as @e[type=minecraft:armor_stand,name=m2001] at @s run function items/magic_command/magic/2001.waterball/armor_stand
execute as @e[type=minecraft:armor_stand,name=m2101] at @s run function items/magic_command/magic/2101.waterattack/armor_stand
execute as @e[type=minecraft:armor_stand,name=m3001] at @s run function items/magic_command/magic/3001.earthball/armor_stand
execute as @e[type=minecraft:armor_stand,name=m5001] at @s run function items/magic_command/magic/5001.windball/armor_stand
execute as @e[type=minecraft:armor_stand,name=m5101] at @s run function items/magic_command/magic/5101.windwall/armor_stand
execute as @e[type=minecraft:armor_stand,name=m7001] at @s run function items/magic_command/magic/7001.poopball/armor_stand
scoreboard players remove @a[scores={magicCoolDown=1..}] magicCoolDown 1

# effect処理
scoreboard players add @a[tag="magic:6101"] "magic:6101" 1
scoreboard players add @a[tag="magic:6001"] "magic:6001" 1
execute as @a[scores={"magic:6101"=300..}] at @s run function items/magic_command/magic/6101.power/tag
execute as @a[scores={"magic:6001"=200..}] at @s run function items/magic_command/magic/6001.superstep/tag
scoreboard players add @a[tag=poopEffect] poopEffects 1
effect @e[tag=poopEffect] slowness 1 0 true
effect @e[tag=poopEffect] weakness 1 0 true
execute as @a[scores={poopEffects=1}] at @s run effect @s wither 20 1 true
execute as @e[tag=poopEffect] at @s run particle r:poop ~~2~
execute as @a[scores={poopEffects=450..}] at @s run tag @s remove poopEffect
execute as @a[scores={poopEffects=450..}] at @s run scoreboard players reset @s poopEffects