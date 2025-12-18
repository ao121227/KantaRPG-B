# mob:004 = オーク
execute as @e[tag="mob:004"] at @s run particle minecraft:oozing_emitter ~~~
execute as @e[tag="mob:004"] at @s run particle minecraft:sneeze ^^1^1
execute as @e[tag="mob:004"] at @s run particle minecraft:sneeze ^^1^-1
execute as @e[tag="mob:004"] at @s run particle minecraft:sneeze ^1^1^
execute as @e[tag="mob:004"] at @s run particle minecraft:sneeze ^-1^1^
execute as @e[tag="mob:004"] at @s run effect @a[r=2.5,scores={artifacts=!2001,artifacts2=!2001}] poison 1 2 false