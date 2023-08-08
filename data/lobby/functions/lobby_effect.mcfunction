#给予lobby玩家药水效果
effect give @a[team=lobby] resistance 2 5 true
effect give @a[team=lobby] saturation infinite 0 true
effect give @a[team=lobby] instant_health 1 5 true

schedule function lobby:lobby_effect 1s append