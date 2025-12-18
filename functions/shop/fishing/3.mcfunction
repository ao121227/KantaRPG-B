execute as @p at @s if score @s G matches 100.. run scriptevent shop:buy {"item":"すごい餌","g":100}
execute as @p at @s if score @s G matches 100.. run structure load "other:0005" -40 -59 -45
execute as @p at @s unless score @s G matches 100.. run scriptevent shop:not 100