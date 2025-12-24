scoreboard players add @a music 1
execute as @a[scores={music=1000..,stage=1..}] at @s run function music/stop
execute as @a[scores={music=800..,village=1..}] at @s run function music/stop
execute as @a[scores={music=1000..,stage=1..}] at @s run scoreboard players set @s music -20
execute as @a[scores={music=800..,village=1..}] at @s run scoreboard players set @s music -20
execute as @a[scores={music=0}] at @s run function music/play
execute as @a[scores={music=-10}] at @s run function music/stop