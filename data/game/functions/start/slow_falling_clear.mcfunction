execute as @a at @s unless block ~ ~-1 ~ #common:noblock run effect clear @s slow_falling

schedule function game:start/slow_falling_clear 1t append