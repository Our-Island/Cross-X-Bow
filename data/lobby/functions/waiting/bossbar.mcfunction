#等待游戏开始时的bossbar
execute if entity @e[tag=tool,scores={game_stage=0}] run bossbar remove minecraft:waiting
execute if entity @e[tag=tool,scores={game_stage=0}] run bossbar add waiting [{"text":"已准备 ","color":"white"},{"score":{"objective":"ready_number","name":"@e[tag=tool,limit=1]"},"color":"green"},{"text":" / ","color":"white"},{"text":"需要 ","color":"white"},{"score":{"objective":"need_number","name":"@e[tag=tool,limit=1]"},"color":"red"}]
execute if entity @e[tag=tool,scores={game_stage=0}] run bossbar set minecraft:waiting players @a
execute if entity @e[tag=tool,scores={game_stage=0}] store result bossbar minecraft:waiting max run scoreboard players get @e[tag=tool,limit=1] need_number
execute if entity @e[tag=tool,scores={game_stage=0}] store result bossbar minecraft:waiting value run scoreboard players get @e[tag=tool,limit=1] ready_number
execute unless entity @e[tag=tool,scores={game_stage=0}] run bossbar set minecraft:waiting players

schedule function lobby:waiting/bossbar 2t append




