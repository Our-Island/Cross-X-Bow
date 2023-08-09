execute if entity @s[scores={toggle_ready=0}] run scoreboard players set @s toggle_ready 1
execute if entity @s[scores={toggle_ready=1}] run scoreboard players set @s toggle_ready 0
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 1