scoreboard players set @s death 2
scoreboard players operation @s nowXp /= @s death
scoreboard players operation @s G /= @s death
scoreboard players operation @s nowMp = @s maxMp
execute if score @s stage matches 0 run tellraw @a { "rawtext": [ { "text": "> §4" },{ "selector": "@s" },{ "text": "さんが 村 で死にました" }] }
execute if score @s stage matches 1 run tellraw @a { "rawtext": [ { "text": "> §4" },{ "selector": "@s" },{ "text": "さんが 普通の草原 で死にました" }] }
execute if score @s stage matches 2 run tellraw @a { "rawtext": [ { "text": "> §4" },{ "selector": "@s" },{ "text": "さんが サラサラ砂漠 で死にました" }] }
execute if score @s stage matches 3 run tellraw @a { "rawtext": [ { "text": "> §4" },{ "selector": "@s" },{ "text": "さんが カチカチ山脈 で死にました" }] }
execute if score @s stage matches 4 run tellraw @a { "rawtext": [ { "text": "> §4" },{ "selector": "@s" },{ "text": "さんが 荒廃した地底 で死にました" }] }
scoreboard players set @s stage 0
tellraw @s { "rawtext": [ { "text": "> §4XPとGを半分失ってしまった。" }] }
playsound random.hurt
tag @s add deathHealth
fog @s remove s2
fog @s remove s4