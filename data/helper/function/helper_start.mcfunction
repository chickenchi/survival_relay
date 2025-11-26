tellraw @a "<진행자> 읏차."
function start:kill_player
execute as @a at @s run stopsound @s
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 1
function start:setup