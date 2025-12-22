# weapon:2200 = 石の杖
execute unless score @s nowMp matches 4.. run scriptevent i:notMp 4
execute if score @s nowMp matches 4.. unless score @s nowLv matches 5.. run scriptevent i:notLv 5
execute if score @s nowMp matches 4.. if score @s nowLv matches 5.. run function items/magic_command/wand/2200.stonewand/run