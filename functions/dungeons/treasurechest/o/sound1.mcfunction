# ノーマル
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 1 run playsound random.pop
# アンコモン
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 2 run playsound block.itemframe.remove_item
# ユニーク
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 3 run playsound block.lantern.break
# レア
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 4 run playsound block.scaffolding.break
# レジェンダリー
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 5 run playsound block.shelf.activate
# 幻
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 6 run playsound block.stonecutter.use
# 神話
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 7 run playsound block.end_portal_frame.fill