execute as @a[scores={toggle_ready=1}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:lime_dye",Count:1b}]}] run function lobby:waiting/toggle_lock_1
execute as @a[scores={toggle_ready=0}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:gray_dye",Count:1b}]}] run function lobby:waiting/toggle_lock_0
schedule function lobby:waiting/toggle_lock_trigger 1t append

