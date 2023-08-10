kill @e[type=item]
kill @e[type=arrow]
kill @e[type=spectral_arrow]
schedule clear game:end/celebration_1
schedule clear game:end/celebration_2
schedule clear game:end/celebration_3
schedule clear game:end/celebration_4
schedule clear game:end/celebration_5
execute as @a run function common:refresh
scoreboard players set @e[tag=tool] game_stage 0
tp @a 0 69.3 0
scoreboard players set @a team 0
gamemode adventure @a
function lobby:lobby_effect
function lobby:waiting/bossbar
function lobby:waiting/need_number
function lobby:waiting/ready_number_trigger
function lobby:waiting/toggle_lock_trigger
function game:start/trigger_countdown