execute if entity @e[type=block_display] run tellraw @a "<작업자> 이전에 진행했었네요! 시작을 누르시면 계속 진행하겠습니다."
execute if entity @e[type=block_display] run tellraw @a {"click_event":{"action":"run_command","command":"function setup:restart"},"color":"green","text":"[시작]"}
execute unless entity @e[type=block_display] run tellraw @a "<작업자> 처음 진행하는 날이네요! 진행자를 부르겠습니다..."
execute unless entity @e[type=block_display] run function setup:setting
execute unless entity @e[type=block_display] run schedule function helper:helper 2s