execute as @p at @s if score @s G matches 400.. run scriptevent shop:buy {"item":"すごい釣り竿","g":400}
execute as @p at @s if score @s G matches 400.. run structure load "other:0003" -43 -59 -45
execute as @p at @s unless score @s G matches 400.. run scriptevent shop:not 400