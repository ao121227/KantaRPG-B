# Mp regen
scoreboard players set @s regenMp 20
execute if score @s nowLv matches 2.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 3.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 4.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 5.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 6.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 7.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 8.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 9.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 10.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 11.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 12.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 13.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 14.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 15.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 16.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 17.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 18.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 19.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 20.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 21.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 22.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 23.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 24.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 25.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 26.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 27.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 28.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 29.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 30.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 31.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 32.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 33.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 34.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 35.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 36.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 37.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 38.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 39.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 40.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 41.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 42.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 43.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 44.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 45.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 46.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 47.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 48.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 49.. run scoreboard players add @s regenMp 3
execute if score @s nowLv matches 50.. run scoreboard players add @s regenMp 3
# Mp regen artifacts
scoreboard players add @a[scores={artifacts=3001}] regenMp 2
scoreboard players add @a[scores={artifacts2=3001}] regenMp 2

# Mp regen count
scoreboard players operation @s regenMpCount += @s regenMp

# Mp health
execute if score @s regenMpCount matches 1000.. if score @s nowMp < @s maxMp run scoreboard players add @s nowMp 1
execute if score @s regenMpCount matches 1000.. run scoreboard players set @s regenMpCount 0

# Mp max
execute if score @s nowMp > @s maxMp run scoreboard players remove @s nowMp 1