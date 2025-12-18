# magic:6001 = スーパーステップ
execute unless score @s magicCoolDown matches ..0 run scriptevent i:notCoolDown
execute if score @s magicCoolDown matches ..0 unless score @s nowMp matches 25.. run scriptevent i:notMp 25
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. unless score @s nowLv matches 1.. run scriptevent i:notLv 1
execute if score @s magicCoolDown matches ..0 if score @s nowMp matches 25.. if score @s nowLv matches 1.. run function items/magic_command/magic/6001/run