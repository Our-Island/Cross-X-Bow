#等待游戏开始时的bossbar
execute if entity @e[tag=tool,scores={game_stage=0}] store result bossbar minecraft:waiting max run scoreboard players get @e[tag=tool,limit=1] need_number
execute if entity @e[tag=tool,scores={game_stage=0}] store result bossbar minecraft:waiting value run scoreboard players get @e[tag=tool,limit=1] ready_number




