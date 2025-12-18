execute as @p at @s unless score @s G matches 1000.. run scriptevent shop:not 1000
execute as @p at @s if score @s G matches 1000.. run scriptevent shop:buy {"item":"水の欠片","g":1000}
execute as @p at @s if score @s G matches 1000.. run structure load "loot:0025" -56 -58 -46