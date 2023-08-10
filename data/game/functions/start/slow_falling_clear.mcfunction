execute as @a[nbt={ActiveEffects:[{Id:28b}]}] at @s unless block ~ ~-1 ~ #common:noblock run effect clear @s slow_falling

schedule function game:start/slow_falling_clear 1t append
execute unless entity @a[nbt={ActiveEffects:[{Id:28b}]}] run schedule clear game:start/slow_falling_clear