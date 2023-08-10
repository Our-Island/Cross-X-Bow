scoreboard players set @e[tag=tool] start_countdown 15
execute as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
title @a[scores={toggle_ready=1}] title {"text": "你已准备，游戏将在20秒内开始","color": "green"}
title @a[scores={toggle_ready=1}] subtitle {"text": "你将参与游戏","color": "green"}
title @a[scores={toggle_ready=0}] title {"text": "你未准备，游戏将在20秒内开始","color": "red","bold": true}
title @a[scores={toggle_ready=0}] subtitle {"text": "未准备的玩家将会成为旁观者","color": "red","underlined": true}

function game:start/countdown