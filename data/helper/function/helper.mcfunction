execute as @a at @s run playsound minecraft:custom.helper player @s
tellraw @a "<진행자> 오, 드디어 제가 나설 차례인가요?"
schedule function helper:helperscene1 2s