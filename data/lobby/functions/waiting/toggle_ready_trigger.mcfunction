execute if entity @s[scores={toggle_ready=0}] run tag @s add toggle_ready_on
execute if entity @s[scores={toggle_ready=0}] run schedule function lobby:waiting/toggle_ready_on 1t replace

execute if entity @s[scores={toggle_ready=1}] run tag @s add toggle_ready_off
execute if entity @s[scores={toggle_ready=1}] run schedule function lobby:waiting/toggle_ready_off 1t replace

playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 1
