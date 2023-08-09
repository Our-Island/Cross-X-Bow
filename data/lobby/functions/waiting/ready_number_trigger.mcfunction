scoreboard players set @e[tag=tool] ready_number 0
execute as @a[scores={toggle_ready=1}] run function lobby:waiting/ready_number_count

execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:waiting/ready_number_trigger 1t append