# Summon the Mannequin

summon mannequin ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,Health:1024f,pose:"standing",immovable:true,hide_description:false,CustomName:"Default",profile:"Krebah"}

# Merge the data

$execute at @a[tag=npc_caller] run data merge entity @e[distance=0..5,limit=1,type=mannequin] $(data)

tellraw @s "Successfully generated Mannequin"