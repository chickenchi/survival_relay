tag @p[tag=currentPlayer] add beforePlayer
gamemode spectator @a
execute store result score @e[type=block_display,limit=1] playerCount run execute if entity @a
execute store result score @e[type=block_display,limit=1] playedPlayerCount run execute if entity @a[tag=playedPlayer]
scoreboard players remove @e[type=block_display] playerCount 1
execute if score @e[type=block_display,limit=1] playerCount = @e[type=block_display,limit=1] playedPlayerCount run gamemode survival @p[tag=!playedPlayer]
execute if score @e[type=block_display,limit=1] playerCount = @e[type=block_display,limit=1] playedPlayerCount run scoreboard players set @e[type=block_display] playedPlayerCount 0
gamemode survival @r[tag=!currentPlayer, tag=!playedPlayer]
tag @a[gamemode=spectator] remove currentPlayer
tag @p[gamemode=survival] add currentPlayer
function system:duplicate_item
tp @p[tag=currentPlayer] @p[tag=beforePlayer,limit=1]
tag @a remove beforePlayer