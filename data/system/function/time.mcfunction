item replace entity @p container.8 with written_book[written_book_content={title:"퀘스트",author:"",pages:[{"text":"퀘스트\n1. 다이아몬드 구하기(1세트)\n2. 양귀비 구하기(2세트)\n3. 알리움 구하기(2세트)\n4. 레벨 20까지 올리기\n5. 석영 블록 구하기(30개)"}]}] 1
scoreboard players remove @e[type=block_display] gameTime 1
execute store result score @e[type=block_display,limit=1] gameTimeBySecond run scoreboard players get @e[type=block_display,limit=1] gameTime
scoreboard players operation @e[type=block_display] gameTimeBySecond /= @e[type=block_display] twenty
execute store result score @e[type=block_display] health run data get entity @p[tag=currentPlayer] Health
title @p actionbar ["남은 시간: ",{"score":{"name":"@e[type=block_display,limit=1]","objective":"gameTimeBySecond"}},"초 [ ",{"color":"red","text":"♥ "},{"score":{"name":"@e[type=block_display,limit=1]","objective":"health"}}, " ]"]
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:change_player
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:reset_time