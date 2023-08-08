execute if entity @e[tag=tool,scores={game_stage=1,population=1..3}] run scoreboard players set @e[tag=tool,limit=1] need_number 2
execute if entity @e[tag=tool,scores={game_stage=1,population=4..5}] run scoreboard players set @e[tag=tool,limit=1] need_number 3
execute if entity @e[tag=tool,scores={game_stage=1,population=6..10}] run scoreboard players set @e[tag=tool,limit=1] need_number 4
execute if entity @e[tag=tool,scores={game_stage=1,population=11..}] run scoreboard players set @e[tag=tool,limit=1] need_number 6

execute if entity @e[tag=tool,scores={game_stage=1}] run schedule function lobby:waiting/need_number 1t append