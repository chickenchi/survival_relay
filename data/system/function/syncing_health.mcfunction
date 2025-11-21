execute store result score @p[tag=currentPlayer] syncHealth run data get entity @p[tag=currentPlayer] Health
execute store result score @p[gamemode=spectator] syncHealth run data get entity @p[gamemode=spectator] Health
execute if score @p[gamemode=spectator] syncHealth = @p[tag=currentPlayer] syncHealth run scoreboard players set @e[type=block_display] isSyncingHealth 0
execute if entity @e[type=block_display, scores={isSyncingHealth=1}, limit=1] run damage @p[tag=currentPlayer] 1 fall