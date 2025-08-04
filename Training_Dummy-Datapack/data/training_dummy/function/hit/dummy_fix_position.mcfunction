##
 # dummy_fix_position.mcfunction
 # 
 #
 # Created by Silentcat
##
execute as @e[type=slime,tag=training_dummy_running] at @s unless entity @e[type=armor_stand,tag=training_dummy_running,distance=0.1..1.5] run tag @s add training_dummy_death
execute as @e[type=slime,tag=training_dummy_running,tag=training_dummy_death] at @s unless entity @e[type=armor_stand,tag=training_dummy_running,distance=0.1..1.5] run tp @s ~ -1000 ~