# Coordinate systems (WIP & Thoughts):

## Flutter & Flame & Canvas (Screen)

top-left origin is (0, 0)

right = +x
left = -x

down = +y
up = -y

## Custom

## Conversions:

Vectors:
Screen <-> Viewport <-> Map (Distance to Map Origin) <-> Tile (Cell (x,y)) <-> Local Object (Distance to Tile Local Origin)

---

Screen coordinates which can be rendered on any Flutter & Flame widget, which have origin (0, 0) in top left corner of screen.
`ScreenVector2;`

Viewport coordinates which are distance to

Map coordinates as distance to Map Origin.
`MapVector2;`

tile count coordinates in integer.
toTileCell();

has distance from top left corner (Origin) of tile.
toTileLocalOriginVector();
