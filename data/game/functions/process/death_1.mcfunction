scoreboard players reset @s death_trigger
tellraw @a [{"text": "☆击杀☆   ","color": "yellow","bold": false},{"selector":"@s"},{"text": " 被 ","color": "white"},{"selector":"@a[scores={kill_trigger=1..}]"},{"text": " 击杀了","color": "white"}]
scoreboard players reset @s death_trigger
execute if entity @a[limit=1,scores={kill_trigger=1}] run tp @s @a[limit=1,scores={kill_trigger=1}]
execute unless entity @a[limit=1,scores={kill_trigger=1}] run tp @s @r[limit=1,scores={team=1}]
scoreboard players add @a[scores={kill_trigger=1..}] stats_kill 1
scoreboard players reset @a kill_trigger
scoreboard players add @s stats_death 1
scoreboard players set @s team 2
execute as @a at @a run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 100 1
clear @s
tp @s 0 320.1 0 facing 0 320 -1