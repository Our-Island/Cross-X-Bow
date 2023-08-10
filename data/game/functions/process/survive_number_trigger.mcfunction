scoreboard players set @e[tag=tool] survive_number 0
execute as @a[scores={team=1}] run function game:process/survive_number_count

schedule function game:process/survive_number_trigger 1t append