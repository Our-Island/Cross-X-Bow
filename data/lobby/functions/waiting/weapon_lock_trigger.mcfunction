execute if entity @e[tag=tool,scores={game_stage=0}] as @a[scores={toggle_weapon=1,team=0}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:bow",Count:1b}]}] run function lobby:waiting/weapon_lock_1
execute if entity @e[tag=tool,scores={game_stage=0}] as @a[scores={toggle_weapon=0,team=0}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:crossbow",Count:1b}]}] run function lobby:waiting/weapon_lock_0
execute if entity @e[tag=tool,scores={game_stage=0}] as @a unless entity @s[scores={toggle_weapon=0..}] run scoreboard players set @s toggle_weapon 1

execute if entity @e[tag=tool,scores={game_stage=0}] run schedule function lobby:waiting/weapon_lock_trigger 1t append

