# magic:5101 = ウィンドウォール
execute unless entity @s[tag=protection] run scriptevent i:notJob プロテクション
execute if entity @s[tag=protection] unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 unless score @s nowMp matches 40.. run scriptevent i:notMp 40if entity @s[tag=protection] 
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 40.. unless score @s nowLv matches 7.. run scriptevent i:notLv 7
execute if entity @s[tag=protection] if score @s magicCoolDown matches ..0 if score @s nowMp matches 40.. if score @s nowLv matches 7.. run function items/magic_command/magic/5101/run