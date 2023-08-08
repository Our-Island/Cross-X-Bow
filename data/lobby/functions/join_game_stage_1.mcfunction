gamemode spectator @s
scoreboard players set @s team 2
team join spectator @s
tp @s @r[team=war]
title @s title {"text": "游戏已经开始","bold": true,"color": "red"}
title @s subtitle {"text": "请等待游戏结束","underlined": true,"color": "yellow"}