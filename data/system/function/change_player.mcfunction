function system:duplicate_item
gamemode spectator @p[tag=currentPlayer]
gamemode survival @p[tag=!currentPlayer]
tag @a remove currentPlayer
tag @p[gamemode=survival] add currentPlayer
tp @p[tag=currentPlayer] @p[gamemode=spectator,limit=1]
scoreboard players set @e[type=block_display] isSyncingHealth 1