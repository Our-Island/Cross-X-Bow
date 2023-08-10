scoreboard players set @e[tag=tool] start_countdown 15
bossbar set minecraft:waiting color green
execute as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
title @a[scores={toggle_ready=1}] title {"text": "游戏将在15秒内开始","color": "green"}
title @a[scores={toggle_ready=1}] subtitle {"text": "你将参与游戏","color": "green"}
title @a[scores={toggle_ready=0}] title {"text": "游戏将在15秒内开始","color": "red","bold": true}
title @a[scores={toggle_ready=0}] subtitle {"text": "你还未准备","color": "red","underlined": true}

function game:start/countdown