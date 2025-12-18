replaceitem entity @s slot.enderchest 0 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 1 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 2 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 3 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 4 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 5 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 6 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 7 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 8 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 9 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 17 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 18 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 19 minecraft:blue_stained_glass 1 1
replaceitem entity @s slot.enderchest 20 minecraft:blue_stained_glass 2 1
replaceitem entity @s slot.enderchest 21 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 22 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 23 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 24 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 25 minecraft:gray_stained_glass
replaceitem entity @s slot.enderchest 26 minecraft:gray_stained_glass
clear @a minecraft:red_stained_glass 1
execute if entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:feather}] run scoreboard players set @s artifacts 1001
execute if entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:feather}] run scoreboard players set @s artifacts2 1001
execute if entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:amethyst_shard}] run scoreboard players set @s artifacts 2001
execute if entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:amethyst_shard}] run scoreboard players set @s artifacts2 2001
execute if entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:redstone_block}] run scoreboard players set @s artifacts 2002
execute if entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:redstone_block}] run scoreboard players set @s artifacts2 2002
execute if entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:redstone},tag=protection] run scoreboard players set @s artifacts 2003
execute if entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:redstone},tag=protection] run scoreboard players set @s artifacts2 2003
execute if entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:end_crystal}] run scoreboard players set @s artifacts 3001
execute if entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:end_crystal}] run scoreboard players set @s artifacts2 3001
execute unless entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:feather}] unless entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:amethyst_shard}] unless entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:redstone_block}] unless entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:redstone},tag=protection] unless entity @s[hasitem={location=slot.enderchest,slot=10,item=minecraft:end_crystal}] run scoreboard players set @s artifacts 0
execute unless entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:feather}] unless entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:amethyst_shard}] unless entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:redstone_block}] unless entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:redstone},tag=protection] unless entity @s[hasitem={location=slot.enderchest,slot=11,item=minecraft:end_crystal}] run scoreboard players set @s artifacts2 0