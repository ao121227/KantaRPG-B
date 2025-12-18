execute as @a at @s run scoreboard players operation @s "needXp***" = @s needXp
scoreboard players remove @a "needXp***" 1
execute if score @s nowXp > @s "needXp***" run function lv/up
scoreboard players add @a[tag=upSound] upSound 1
execute if score @s[tag=upSound] upSound matches -1.. run function lv/sound
execute if score @s[tag=upSound] upSound matches 21.. run tag @s remove upSound
execute if score @s[tag=!upSound] upSound matches 21.. run scoreboard players set @s upSound 0