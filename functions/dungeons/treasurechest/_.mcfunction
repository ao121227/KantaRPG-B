# 名前のレア度設定
execute as @e[type=dungeon:treasurechest_normal] at @s run scriptevent dungeon:setRare normal
execute as @e[type=dungeon:treasurechest_uncommon] at @s run scriptevent dungeon:setRare uncommon
execute as @e[type=dungeon:treasurechest_unique] at @s run scriptevent dungeon:setRare unique
execute as @e[type=dungeon:treasurechest_rare] at @s run scriptevent dungeon:setRare rare
execute as @e[type=dungeon:treasurechest_legendary] at @s run scriptevent dungeon:setRare legendary
execute as @e[type=dungeon:treasurechest_maboroshi] at @s run scriptevent dungeon:setRare maboroshi
execute as @e[type=dungeon:treasurechest_shinwa] at @s run scriptevent dungeon:setRare shinwa
# タグ付け
execute as @e[type=dungeon:treasurechest_normal] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_uncommon] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_unique] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_rare] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_legendary] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_maboroshi] at @s run tag @s add treasurechest
execute as @e[type=dungeon:treasurechest_shinwa] at @s run tag @s add treasurechest
# スコア付け
execute as @e[type=dungeon:treasurechest_normal] at @s run scoreboard players set @s treasurechestNumber 1
execute as @e[type=dungeon:treasurechest_uncommon] at @s run scoreboard players set @s treasurechestNumber 2
execute as @e[type=dungeon:treasurechest_unique] at @s run scoreboard players set @s treasurechestNumber 3
execute as @e[type=dungeon:treasurechest_rare] at @s run scoreboard players set @s treasurechestNumber 4
execute as @e[type=dungeon:treasurechest_legendary] at @s run scoreboard players set @s treasurechestNumber 5
execute as @e[type=dungeon:treasurechest_maboroshi] at @s run scoreboard players set @s treasurechestNumber 6
execute as @e[type=dungeon:treasurechest_shinwa] at @s run scoreboard players set @s treasurechestNumber 7
# 無敵 & 固定
execute as @e[tag=treasurechest] at @s run effect @s resistance infinite 255 true
execute as @e[tag=treasurechest,tag=!openchest] at @s run tp @s ~~~
# パーティクル
execute as @e[type=dungeon:treasurechest_uncommon] at @s if entity @a[r=10] run particle r:treasurechest_uncommon_1 ~~1~
execute as @e[type=dungeon:treasurechest_unique] at @s if entity @a[r=10] run particle r:treasurechest_unique_1 ~~1~
execute as @e[type=dungeon:treasurechest_rare] at @s if entity @a[r=10] run particle r:treasurechest_rare_1 ~~1~
execute as @e[type=dungeon:treasurechest_legendary] at @s if entity @a[r=10] run particle r:treasurechest_legendary_1 ~~1~
execute as @e[type=dungeon:treasurechest_legendary] at @s if entity @a[r=10] run particle r:treasurechest_legendary_2 ~~1~
execute as @e[type=dungeon:treasurechest_maboroshi] at @s if entity @a[r=10] run particle r:treasurechest_maboroshi_1 ~~1~
execute as @e[type=dungeon:treasurechest_maboroshi] at @s if entity @a[r=10] run particle r:treasurechest_maboroshi_2 ~~1~
execute as @e[type=dungeon:treasurechest_shinwa] at @s if entity @a[r=10] run particle r:treasurechest_shinwa_1 ~~1~
execute as @e[type=dungeon:treasurechest_shinwa] at @s if entity @a[r=10] run particle r:treasurechest_shinwa_2 ~~1~
execute as @e[type=dungeon:treasurechest_shinwa] at @s if entity @a[r=10] run particle r:treasurechest_shinwa_3 ~~1~
# 宝箱開封処理
execute as @a[tag=sneak] at @s unless entity @e[tag=treasurechest,r=3] run scoreboard players set @s treasurechestOpen 0
execute as @a[tag=sneak] at @s if entity @e[tag=treasurechest,r=3] if score @s treasurechestOpen matches ..70 run scoreboard players add @s treasurechestOpen 1
execute as @a[tag=sneak] at @s if entity @e[tag=treasurechest,r=3] if score @s treasurechestOpen matches 71 run scoreboard players set @s treasurechestOpen 61
execute as @a[scores={treasurechestOpen=1..50}] at @s run title @s times 0 10 0
execute as @a[scores={treasurechestOpen=1}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=1}] at @s run title @s subtitle §7□□□
execute as @a[scores={treasurechestOpen=10}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=10}] at @s run title @s subtitle §7□□□
execute as @a[scores={treasurechestOpen=20}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=20}] at @s run title @s subtitle §f■§7□□
execute as @a[scores={treasurechestOpen=20}] at @s run function dungeons/treasurechest/o/sound1
execute as @a[scores={treasurechestOpen=30}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=30}] at @s run title @s subtitle §f■§7□□
execute as @a[scores={treasurechestOpen=40}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=40}] at @s run title @s subtitle §f■■§7□
execute as @a[scores={treasurechestOpen=40}] at @s run function dungeons/treasurechest/o/sound1
execute as @a[scores={treasurechestOpen=50}] at @s run function dungeons/treasurechest/o/title1
execute as @a[scores={treasurechestOpen=50}] at @s run title @s subtitle §f■■§7□
execute as @a[scores={treasurechestOpen=60}] at @s run title @s times 0 10 2
execute as @a[scores={treasurechestOpen=60}] at @s run function dungeons/treasurechest/o/title2
execute as @a[scores={treasurechestOpen=60}] at @s run title @s subtitle §f■■■
execute as @a[scores={treasurechestOpen=60}] at @s run function dungeons/treasurechest/o/sound2
execute as @a[scores={treasurechestOpen=70}] at @s run function dungeons/treasurechest/o/title2
execute as @a[scores={treasurechestOpen=70}] at @s run title @s subtitle §f■■■
execute as @a[tag=!sneak,scores={treasurechestOpen=60..}] at @s run function dungeons/treasurechest/open
execute as @a[tag=!sneak] at @s run scoreboard players set @s treasurechestOpen 0