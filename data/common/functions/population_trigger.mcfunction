#重置人数，触发计算
scoreboard players reset @e[tag=tool] population
execute as @a run function common:population_count

schedule function common:population_trigger 1t append