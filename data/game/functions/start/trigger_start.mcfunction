scoreboard players set @e[tag=tool] game_stage 1

scoreboard players set @a[scores={toggle_ready=1}] team 1
gamemode adventure @a[scores={toggle_ready=1}]
team join war @a[scores={toggle_ready=1}]

scoreboard players set @a[scores={toggle_ready=0}] team 2
gamemode spectator @a[scores={toggle_ready=0}]
team join spectator @a[scores={toggle_ready=0}]

scoreboard players reset @e[tag=tool] start_countdown

spreadplayers 0 0 0 175 false @e[tag=border_center,type=marker]
worldborder set 600
execute at @e[tag=border_center] run worldborder center ~ ~

execute as @a at @a run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 75 0.5
bossbar set game_process color green
clear @a gray_dye
clear @a green_dye
clear @a bow
clear @a crossbow
function game:process/war_effect
tellraw @a {"text": ">>>游戏开始","bold": true,"color": "red"}
tellraw @a[scores={toggle_start_tip=1}] {"text": ">>>所有参与游戏的玩家会被随机分配到地图中","color": "red"}
tellraw @a[scores={toggle_start_tip=1}] {"text": ">>>在地图中收集物资，击杀所有敌人，成为最后一个幸存者，即为胜利者","color": "red"}
tellraw @a[scores={toggle_start_tip=1}] {"text": ">>>接下来你将有30秒降落时间与30秒无敌时间","color": "red"}
tellraw @a[scores={toggle_start_tip=1}] {"text": ">>>点击此处关闭之后的游戏规则提示","color": "red","underlined": true, "hoverEvent": { "action": "show_text","contents": "点击关闭之后的游戏规则提示"},"clickEvent": {"action": "run_command","value": "scoreboard players set @s toggle_start_tips 0"}}
function game:start/spread_players
function game:start/refill_chests
function common:clear_ground
schedule function game:start/equip 1s append


