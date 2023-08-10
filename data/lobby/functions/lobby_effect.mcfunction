#给予lobby玩家药水效果
execute if entity @e[tag=tool,scores={game_stage=0}] run effect give @a resistance 2 5 true
execute if entity @e[tag=tool,scores={game_stage=0}] run effect give @a saturation infinite 0 true
execute if entity @e[tag=tool,scores={game_stage=0}] run effect give @a instant_health 1 5 true

execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:lobby_effect 1s append