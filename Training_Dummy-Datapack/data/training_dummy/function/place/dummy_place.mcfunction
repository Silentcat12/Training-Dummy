##
 # dummy_place.mcfunction
 # 
 #
 # Created by Silentcat
##

execute as @e[type=armor_stand, tag=training_dummy, tag=!training_dummy_start] at @s anchored feet positioned ~ ~0.7 ~ rotated ~ ~ unless entity @n[distance=..0.75,type=slime,tag=training_dummy] run summon slime ~ ~ ~ \
{Health:1024,Tags:["training_dummy","training_dummy_start"],NoAI:true,NoGravity:true,Size:0,attributes:[{id:scale,base:1.75},{id:max_health,base:1024}],DeathLootTable:"training_dummy:empty",active_effects:[{id:invisibility,duration:-1,show_particles:false},{id:"water_breathing",duration:-1,show_particles:false},{id:"fire_resistance",duration:-1,show_particles:false}]}
tag @e[type=armor_stand, tag=training_dummy, tag=!training_dummy_start] add training_dummy_start
execute as @e[type=armor_stand, tag=training_dummy_start] at @s rotated ~ ~ if entity @n[distance=..0.9,type=slime,tag=training_dummy_start] run tp @n[distance=..0.9,type=slime,tag=training_dummy_start] ~ ~0.7 ~ ~ ~
execute as @e[type=armor_stand, tag=training_dummy_start] at @s rotated ~ ~ if entity @n[distance=..0.9,type=slime,tag=training_dummy_start] run advancement grant @p[distance=..10] only silentcat_advancements:training_dummy/dummy_placed placed
tag @e[type=armor_stand, tag=training_dummy_start] add training_dummy_running
tag @e[type=slime, tag=training_dummy_start] add training_dummy_running
tag @e[type=armor_stand, tag=training_dummy_start] remove training_dummy_start
tag @e[type=slime, tag=training_dummy_start] remove training_dummy_start