scoreboard players reset @e[tag=tool] ready_number
execute as @a[scores={ready_init=1}] run function lobby:waiting/ready_number_count

execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:waiting/ready_number_trigger 1t append