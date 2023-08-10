spreadplayers 0 0 50 150 true @a[scores={team=1}]
effect give @a[scores={team=1}] slow_falling 30 0 true
effect give @a[scores={team=1}] resistance 30 255 true
schedule function game:start/slow_falling_clear 4s replace