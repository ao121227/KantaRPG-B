# items/weapon/1200 = 木の杖
execute unless score @s nowMp matches 5.. run scriptevent i:notMp 5
execute if score @s nowMp matches 5.. run function items/magic_command/wand/1200/run