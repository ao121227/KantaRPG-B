execute as @p at @s if score @s G matches 50.. run scriptevent shop:buy {"item":"望遠鏡","g":50}
execute as @p at @s if score @s G matches 50.. run structure load "other:0002" -13 -59 -51
execute as @p at @s unless score @s G matches 50.. run scriptevent shop:not 50