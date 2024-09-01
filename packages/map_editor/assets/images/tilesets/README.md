to create tileset images (which are for mobile web app), use save images button in map editor - it will save all selections from tilesets as images

# Preset Data

Preset data describes how to find tileset files and its structure

## Important

All common images should be placed in assets/images folder

## Graphics property

- path - is set of paths to static files

### type - directional

means that files are named according to the following rules:
H A B
G X C
F E D
where x is tile, and other are directions from the tile.

---- below is not relevant ----

- "use_when_not_filled" - When the array is empty, the tile name should apply to all cases when the selected directions (tiles) are not filled. For example, ["A", "B", "H"] means that if there are no tiles in A, B, H, or any combination of them, then the tile should apply

- "use_when_filled" - When the array is not empty, the tile name should apply to all cases when the selected letters are filled. For example, ["A", "B", "H"] means that if there are any tiles in A, B, or H, then the tile should apply.
- animated (bool) - means that path should be checked in case if it is a folder with animation

### type character

means that the all tiles should be grouped according to its behaviour.

idle
idle_left
idle_right
fly_left
fly_right
move_right
move_left
attack
attack_left
attack_right

## ID for objects

- id should be unique for each object
- id should be the same as file name, for example:
  id `building_tent` will became `object__building_tent__idle.png` in tilesets
