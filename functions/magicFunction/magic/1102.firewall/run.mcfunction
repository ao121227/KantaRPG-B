execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^^^0.4~~ a m1102
execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^1^^0.5~~ a m1102
execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^-1^^0.5~~ a m1102
scoreboard players remove @s nowMp 60
scoreboard players set @s magicCoolDown 300
playsound mob.blaze.shoot