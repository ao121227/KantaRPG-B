# magic:6101 = パワー！！
execute unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if score @s magicCoolDown matches ..0 unless score @s nowMp matches 25.. run scriptevent i:notMp 25
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. unless score @s nowLv matches 5.. run scriptevent i:notLv 5
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. if score @s nowLv matches 5.. run function magicFunction/magic/6101.power/run