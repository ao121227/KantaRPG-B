# ノーマル
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 1 run title @s title §f開封中
# アンコモン
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 2 run title @s title §2開封中
# ユニーク
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 3 run title @s title §6開封中
# レア
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 4 run title @s title §d開封中
# レジェンダリー
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 5 run title @s title §3開封中
# 幻
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 6 run title @s title §m開封中
# 神話
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 7 run title @s title §u開封中