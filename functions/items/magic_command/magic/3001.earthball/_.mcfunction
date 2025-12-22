# magic:3001 = アースボール
execute unless entity @s[tag=strong] run scriptevent i:notJob ストロング
execute if entity @s[tag=strong] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 20.. run scriptevent i:notMp 20
execute if entity @s[tag=strong] if score @s magicCoolDown matches ..0 if score @s nowMp matches 20.. run function items/magic_command/magic/3001.earthball/run