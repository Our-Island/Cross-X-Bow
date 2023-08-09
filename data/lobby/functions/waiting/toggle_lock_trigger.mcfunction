execute if entity @e[tag=tool,scores={game_stage=0}] as @a[scores={toggle_ready=1}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:lime_dye",Count:1b}]}] run function lobby:waiting/toggle_lock_1
execute if entity @e[tag=tool,scores={game_stage=0}] as @a[scores={toggle_ready=0}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:gray_dye",Count:1b}]}] run function lobby:waiting/toggle_lock_0
execute if entity @e[tag=tool,scores={game_stage=0}] as @a unless entity @s[scores={toggle_ready=0..}] run scoreboard players set @s toggle_ready 1
execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:waiting/toggle_lock_trigger 1t append

