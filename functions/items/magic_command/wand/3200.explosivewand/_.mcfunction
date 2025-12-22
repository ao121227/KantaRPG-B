# weapon:3200 = 爆発の杖
execute unless entity @s[tag=strong] run scriptevent i:notJob ストロング
execute if entity @s[tag=strong] unless score @s nowMp matches 9.. run scriptevent i:notMp 9
execute if entity @s[tag=strong] if score @s nowMp matches 9.. unless score @s nowLv matches 8.. run scriptevent i:notLv 8
execute if entity @s[tag=strong] if score @s nowMp matches 9.. if score @s nowLv matches 8.. run function items/magic_command/wand/3200.explosivewand/run