execute if entity @s[tag=protection] run tellraw @s { "rawtext": [{ "text": "> §4既にジョブがプロテクションです！" }] }
execute if entity @s[tag=protection] run playsound click_on.bamboo_wood_button
execute unless entity @s[tag=protection] run function job/pRun