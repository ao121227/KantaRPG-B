# ノーマル
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 1 run playsound random.orb
# アンコモン
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 2 run playsound breeze_wind_charge.burst
# ユニーク
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 3 run playsound break.heavy_core
# レア
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 4 run playsound break.copper_grate
# レジェンダリー
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 5 run playsound bottle.dragonbreath
# 幻
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 6 run playsound break.large_amethyst_bud
# 神話
execute if score @e[tag=treasurechest,c=1] treasurechestNumber matches 7 run playsound block.end_portal.spawn