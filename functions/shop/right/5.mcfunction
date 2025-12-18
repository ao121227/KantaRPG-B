execute as @p at @s if score @s G matches 200.. run scriptevent shop:buy {"item":"普通の釣り竿","g":200}
execute as @p at @s if score @s G matches 200.. run structure load "other:0001" 3 -59 -50
execute as @p at @s unless score @s G matches 200.. run scriptevent shop:not 200