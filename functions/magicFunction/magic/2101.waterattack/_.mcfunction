# magic:2101 = 水責め
execute unless entity @s[tag=protection] run scriptevent i:notJob プロテクション
execute if entity @s[tag=protection] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 35.. run scriptevent i:notMp 35
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 35.. unless score @s nowLv matches 6.. run scriptevent i:notLv 6
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 35.. if score @s nowLv matches 6.. run function magicFunction/magic/2101.waterattack/run