execute as @a at @s run playsound ui.toast.challenge_complete player @s
title @a title ""
title @a subtitle [{"selector":"@a[scores={diedPlayer=0}]"}, " 님이 우승하셨습니다!"]
title @a actionbar "와아아아"
function reset:reset