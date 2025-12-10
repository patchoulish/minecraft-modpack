[private]
default:
	@just --list --unsorted

# Refresh the modpack indices.
refresh:
	packwiz refresh
	
# Add a mod to the modpack.
add *args:
	packwiz modrinth install {{args}}
	
# Update a mod in the modpack.
update *args:
	packwiz update {{args}}
	
# Update all mods in the modpack.
update-all:
	packwiz update --all

# Export the modpack.
export:
	packwiz modrinth export
