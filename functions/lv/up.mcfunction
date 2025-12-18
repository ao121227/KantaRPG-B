# score set
scoreboard players operation @s nowXp -= @s needXp
scoreboard players operation @s oldLv = @s nowLv
scoreboard players add @s nowLv 1
scoreboard players set @s "needXp*" 5
scoreboard players set @s "needXp**" 4
scoreboard players operation @s needXp *= @s "needXp*"
scoreboard players operation @s needXp /= @s "needXp**"

# display
tellraw @s { "rawtext": [ { "text": "> §sLevelUp! §f( " }, { "score": {"name": "@s", "objective": "oldLv" } },{ "text": " => §l§e" },{ "score": {"name": "@s", "objective": "nowLv" } },{ "text": "§r§f )" }] }
tag @s add my
tellraw @a[tag=!my] { "rawtext": [ { "text": "> §s" },{ "selector": "@a[tag=my]" },{ "text": "§6のレベルが§s" },{ "score": {"name": "@a[tag=my]", "objective": "nowLv" } },{ "text": "§6になった" }] }
tag @s remove my
effect @s instant_health 1 255 true
scoreboard players operation @s nowMp = @s maxMp
particle minecraft:totem_particle
function lv/sound