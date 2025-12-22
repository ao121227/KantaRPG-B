# magic:1002 = 円火
execute unless entity @s[tag=strong] run scriptevent i:notJob ストロング
execute if entity @s[tag=strong] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 35.. run scriptevent i:notMp 35
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 35.. unless score @s nowLv matches 7.. run scriptevent i:notLv 7
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 35.. if score @s nowLv matches 7.. run function items/magic_command/magic/1101.circlefire/run