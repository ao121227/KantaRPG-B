execute unless entity @a[tag=reset]if entity @a[r=8,m=a] if block ~~1~ minecraft:dead_brain_coral_block unless entity @e[tag=monster,r=10] run function stage/s4/spawn
execute if entity @a[tag=reset] run setblock ~~1~ minecraft:dead_brain_coral_block
execute unless entity @a[r=30] run setblock ~~1~ minecraft:dead_brain_coral_block