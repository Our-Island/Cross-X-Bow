execute store result bossbar game_process value run scoreboard players get @e[tag=tool,limit=1] game_time
bossbar set game_process name [{"text": "存活人数: ","color": "white"},{"score": {"objective": "survive_number","name": "@e[tag=tool,limit=1]"}}]
execute if entity @e[tag=tool,scores={game_stage=1}] run bossbar set game_process players @a
execute if entity @e[tag=tool,scores={survive_number=1}] run bossbar set game_process color green
execute if entity @e[tag=tool,scores={survive_number=2}] run bossbar set game_process color red
schedule function game:process/bossbar 1t append