schedule clear game:process/border_2a
tellraw @a [{"text": "☆缩圈☆   ", "color": "red"},{"text": "边界停止收缩！", "color": "red"}]
execute as @a at @a run playsound minecraft:entity.ghast.death player @s ~ ~ ~ 40 1