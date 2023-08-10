execute as @a[gamemode=spectator] unless entity @s[scores={team=2}] run gamemode adventure @s

schedule function common:lock_gamemode 1t