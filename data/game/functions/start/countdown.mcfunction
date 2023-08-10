scoreboard players remove @e[tag=tool] start_countdown 1
execute as @a at @a run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 100 0.5
execute as @e[tag=tool,scores={start_countdown=0}] run function game:start/trigger_start
execute as @e[tag=tool,scores={start_countdown=1..}] run schedule function game:start/countdown 1s append