#检测到达一定人数开始倒计时
execute if entity @e[scores={game_stage=0},tag=tool] as @e[tag=tool,limit=1] unless entity @s[scores={start_countdown=0..}] if score @s ready_number >= @s need_number run function game:start/start_countdown

#检测人数不足停止计时
execute if entity @e[scores={game_stage=0,start_countdown=0..},tag=tool] as @e[tag=tool,limit=1] if score @s ready_number < @s need_number run function game:start/stop_countdown



execute if entity @e[scores={game_stage=0},tag=tool] run schedule function game:start/trigger_countdown 1t append