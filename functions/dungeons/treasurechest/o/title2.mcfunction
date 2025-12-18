# ノーマル
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 1 run title @s title §f開封可能!
# アンコモン
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 2 run title @s title §2開封可能!
# ユニーク
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 3 run title @s title §6開封可能!
# レア
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 4 run title @s title §d開封可能!
# レジェンダリー
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 5 run title @s title §3開封可能!
# 幻
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 6 run title @s title §m開封可能!
# 神話
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 7 run title @s title §u開封可能!