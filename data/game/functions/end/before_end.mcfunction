scoreboard players set @e[tag=tool] game_stage 2
function game:end/lock_chests
execute as @a at @s run playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 80 1
schedule function game:end/celebration_2 5t append
schedule function game:end/end 102t append
tp @a @a[scores={team=1},limit=1]
gamemode adventure @a
