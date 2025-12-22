# magic:2001 = ウォーターボール
execute unless entity @s[tag=protection] run scriptevent i:notJob プロテクション
execute if entity @s[tag=protection] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 15.. run scriptevent i:notMp 15
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 15.. run function magicFunction/magic/2001.waterball/run