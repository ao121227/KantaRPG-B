execute if entity @s[tag=getArtifact2001] run playsound click_on.bamboo_wood_button
execute if entity @s[tag=getArtifact2001] run tellraw @s { "rawtext": [{ "text": "§4> 取得済みです" }] }
execute if entity @s[tag=!getArtifact2001] run function items/artifacts/2001
execute if entity @s[tag=!getArtifact2001] run playsound random.orb
execute if entity @s[tag=!getArtifact2001] run tellraw @s { "rawtext": [ { "text": "> §9「毒除けクリスタル」§fを入手しました" }] }
execute if entity @s[tag=!getArtifact2001] run tag @s add getArtifact2001