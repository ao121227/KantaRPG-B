execute as @p at @s if score @s G matches 200.. run scriptevent shop:buy {"item":"とてもすごい餌","g":200}
execute as @p at @s if score @s G matches 200.. run structure load "other:0006" -39 -59 -45
execute as @p at @s unless score @s G matches 200.. run scriptevent shop:not 200