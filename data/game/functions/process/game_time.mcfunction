execute if entity @e[tag=tool,scores={game_stage=1}] run scoreboard players add @e[tag=tool] game_time 1
execute if entity @e[tag=tool,scores={game_time=270}] run function game:process/border_1
execute if entity @e[tag=tool,scores={game_time=360}] run function game:process/border_1b
execute if entity @e[tag=tool,scores={game_time=570}] run function game:process/border_2
execute if entity @e[tag=tool,scores={game_time=660}] run function game:process/border_2b
execute if entity @e[tag=tool,scores={game_time=800}] run function game:process/border_3
execute if entity @e[tag=tool,scores={game_time=830}] run function game:process/border_3b
execute if entity @e[tag=tool,scores={game_time=1000}] run function game:process/border_4
execute if entity @e[tag=tool,scores={game_time=1030}] run function game:process/border_4b


schedule function game:process/game_time 1s