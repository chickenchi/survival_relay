execute as @a unless entity @s[scores={diedPlayer=-1..}] at @s run tellraw @s "<진행자> 지금 들어오신 분들은 참여가 불가능해요...\n끝나고 즐겨 주세요!"
execute as @a unless entity @s[scores={diedPlayer=-1..}] at @s run scoreboard players set @s diedPlayer -1
execute if entity @p[tag=currentPlayer, scores={diedPlayer=1}] run scoreboard players add @e[type=block_display] diedPlayer 1
execute if entity @p[tag=currentPlayer, scores={diedPlayer=1}] run scoreboard players set @e[type=block_display] gameTime 1
execute if entity @p[tag=currentPlayer, scores={diedPlayer=1}] at @s run tag @s remove playedPlayer
scoreboard players remove @e[type=block_display] gameTime 1
execute store result score @e[type=block_display,limit=1] gameTimeBySecond run scoreboard players get @e[type=block_display,limit=1] gameTime
scoreboard players operation @e[type=block_display] gameTimeBySecond /= @e[type=block_display] twenty
execute store result score @e[type=block_display] health run data get entity @p[tag=currentPlayer] Health
title @a actionbar ["남은 시간: ",{"score":{"name":"@e[type=block_display,limit=1]","objective":"gameTimeBySecond"}},"초 [ ",{"color":"red","text":"♥ "},{"score":{"name":"@e[type=block_display,limit=1]","objective":"health"}}, " ]"]
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:change_player
execute if score @e[type=block_display,limit=1] gameTime matches 0 run function system:reset_time