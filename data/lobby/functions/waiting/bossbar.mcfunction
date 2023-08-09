#等待游戏开始时的bossbar
execute if entity @e[tag=tool,scores={game_stage=0}] run bossbar set waiting name [{"text":"已准备 ","color":"white"},{"score":{"objective":"ready_number","name":"@e[tag=tool,limit=1]"},"color":"green"},{"text":" / ","color":"white"},{"text":"需要 ","color":"white"},{"score":{"objective":"need_number","name":"@e[tag=tool,limit=1]"},"color":"red"}]
execute if entity @e[tag=tool,scores={game_stage=0}] run bossbar set minecraft:waiting players @a
execute unless entity @e[tag=tool,scores={game_stage=0}] run bossbar set minecraft:waiting players

execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:waiting/bossbar 1t append




