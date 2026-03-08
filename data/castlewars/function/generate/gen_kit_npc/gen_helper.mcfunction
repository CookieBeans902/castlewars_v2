# Summon the Mannequin

summon mannequin ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,Health:1024f,pose:"standing",immovable:true,hide_description:false,CustomName:"Default",profile:"Steve",Tags:["kit_npc"]}

# Merge the data

$execute at @s run data merge entity @e[limit=1,distance=0..,sort=nearest,type=mannequin] $(data)

tellraw @s "Successfully generated Mannequin"