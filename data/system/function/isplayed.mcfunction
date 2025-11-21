tp @e[type=block_display,limit=1] @p[gamemode=survival]
execute as @a[gamemode=spectator] at @s run spectate @p[tag=currentPlayer] @s
execute if score @e[type=block_display,limit=1] activatedGame matches 1 run function system:time