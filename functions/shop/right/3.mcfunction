execute as @p at @s if score @s G matches 300.. run scriptevent shop:buy {"item":"野菜スープ x2","g":300}
execute as @p at @s if score @s G matches 300.. run structure load "cooking:0011" 3 -59 -52
execute as @p at @s unless score @s G matches 300.. run scriptevent shop:not 300