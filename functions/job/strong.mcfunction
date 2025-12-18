execute if entity @s[tag=strong] run tellraw @s { "rawtext": [{ "text": "> §4既にジョブがストロングです！" }] }
execute if entity @s[tag=strong] run playsound click_on.bamboo_wood_button
execute unless entity @s[tag=strong] run function job/sRun