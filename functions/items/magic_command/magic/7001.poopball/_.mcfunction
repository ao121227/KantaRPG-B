# magic:7001 = うんこクリスタルボール
execute unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if score @s magicCoolDown matches ..0 unless score @s nowMp matches 5.. run scriptevent i:notMp 5
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 5.. unless score @s nowLv matches 3.. run scriptevent i:notLv 3
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 5.. if score @s nowLv matches 3.. run function items/magic_command/magic/7001.poopball/run