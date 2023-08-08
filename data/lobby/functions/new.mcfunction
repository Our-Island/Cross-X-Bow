#第一次加入的玩家
execute as @a unless entity @s[scores={stats_join_game=1..}] run function lobby:join_game_trigger
schedule function lobby:new 1t append