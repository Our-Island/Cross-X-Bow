#lobby与war两个team的删除与添加
#用于解决玩家进入游戏时名字有颜色的问题
team remove lobby
team add lobby {"text":"大厅成员","color":"green"}
team modify lobby friendlyFire true
team modify lobby nametagVisibility always
team join lobby @a[scores={team=0}]

team remove war
team add war {"text":"战斗成员","color":"red"}
team modify war friendlyFire true
team modify war nametagVisibility never
team join war @a[scores={team=1}]

team remove spectator
team add spectator {"text":"旁观者","color":"gray"}
team modify spectator friendlyFire false
team modify spectator nametagVisibility always
team join spectator @a[scores={team=2}]

schedule function lobby:team_delete_add 1s append