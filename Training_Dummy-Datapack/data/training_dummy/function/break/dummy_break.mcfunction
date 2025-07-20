##
 # dummy_break.mcfunction
 # 
 #
 # Created by Silentcat
##
execute as @a[predicate=training_dummy:player_sneak] at @s if entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} run tag @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] add training_dummy_death

execute as @a[predicate=training_dummy:player_sneak] at @s unless entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} run tag @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] add training_dummy_death

execute as @a[predicate=training_dummy:player_sneak] at @s if entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} at @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
run summon item ~ ~0.3 ~ {Item:{id:target,count:1},PickupDelay:20}

execute as @a[predicate=training_dummy:player_sneak] at @s if entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} at @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
run summon item ~ ~0.3 ~ {Item:{id:hay_block,count:1},PickupDelay:20}

execute as @a[predicate=training_dummy:player_sneak] at @s if entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} at @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
as @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] run advancement grant @p[distance=..5] only silentcat_advancements:training_dummy/dummy_break break

execute as @a[predicate=training_dummy:player_sneak] at @s if entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} run tp @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] ~ -1000 ~

execute as @a[predicate=training_dummy:player_sneak] at @s unless entity @e[type=armor_stand,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] \
if data entity @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] {HurtTime:10s} run tp @e[type=slime,tag=training_dummy_running,limit=1,sort=nearest,distance=..3] ~ -1000 ~