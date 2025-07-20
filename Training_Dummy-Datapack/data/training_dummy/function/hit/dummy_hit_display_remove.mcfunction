##
 # dummy_hit_display_remove.mcfunction
 # 
 #
 # Created by Silentcat
##
execute as @e[type=text_display,tag=training_dummy_tick] run scoreboard players add @s slimeHealthTick 1
execute as @e[type=text_display,tag=training_dummy_tick] if score @s slimeHealthTick matches 20 run kill @s
execute as @e[type=text_display,tag=training_dummy_tick] if score @s slimeHealthTick matches 21 run kill @s
execute as @e[type=text_display,tag=training_dummy_tick] if score @s slimeHealthTick matches 22 run kill @s