execute as @p at @s if score @s G matches 0.. run scriptevent shop:buy {"item":"アーティファクトを解除","g":0}
execute as @p at @s if score @s G matches 0.. run function items/artifacts/0001
execute as @p at @s unless score @s G matches 0.. run scriptevent shop:not 0