# マナの割合をポイントに代入
xp -1000L
xp 129l
# 千分率を計算
scoreboard players operation @s xpbar_nowMp = @s nowMp
scoreboard players operation @s xpbar_maxMp = @s maxMp
scoreboard players set @s n1000 1000
scoreboard players operation @s xpbar_nowMp *= @s n1000
scoreboard players operation @s xpbar_nowMp /= @s xpbar_maxMp
scoreboard players operation @s xpbar = @s xpbar_nowMp
# 千分率をポイントに代入
execute if score @s xpbar matches 512.. run xp 512 @s
execute if score @s xpbar matches 512.. run scoreboard players remove @s xpbar 512
execute if score @s xpbar matches 384.. run xp 384 @s
execute if score @s xpbar matches 384.. run scoreboard players remove @s xpbar 384
execute if score @s xpbar matches 256.. run xp 256 @s
execute if score @s xpbar matches 256.. run scoreboard players remove @s xpbar 256
execute if score @s xpbar matches 128.. run xp 128 @s
execute if score @s xpbar matches 128.. run scoreboard players remove @s xpbar 128
execute if score @s xpbar matches 64.. run xp 64 @s
execute if score @s xpbar matches 64.. run scoreboard players remove @s xpbar 64
execute if score @s xpbar matches 32.. run xp 32 @s
execute if score @s xpbar matches 32.. run scoreboard players remove @s xpbar 32
execute if score @s xpbar matches 16.. run xp 16 @s
execute if score @s xpbar matches 16.. run scoreboard players remove @s xpbar 16
execute if score @s xpbar matches 8.. run xp 8 @s
execute if score @s xpbar matches 8.. run scoreboard players remove @s xpbar 8
execute if score @s xpbar matches 4.. run xp 4 @s
execute if score @s xpbar matches 4.. run scoreboard players remove @s xpbar 4
execute if score @s xpbar matches 2.. run xp 2 @s
execute if score @s xpbar matches 2.. run scoreboard players remove @s xpbar 2
execute if score @s xpbar matches 1.. run xp 1 @s
execute if score @s xpbar matches 1.. run scoreboard players remove @s xpbar 1
# マナをレベルに代入
xp -129l
scoreboard players operation @s xpbar = @s nowMp
execute if score @s xpbar matches 256.. run xp 256l @s
execute if score @s xpbar matches 256.. run scoreboard players remove @s xpbar 256
execute if score @s xpbar matches 128.. run xp 128l @s
execute if score @s xpbar matches 128.. run scoreboard players remove @s xpbar 128
execute if score @s xpbar matches 64.. run xp 64l @s
execute if score @s xpbar matches 64.. run scoreboard players remove @s xpbar 64
execute if score @s xpbar matches 32.. run xp 32l @s
execute if score @s xpbar matches 32.. run scoreboard players remove @s xpbar 32
execute if score @s xpbar matches 16.. run xp 16l @s
execute if score @s xpbar matches 16.. run scoreboard players remove @s xpbar 16
execute if score @s xpbar matches 8.. run xp 8l @s
execute if score @s xpbar matches 8.. run scoreboard players remove @s xpbar 8
execute if score @s xpbar matches 4.. run xp 4l @s
execute if score @s xpbar matches 4.. run scoreboard players remove @s xpbar 4
execute if score @s xpbar matches 2.. run xp 2l @s
execute if score @s xpbar matches 2.. run scoreboard players remove @s xpbar 2
execute if score @s xpbar matches 1.. run xp 1l @s
execute if score @s xpbar matches 1.. run scoreboard players remove @s xpbar 1
# リセット
scoreboard players reset @s xpbar