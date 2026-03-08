# Revoke the advancement from the player so he can continue collecting kits.
advancement revoke @s only castlewars:kit_select

# Now execute as any entity which has interaction data
execute as @e[distance=0..,tag=kit_npc,type=interaction] if data entity @s interaction run function castlewars:kit_distribution/assign_kit with entity @s data