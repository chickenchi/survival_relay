function start:change_gamerule
function start:put_timeseeker_data
schedule function start:kill_player 1
gamerule doImmediateRespawn false
gamemode spectator @a
gamemode survival @r
tag @p[gamemode=survival] add currentPlayer
tag @p[tag=currentPlayer] add playedPlayer