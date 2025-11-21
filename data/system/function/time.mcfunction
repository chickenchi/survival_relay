scoreboard players remove @e[type=block_display] gameTime 1
execute store result score @e[type=block_display,limit=1] gameTimeBySecond run scoreboard players get @e[type=block_display,limit=1] gameTime
scoreboard players operation @e[type=block_display] gameTimeBySecond /= @e[type=block_display] twenty
execute store result score @e[type=block_display] health run data get entity @p[tag=currentPlayer] Health
title @p actionbar ["남은 시간: ",{"score":{"name":"@e[type=block_display,limit=1]","objective":"gameTimeBySecond"}},"초 [ ",{"color":"red","text":"♥ "},{"score":{"name":"@e[type=block_display,limit=1]","objective":"health"}}, " ]"]
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:change_player
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:reset_time