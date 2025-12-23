execute as @p at @s if score @s G matches 50.. run scriptevent shop:buy {"item":"木の剣","g":50}
execute as @p at @s if score @s G matches 50.. run function items/weapon/1100.woodsword
execute as @p at @s unless score @s G matches 50.. run scriptevent shop:not 50