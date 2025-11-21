tp @e[type=block_display,limit=1] @p[gamemode=survival]
spectate @a[gamemode=spectator,limit=1] @p[tag=currentPlayer]
execute if score @e[type=block_display,limit=1] isSyncingHealth matches 1 run function system:syncing_health
execute if score @e[type=block_display,limit=1] activatedGame matches 1 run function system:time