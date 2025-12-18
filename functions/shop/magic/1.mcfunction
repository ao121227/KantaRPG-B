execute as @p at @s if score @s G matches 200.. run scriptevent shop:buy {"item":"ファイアボール","g":200}
execute as @p at @s if score @s G matches 200.. run structure load "magic:1001" -25 -58 -45
execute as @p at @s unless score @s G matches 200.. run scriptevent shop:not 200