execute if entity @e[tag=tool,scores={game_stage=1,survive_number=..1}] run function game:end/before_end
schedule function game:end/trigger_end 1t append