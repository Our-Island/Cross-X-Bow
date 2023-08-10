execute if entity @s[scores={toggle_weapon=0}] run tag @s add toggle_weapon_on
execute if entity @s[scores={toggle_weapon=0}] run schedule function lobby:waiting/toggle_bow 1t replace

execute if entity @s[scores={toggle_weapon=1}] run tag @s add toggle_weapon_off
execute if entity @s[scores={toggle_weapon=1}] run schedule function lobby:waiting/toggle_crossbow 1t replace

playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 1
