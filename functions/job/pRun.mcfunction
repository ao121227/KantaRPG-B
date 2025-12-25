tag @s remove strong
tag @s add protection
tellraw @s { "rawtext": [{ "text": "> §6ジョブ§fを§3プロテクション§fに変更しました" }] }
playsound random.totem
# ステータス変更処理
scoreboard players set @s magicCoolDown 0
scoreboard players operation @s strong_nowLv = @s nowLv
scoreboard players operation @s strong_nowXp = @s nowXp
scoreboard players operation @s strong_needXp = @s needXp
scoreboard players operation @s strong_G = @s G
execute unless entity @s[scores={protection_nowLv=0..}] run scoreboard players set @s protection_nowLv 1
execute unless entity @s[scores={protection_nowXp=0..}] run scoreboard players set @s protection_nowXp 0
execute unless entity @s[scores={protection_needXp=0..}] run scoreboard players set @s protection_needXp 30
execute unless entity @s[scores={protection_G=0..}] run scoreboard players set @s protection_G 100
scoreboard players operation @s nowLv = @s protection_nowLv
scoreboard players operation @s nowXp = @s protection_nowXp
scoreboard players operation @s needXp = @s protection_needXp
scoreboard players operation @s G = @s protection_G
scoreboard players operation @s nowMp = @s maxMp
effect @s instant_health 1 255