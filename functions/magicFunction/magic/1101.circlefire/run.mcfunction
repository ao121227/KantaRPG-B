scoreboard players remove @s nowMp 35
scoreboard players set @s magicCoolDown 200
playsound mob.blaze.shoot
particle r:1002Fire ~~0.3~
particle r:1002Fire2 ~~0.3~
particle r:1002Fire3 ~~0.3~
particle r:1002Fire4 ~~0.3~
damage @e[r=4,tag=monster] 12
execute as @e[r=4,tag=monster] at @s run scriptevent effect:fire 12