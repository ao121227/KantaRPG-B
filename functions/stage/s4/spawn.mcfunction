setblock ~~1~ minecraft:air
summon minecraft:armor_stand ~~1000~~~ a spawn_marker
structure load "mob:004" ~~4~
execute positioned ~~4~ run effect @e[tag="mob:004",r=1] instant_damage 1 255