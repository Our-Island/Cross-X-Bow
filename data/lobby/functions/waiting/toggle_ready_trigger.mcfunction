execute if entity @s[scores={toggle_ready=0}] run schedule function lobby:waiting/toggle_ready_off 1t append
execute if entity @s[scores={toggle_ready=1}] run schedule function lobby:waiting/toggle_ready_off 1t append
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 1
