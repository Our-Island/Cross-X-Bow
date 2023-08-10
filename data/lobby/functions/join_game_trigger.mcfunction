#检测是否有玩家加入了游戏
execute as @a[scores={join_game_trigger=1..}] run function lobby:join_game
schedule function lobby:join_game_trigger 1t append