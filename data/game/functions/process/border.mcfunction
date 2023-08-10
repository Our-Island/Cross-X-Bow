execute unless entity @e[tag=border_center,type=marker] run summon minecraft:marker 0 69 0 {Tags:["border_center"]}
schedule function game:process/border 1t append