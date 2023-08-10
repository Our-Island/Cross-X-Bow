scoreboard players set @a[tag=toggle_ready_on] toggle_ready 1
team join ready @a[tag=toggle_ready_on]
tag @a[scores={toggle_ready=1}] remove toggle_ready_on
