
scoreboard players reset @s join_game_trigger
scoreboard players add @s stats_join_game 1
execute as @a at @a run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 1
function common:refresh
scoreboard players set @s team 0
#分类，判断当前游戏开始了没
execute if entity @e[scores={game_stage=0}] run function lobby:join_game_stage_0
execute if entity @e[scores={game_stage=1}] run function lobby:join_game_stage_1
