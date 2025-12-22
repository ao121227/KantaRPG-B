# magic:4101 = ミニヒール
execute unless entity @s[tag=protection] run scriptevent i:notJob プロテクション
execute if entity @s[tag=protection] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 25.. run scriptevent i:notMp 25
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. unless score @s nowLv matches 4.. run scriptevent i:notLv 4
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. if score @s nowLv matches 4.. run function magicFunction/magic/4101.miniheal/run