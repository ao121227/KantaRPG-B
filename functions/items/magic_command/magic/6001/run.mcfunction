scoreboard players remove @s nowMp 25
scoreboard players set @s magicCoolDown 100
playsound note.bell
tag @a[r=3] add "magic:6001"
scoreboard players set @a[r=3] "magic:6001" 0
tag @s add 6001MagicUse
tellraw @a[r=3,tag=!6001MagicUse] { "rawtext": [{ "text": "> §s" },{ "selector": "@a[tag=6001MagicUse]" },{ "text": "§fから§5スーパーステップ魔法§fを付与されました" }] }
tag @s remove 6001MagicUse
summon minecraft:splash_potion ~~1.5~