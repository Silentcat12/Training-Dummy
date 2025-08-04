##
 # dummy_hit_display.mcfunction
 # 
 #
 # Created by Silentcat
##
execute as @e[type=slime,tag=training_dummy_running] at @s anchored eyes facing entity @p eyes if entity @e[type=armor_stand,tag=training_dummy_running,distance=..0.75] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] if entity @n[type=text_display,tag=training_dummy_tick] run kill @n[type=text_display,tag=training_dummy_tick]
execute as @e[type=slime,tag=training_dummy_running] at @s anchored eyes facing entity @p eyes if entity @e[type=armor_stand,tag=training_dummy_running,distance=..0.75] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] run summon text_display ^0.4 ^0.4 ^0.5 {Tags:["training_dummy_tick"],text:{text:"-",extra:[{"storage":"training_dummy:health","nbt":"this.health"}]},background:0}
execute as @e[type=slime,tag=training_dummy_running] at @s anchored eyes facing entity @p eyes if entity @e[type=armor_stand,tag=training_dummy_running,distance=..0.75] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] run tp @n[tag=training_dummy_tick] ^0.4 ^0.4 ^0.5 facing entity @p eyes 
execute as @e[type=slime,tag=training_dummy_running] at @s anchored eyes if entity @e[type=armor_stand,tag=training_dummy_running,distance=..0.75] if data entity @s {HurtTime:10s} unless entity @a[predicate=training_dummy:player_sneak] run scoreboard players add @n[tag=training_dummy_tick] slimeHealthTick 1
