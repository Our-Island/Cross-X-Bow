execute as @a[scores={toggle_ready=1}] run item replace entity @s armor.head with leather_helmet 1
execute as @a[scores={toggle_ready=1}] run item replace entity @s armor.chest with leather_chestplate 1
execute as @a[scores={toggle_ready=1}] run item replace entity @s armor.legs with leather_leggings 1
execute as @a[scores={toggle_ready=1}] run item replace entity @s armor.feet with leather_boots 1
execute as @a[scores={toggle_ready=1,toggle_weapon=1}] run item replace entity @s hotbar.0 with bow 1
execute as @a[scores={toggle_ready=1,toggle_weapon=0}] run item replace entity @s hotbar.0 with crossbow 1
execute as @a[scores={toggle_ready=1,toggle_weapon=1}] run item replace entity @s hotbar.8 with arrow 3
execute as @a[scores={toggle_ready=1,toggle_weapon=0}] run item replace entity @s hotbar.8 with arrow 5