function setup:change_gamerule
function setup:add_timeseeker
scoreboard objectives add health dummy
scoreboard objectives add syncHealth dummy
scoreboard objectives add isSyncingHealth dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add playedPlayerCount dummy
gamemode adventure @a
effect give @a resistance 10 5
time set 6000
tp @a 10000000.5 201 10000000.5
fill 9999995 200 9999995 10000005 210 10000005 quartz_block outline
fill 9999996 201 9999996 10000004 209 10000004 light outline
schedule function helper:helper 5s