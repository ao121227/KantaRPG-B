execute as @a at @s run function lv/_
execute as @a[tag=!worldedit] at @s run function actionbar
function status/_
function stage/_
function mob/system/_
function crafting/_
function crafting/magicCrafting/_
function magicFunction/_
function items/weapon/system
function dungeons/_
execute as @a at @s run function mana
effect @a saturation 1 0 true
effect @a hunger 1 255 true
scoreboard players reset * Lv
execute as @a at @s run scoreboard players operation @s Lv = @s nowLv
hud @a hide hunger
execute as @e[tag=monster] at @s unless entity @a[r=30] run tp ~ -1000 ~

# arrow clear
execute as @e[type=arrow] at @s unless blocks ~0.1 ~0.1~0.1 ~-0.1 ~-0.1 ~-0.1 ~ 255 ~ all run scoreboard players add @s clear 1
execute as @e[type=arrow,scores={clear=15..}] at @s run particle minecraft:explosion_particle ~ ~0.2 ~
execute as @e[type=arrow,scores={clear=15..}] at @s run kill @s

# craft && cook clear
clear @a minecraft:gray_stained_glass
clear @a minecraft:blue_stained_glass
clear @a minecraft:bowl

# death system
tag @a add death
tag @e[type=player] remove death
execute as @a[tag=!death2,tag=death] at @s run function death
tag @a[tag=death] add death2
tag @e[type=player] remove death2
effect @a[tag=deathHealth] instant_health 1 255 true
tag @e[type=player] remove deathHealth

# TPmenu
execute positioned -69 -44 -18 as @a[r=1.25] at @s run scriptevent i:t

# villager stop
execute as @e[type=minecraft:villager] at @s run tp ~~~
execute as @e[type=minecraft:villager_v2] at @s run tp ~~~
effect @e[type=minecraft:villager] resistance infinite 255 true
effect @e[type=minecraft:villager_v2] resistance infinite 255 true
effect @e[type=minecraft:villager] instant_health infinite 255 true
effect @e[type=minecraft:villager_v2] instant_health infinite 255 true

# fishing
execute as @a[hasitem={item=minecraft:fishing_rod,location=slot.weapon.mainhand}] at @s run scriptevent fishing:power
execute as @e[type=item,name=fish,tag=!nowFishing] at @s as @p at @s run function items/fishing/system/fish
execute as @e[type=item,name=gold,tag=!nowFishing] at @s as @p at @s run function items/fishing/system/gold
execute as @e[type=item,name=other,tag=!nowFishing] at @s as @p at @s run say other!
execute as @e[type=item,name=fish,tag=!nowFishing] at @s run tag @s add nowFishing
execute as @e[type=item,name=gold,tag=!nowFishing] at @s run tag @s add nowFishing
execute as @e[type=item,name=other,tag=!nowFishing] at @s run tag @s add nowFishing
kill @e[type=minecraft:item,name=fish,tag=nowFishing]
kill @e[type=minecraft:item,name=gold,tag=nowFishing]
kill @e[type=minecraft:item,name=other,tag=nowFishing]

# enderChest
execute as @a at @s run function enderChest/_

# xpBonus
execute as @e[type=borak:floating_text] at @s run scoreboard players add @s clear 1
execute as @e[tag=openchest] at @s run scoreboard players add @s clear 1
execute as @e[type=borak:floating_text,scores={clear=30..}] at @s run tp @s ~ -1000 ~
execute as @e[type=borak:floating_text,scores={clear=40..}] at @s run kill @s
execute as @e[tag=openchest,scores={clear=1..}] at @s run tp @s ~ 1000 ~
execute as @e[tag=openchest,scores={clear=10..}] at @s run kill @s

# campfire
execute positioned -68.45 -42.56 -4.39 run effect @a[r=3] regeneration 3 1 true

# sneakTag
tag @a remove sneak
execute as @a at @s if entity @s[y=~1.4,dx=0] unless entity @s[y=~1.5,dx=0] run tag @s add sneak

# snowball
#execute as @e[type=minecraft:snowball] at @s unless block ~~-1~ air run fill ~2~~2~-2~~-2 minecraft:sand replace air
#execute as @e[type=minecraft:snowball] at @s unless block ~~-1~ air run kill @s
#execute as @e[type=minecraft:snowball] at @s run fill ~4~4~4~-4~-4~-4 stone replace sand