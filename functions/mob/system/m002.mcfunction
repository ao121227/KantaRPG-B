# mob:002 = スケルトン
execute as @e[tag="mob:002"] at @s run particle minecraft:water_wake_particle ~~~
execute as @e[tag="mob:002"] at @s run scriptevent fire:cancel
execute as @e[tag="mob:002"] at @s run effect @s slowness 1 4 true