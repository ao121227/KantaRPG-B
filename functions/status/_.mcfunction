# status
scoreboard players set @a atk 0
scoreboard players set @a spd 1
scoreboard players set @a jmp 0
scoreboard players set @a hp 0
scoreboard players set @a vampire 0
scoreboard players set @a xpBonus 0
scoreboard players set @a maxMp 100
# artifacts status bonus
scoreboard players add @a[scores={artifacts=1001}] spd 1
scoreboard players add @a[scores={artifacts2=1001}] spd 1
scoreboard players add @a[scores={artifacts=2002}] hp 2
scoreboard players add @a[scores={artifacts2=2002}] hp 2
scoreboard players add @a[scores={artifacts=2003}] vampire 3
scoreboard players add @a[scores={artifacts2=2003}] vampire 3
scoreboard players add @a[scores={artifacts=3001}] maxMp 10
scoreboard players add @a[scores={artifacts2=3001}] maxMp 10
# magic bonus
scoreboard players add @a[tag="magic:6101"] spd 1
scoreboard players add @a[tag="magic:6001"] spd 1

# lv status hp bonus
scoreboard players add @a[scores={nowLv=2..}] hp 2
scoreboard players add @a[scores={nowLv=5..}] hp 2
scoreboard players add @a[scores={nowLv=7..}] hp 2
scoreboard players add @a[scores={nowLv=10..}] hp 2
scoreboard players add @a[scores={nowLv=12..}] hp 2
scoreboard players add @a[scores={nowLv=15..}] hp 2
scoreboard players add @a[scores={nowLv=17..}] hp 2
scoreboard players add @a[scores={nowLv=20..}] hp 2
scoreboard players add @a[scores={nowLv=22..}] hp 2
scoreboard players add @a[scores={nowLv=25..}] hp 2
scoreboard players add @a[scores={nowLv=27..}] hp 4
scoreboard players add @a[scores={nowLv=30..}] hp 4
scoreboard players add @a[scores={nowLv=32..}] hp 4
scoreboard players add @a[scores={nowLv=35..}] hp 4
scoreboard players add @a[scores={nowLv=37..}] hp 4
scoreboard players add @a[scores={nowLv=40..}] hp 4
scoreboard players add @a[scores={nowLv=42..}] hp 4
scoreboard players add @a[scores={nowLv=45..}] hp 4
scoreboard players add @a[scores={nowLv=47..}] hp 4
scoreboard players add @a[scores={nowLv=50..}] hp 4
# lv status spd bonus
scoreboard players add @a[scores={nowLv=10..}] spd 1
scoreboard players add @a[scores={nowLv=20..}] spd 1
scoreboard players add @a[scores={nowLv=30..}] spd 1
scoreboard players add @a[scores={nowLv=40..}] spd 1
scoreboard players add @a[scores={nowLv=50..}] spd 1
# maxMp
execute as @a at @s if score @s nowLv matches 3.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 5.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 7.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 10.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 13.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 15.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 17.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 20.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 23.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 25.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 27.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 30.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 33.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 35.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 37.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 40.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 43.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 45.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 47.. run scoreboard players add @s maxMp 20
execute as @a at @s if score @s nowLv matches 50.. run scoreboard players add @s maxMp 20
# spd
execute as @a at @s run scriptevent status:spd
# hp
effect @a[scores={hp=2}] health_boost 1 0 true
effect @a[scores={hp=4}] health_boost 1 1 true
effect @a[scores={hp=6}] health_boost 1 2 true
effect @a[scores={hp=8}] health_boost 1 3 true
effect @a[scores={hp=10}] health_boost 1 4 true
effect @a[scores={hp=12}] health_boost 1 5 true
effect @a[scores={hp=14}] health_boost 1 6 true
effect @a[scores={hp=16}] health_boost 1 7 true
effect @a[scores={hp=18}] health_boost 1 8 true
effect @a[scores={hp=20}] health_boost 1 9 true
effect @a[scores={hp=22}] health_boost 1 10 true
effect @a[scores={hp=24}] health_boost 1 11 true
effect @a[scores={hp=26}] health_boost 1 12 true
effect @a[scores={hp=28}] health_boost 1 13 true
effect @a[scores={hp=30}] health_boost 1 14 true
effect @a[scores={hp=32}] health_boost 1 15 true
effect @a[scores={hp=34}] health_boost 1 16 true
effect @a[scores={hp=36}] health_boost 1 17 true
effect @a[scores={hp=38}] health_boost 1 18 true
effect @a[scores={hp=40}] health_boost 1 19 true
effect @a[scores={hp=42}] health_boost 1 20 true
effect @a[scores={hp=44}] health_boost 1 21 true
effect @a[scores={hp=46}] health_boost 1 22 true
effect @a[scores={hp=48}] health_boost 1 23 true
effect @a[scores={hp=50}] health_boost 1 24 true
effect @a[scores={hp=52}] health_boost 1 25 true
effect @a[scores={hp=54}] health_boost 1 26 true
effect @a[scores={hp=56}] health_boost 1 27 true
effect @a[scores={hp=58}] health_boost 1 28 true
effect @a[scores={hp=60}] health_boost 1 29 true
effect @a[scores={hp=62}] health_boost 1 30 true
effect @a[scores={hp=64}] health_boost 1 31 true
effect @a[scores={hp=66}] health_boost 1 32 true
effect @a[scores={hp=68}] health_boost 1 33 true
effect @a[scores={hp=70}] health_boost 1 34 true
effect @a[scores={hp=72}] health_boost 1 35 true
effect @a[scores={hp=74}] health_boost 1 36 true
effect @a[scores={hp=76}] health_boost 1 37 true
effect @a[scores={hp=78}] health_boost 1 38 true
effect @a[scores={hp=80}] health_boost 1 39 true
effect @a[scores={hp=82}] health_boost 1 40 true
effect @a[scores={hp=84}] health_boost 1 41 true
effect @a[scores={hp=86}] health_boost 1 42 true
effect @a[scores={hp=88}] health_boost 1 43 true
effect @a[scores={hp=90}] health_boost 1 44 true
effect @a[scores={hp=92}] health_boost 1 45 true
effect @a[scores={hp=94}] health_boost 1 46 true
effect @a[scores={hp=96}] health_boost 1 47 true
effect @a[scores={hp=98}] health_boost 1 48 true
effect @a[scores={hp=100}] health_boost 1 49 true
# jmp
execute as @a at @s run scriptevent i:jmp