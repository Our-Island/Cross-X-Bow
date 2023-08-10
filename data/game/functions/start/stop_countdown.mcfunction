scoreboard players reset @e[tag=tool] start_countdown
bossbar set minecraft:waiting color red
title @a title {"text": "已准备玩家不足","color": "red","bold": true,"underlined": true}
title @a subtitle {"text": "需要更多已准备的玩家","color": "red","underlined": true}
execute as @a at @a run playsound minecraft:entity.pig.death player @s ~ ~ ~ 100 1
schedule clear game:start/countdown