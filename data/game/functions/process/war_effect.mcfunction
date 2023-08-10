#全体玩家药水效果
execute if entity @e[tag=tool,scores={stage=1}] run effect give @a[team=war] saturation infinite 0 true

execute if entity @e[tag=tool,scores={stage=1}] run schedule function game:process/war_effect 1t append