scoreboard players set @e[tag=tool] game_stage 2
bossbar set game_process players
worldborder center 0 0
worldborder set 600
tp @e[tag=border_center,type=marker] 0 69 0
schedule clear game:process/border_1a
schedule clear game:process/border_2a
schedule clear game:process/border_3a
schedule clear game:process/border_4a
execute if entity @a[scores={team=1}] run tellraw @a [{"text": "☆胜利☆   ","color": "gold"},{"selector":"@a[scores={team=1},limit=1]"},{"text": " 获得了最终胜利！","color": "white"}]
execute unless entity @a[scores={team=1}] run tellraw @a [{"text": "☆悲剧☆   ","color": "gray"},{"text": "没有人获得最终胜利！","color": "white"}]
function game:end/lock_chests
execute as @a at @s run playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 80 1
schedule function game:end/celebration_2 5t append
schedule function game:end/end 202 append
tp @a @a[scores={team=1},limit=1]
gamemode adventure @a
effect give @a resistance 12 11 true
bossbar set minecraft:waiting color red
scoreboard players set @a toggle_ready 0
