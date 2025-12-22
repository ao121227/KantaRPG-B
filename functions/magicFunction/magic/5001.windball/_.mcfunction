# magic:5001 = ウィンドボール
execute unless entity @s[tag=protection] run scriptevent i:notJob プロテクション
execute if entity @s[tag=protection] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 20.. run scriptevent i:notMp 20
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 20.. run function magicFunction/magic/5001.windball/run