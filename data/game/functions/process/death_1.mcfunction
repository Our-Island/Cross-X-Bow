scoreboard players reset @s death_trigger
tellraw @a [{"text": "☆击杀☆   ","color": "yellow","bold": true},{"selector":"@s"},{"text": " 被 ","color": "white"},{"selector":"@a[scores={kill_trigger=1..}]"},{"text": " 击杀了","color": "white"}]
scoreboard players reset @s death_trigger
scoreboard players add @a[scores={kill_trigger=1..}] stats_kill 1
scoreboard players reset @a kill_trigger
scoreboard players add @s stats_death 1
tp @s 0 120 1
gamemode spectator @s
scoreboard players set @s team 2