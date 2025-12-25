tag @s remove protection
tag @s add strong
tellraw @s { "rawtext": [{ "text": "> §6ジョブ§fを§mストロング§fに変更しました" }] }
playsound random.totem
# ステータス変更処理
scoreboard players set @s magicCoolDown 0
scoreboard players operation @s protection_nowLv = @s nowLv
scoreboard players operation @s protection_nowXp = @s nowXp
scoreboard players operation @s protection_needXp = @s needXp
scoreboard players operation @s protection_G = @s G
execute unless entity @s[scores={strong_nowLv=0..}] run scoreboard players set @s strong_nowLv 1
execute unless entity @s[scores={strong_nowXp=0..}] run scoreboard players set @s strong_nowXp 0
execute unless entity @s[scores={strong_needXp=0..}] run scoreboard players set @s strong_needXp 30
execute unless entity @s[scores={strong_G=0..}] run scoreboard players set @s strong_G 100
scoreboard players operation @s nowLv = @s strong_nowLv
scoreboard players operation @s nowXp = @s strong_nowXp
scoreboard players operation @s needXp = @s strong_needXp
scoreboard players operation @s G = @s strong_G
scoreboard players operation @s nowMp = @s maxMp
effect @s instant_health 1 255