gamemode a
tag @s add strong
tag @s remove protection
scoreboard players set @s nowLv 1
scoreboard players set @s nowXp 0
scoreboard players set @s needXp 30
scoreboard players set @s G 100
scoreboard players set @s nowMp 100
scoreboard players set @s magicCoolDown 0
scoreboard players set @s stage 0
scoreboard players set @s magic -20
scoreboard players set @s village 1
scoreboard players reset @s protection_G 
scoreboard players reset @s protection_nowMp
scoreboard players reset @s protection_nowXp
scoreboard players reset @s protection_needXp
scoreboard players reset @s protection_nowLv
title @s title §nカンタRPG
title @s subtitle §8beta
tp @s -64.67 -43.06 -32.76
playsound random.totem
clear @s
spawnpoint @s -65.91 -43.00 -5.60
tag @s remove getArtifact2001
effect @s instant_health 1 255