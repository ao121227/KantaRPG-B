execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^^^0.4~~ a m5101
execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^1^^0.5~~ a m5101
execute positioned ~ ~1000 ~ run summon minecraft:armor_stand ^-1^^0.5~~ a m5101
scoreboard players remove @s nowMp 40
scoreboard players set @s magicCoolDown 200
playsound wind_charge.burst