execute unless entity @a[tag=reset] if entity @a[r=8,m=adventure] if block ~~1~ minecraft:dead_brain_coral_block unless entity @e[tag=monster,r=4] run function stage/s3/spawn
execute if entity @a[tag=reset] run setblock ~~1~ minecraft:dead_brain_coral_block
execute unless entity @a[r=30] run setblock ~~1~ minecraft:dead_brain_coral_block