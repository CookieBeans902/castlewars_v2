# Give the kit with the appropriate name.
$execute on target run function castlewars:kits/$(kit_name)

# #Remove the tag so other players can now interact.
data remove entity @s interaction