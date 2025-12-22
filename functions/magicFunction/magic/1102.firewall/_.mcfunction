# magic:1102 = ファイアウォール
execute unless entity @s[tag=strong] run scriptevent i:notJob ストロング
execute if entity @s[tag=strong] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 60.. run scriptevent i:notMp 60
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 60.. unless score @s nowLv matches 10.. run scriptevent i:notLv 10
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 60.. if score @s nowLv matches 10.. run function magicFunction/magic/1102.firewall/run