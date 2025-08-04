##
 # dummy_hit_registry.mcfunction
 # 
 #
 # Created by Silentcat
##
execute as @e[type=slime,tag=training_dummy_running] at @s if entity @e[type=armor_stand,tag=training_dummy_running,distance=..1.25] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] store result score @s slimeHealthPre run data get entity @s Health
execute as @e[type=slime,tag=training_dummy_running] at @s if entity @e[type=armor_stand,tag=training_dummy_running,distance=..1.25] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] store result score @s slimeHealthPost run attribute @s max_health get
execute as @e[type=slime,tag=training_dummy_running] at @s if entity @e[type=armor_stand,tag=training_dummy_running,distance=..1.25] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] run scoreboard players operation @s slimeHealthPost -= @s slimeHealthPre
execute as @e[type=slime,tag=training_dummy_running] at @s if entity @e[type=armor_stand,tag=training_dummy_running,distance=..1.25] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] store result storage training_dummy:health this.health int 1 run scoreboard players get @s slimeHealthPost
function training_dummy:hit/dummy_hit_display with storage training_dummy:health this
execute as @e[type=slime,tag=training_dummy_running] at @s if entity @e[type=armor_stand,tag=training_dummy_running,distance=..1.25] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] run data modify entity @s Health set value 1024