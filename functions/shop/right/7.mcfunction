execute as @p at @s if score @s G matches 150.. run scriptevent shop:buy {"item":"すばやさのはね","g":150}
execute as @p at @s if score @s G matches 150.. run function items/artifacts/1001.speedfeather
execute as @p at @s unless score @s G matches 150.. run scriptevent shop:not 150