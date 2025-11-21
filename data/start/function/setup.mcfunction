function start:change_gamerule
scoreboard players set @e[type=block_display] gameTime 1200
scoreboard players set @e[type=block_display] twenty 20
scoreboard players set @e[type=block_display] activatedGame 1
kill @a
gamerule doImmediateRespawn false
gamemode spectator @a
gamemode survival @r
tag @p[gamemode=survival] add currentPlayer
tag @p[tag=currentPlayer] add playedPlayer