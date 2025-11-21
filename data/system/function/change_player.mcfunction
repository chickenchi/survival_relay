tag @p[tag=currentPlayer] add beforePlayer
gamemode spectator @p[tag=currentPlayer]
gamemode survival @r[tag=!currentPlayer]
tag @p[gamemode=spectator] remove currentPlayer
tag @p[gamemode=survival] add currentPlayer
function system:duplicate_item
tag @a remove beforePlayer
tp @p[tag=currentPlayer] @p[gamemode=spectator,limit=1]