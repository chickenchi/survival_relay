function start:change_gamerule
function start:put_timeseeker_data
gamerule doImmediateRespawn false
gamemode spectator @a
gamemode survival @r
scoreboard objectives add diedPlayer deathCount
scoreboard players set @a diedPlayer 0
tag @p[gamemode=survival] add currentPlayer
tag @p[tag=currentPlayer] add playedPlayer
item replace entity @a container.8 with written_book[written_book_content={title:"퀘스트",author:"",pages:[{"text":"퀘스트\n1. 다이아몬드 구하기(1세트)\n2. 양귀비 구하기(2세트)\n3. 알리움 구하기(2세트)\n4. 레벨 20까지 올리기\n5. 석영 블록 구하기(30개)"}]}] 1