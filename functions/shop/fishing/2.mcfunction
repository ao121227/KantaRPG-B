execute as @p at @s if score @s G matches 50.. run scriptevent shop:buy {"item":"普通の餌","g":50}
execute as @p at @s if score @s G matches 50.. run structure load "other:0004" -41 -59 -45
execute as @p at @s unless score @s G matches 50.. run scriptevent shop:not 50