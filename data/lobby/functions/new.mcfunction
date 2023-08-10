#第一次加入的玩家
execute as @a unless entity @s[scores={stats_join_game=1..}] run function lobby:join_game
execute as @a unless entity @s[scores={toggle_start_tip=0..}] run scoreboard players set @s toggle_start_tip 1
schedule function lobby:new 1t append