# This function attempts to collect all the data necessary to generate the NPC.

# Clear the initial data
data remove storage castlewars:temp npc_macro.data

# Defining the default data of the macro
data modify storage castlewars:temp npc_macro.data.Pos set from entity @s Pos

# Get the Data from macro (all the customizable fields)
$data modify storage castlewars:temp npc_macro.data.CustomName set value $(Name)
$data modify storage castlewars:temp npc_macro.data.description set value $(description)
$data modify storage castlewars:temp npc_macro.data.hide_description set value $(hide_description)
# $data modify storage castlewars:temp npc_macro.data.Pos set value $(Pos)
data modify storage castlewars:temp npc_macro.data.equipment set from entity @s equipment
data modify storage castlewars:temp npc_macro.data.equipment.mainhand set from entity @s SelectedItem

tellraw @s Successfully
# Run the generate_helper function to generate the actual npc.
tag @s add npc_caller
function castlewars:generate/generate_kit_npc/generate_helper with storage castlewars:temp npc_macro
tag @s remove npc_caller
