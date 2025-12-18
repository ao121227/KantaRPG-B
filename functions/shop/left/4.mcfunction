execute as @p at @s if score @s G matches 250.. run scriptevent shop:buy {"item":"うすっぺらいレシピ本","g":250}
execute as @p at @s if score @s G matches 250.. run structure load "recipe:0011" -13 -59 -49
execute as @p at @s unless score @s G matches 250.. run scriptevent shop:not 250