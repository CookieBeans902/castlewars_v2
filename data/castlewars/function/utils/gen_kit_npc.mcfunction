# Summon an interaction entity AND npc at the current block position, with the custom data
# Format of custom data {Name:"",description:"",hide_description:[0b|1b],kit_name:""}
# Note that kit_name should be in all lowercase.

# Clear the initial data
data remove storage castlewars:temp temp.npc_macro.data

# Defining the default data of the macro
data modify storage castlewars:temp temp.npc_macro.data.Pos set from entity @s Pos

# Get the Data from macro (all the customizable fields)
$data modify storage castlewars:temp temp.npc_macro.data.CustomName set value $(Name)
$data modify storage castlewars:temp temp.npc_macro.data.description set value $(description)
$data modify storage castlewars:temp temp.npc_macro.data.hide_description set value $(hide_description)
$data modify storage castlewars:temp temp.npc_macro.data.Tags set value ["kit_npc","$(kit_name)"]
data modify storage castlewars:temp temp.npc_macro.data.equipment set from entity @s equipment
data modify storage castlewars:temp temp.npc_macro.data.equipment.mainhand set from entity @s SelectedItem

# Run the generate_helper function to generate the actual npc.
$summon interaction ~ ~ ~ {Silent:1b,width:1f,height:2f,response:1b,Tags:["kit_npc",$(kit_name)],data:{kit_name:"$(kit_name)"}}
function castlewars:utils/gen_npc with storage castlewars:temp temp.npc_macro