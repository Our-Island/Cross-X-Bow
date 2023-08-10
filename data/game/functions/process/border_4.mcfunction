tellraw @a [{"text": "☆缩圈☆   ", "color": "red"},{"text": "边界开始急速收缩！", "color": "red"}]
execute as @a at @a run playsound minecraft:entity.ghast.scream player @s ~ ~ ~ 40 1
function game:process/border_4a