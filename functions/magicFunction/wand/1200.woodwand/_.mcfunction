# items/weapon/1200.woodwand = 木の杖
execute unless score @s nowMp matches 5.. run scriptevent i:notMp 5
execute if score @s nowMp matches 5.. run function magicFunction/wand/1200.woodwand/run