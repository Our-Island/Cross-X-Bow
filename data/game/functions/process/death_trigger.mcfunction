execute as @a[scores={death_trigger=1..,team=0}] run function game:process/death_0
execute as @a[scores={death_trigger=1..,team=1}] run function game:process/death_1
schedule function game:process/death_trigger 1t append