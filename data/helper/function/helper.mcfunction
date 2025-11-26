execute as @a at @s run playsound minecraft:custom.helper player @s
tellraw @a "<진행자> 오, 안녕하세요! 참여해 주셔서 감사합니다."
schedule function helper:helperscene1 2s