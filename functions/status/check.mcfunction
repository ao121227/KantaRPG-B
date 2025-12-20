# sound
playsound random.orb @s

# score set
scoreboard players operation @s checkHp = @s hp
scoreboard players operation @s checkJmp = @s jmp
scoreboard players add @s checkHp 10
scoreboard players add @s checkJmp 1

# display
tellraw @s { "rawtext": [{ "text": "§l§aステータス" }] }
tellraw @s { "rawtext": [{ "text": " ・ §a現在レベル: Lv." }, { "score": { "name": "@s", "objective": "nowLv" } },{ "text": "§f  ・ §a現在XP: " }, { "score": { "name": "@s", "objective": "nowXp" } },{ "text": "XP" },{ "text": "§f  ・ §2必要XP: " }, { "score": { "name": "@s", "objective": "needXp" } },{ "text": "XP" } ] }
tellraw @s { "rawtext": [{ "text": " ・ §c最大体力: " }, { "score": { "name": "@s", "objective": "checkHp" } },{ "text": "HP§f  ・ §3最大マジックポイント: " }, { "score": { "name": "@s", "objective": "maxMp" } },{ "text": "MP" } ] }
tellraw @s { "rawtext": [{ "text": " ・ §b移動速度: " }, { "score": { "name": "@s", "objective": "spd" } },{ "text": "SPD§f  ・ §3マジックポイント回復速度: " }, { "score": { "name": "@s", "objective": "regenMp" } },{ "text": "/1000" } ] }
tellraw @s { "rawtext": [{ "text": " ・ §4吸血確率: " }, { "score": { "name": "@s", "objective": "vampire" } },{ "text": "%§f  ・ §bXPボーナス: +" },{ "score": {"name": "@s", "objective": "xpBonus" } },{ "text": "%" }] }
tellraw @s[tag=protection] { "rawtext": [{ "text": " ・ §6ジョブ: §3プロテクション" }] }
tellraw @s[tag=strong] { "rawtext": [{ "text": " ・ §6ジョブ: §4ストロング" }] }
scriptevent r:artifact