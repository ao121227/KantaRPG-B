# magic:1001 = ファイアボール
execute unless entity @s[tag=strong] run scriptevent i:notJob ストロング
execute if entity @s[tag=strong] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 25.. run scriptevent i:notMp 25
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. run function items/magic_command/magic/1001.fireball/run