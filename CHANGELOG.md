## September 15th 2022

- Fix a bug with middle word part update.

What's next:

- create a check mechanics for the word with already written words.


## September 13th 2022

- Added basic player switch logic.
- Basic ability to load game and save game (Models structure) is completed.
- Basic ability to load game state, level state and player state are completed.
- Full word combination logic and saving to the level state is completed.
- Added SendActionButton and visible current player id to the game controls layer.

What's next:
- Fix a bug with middle word part update.
- Create countdown mechanics.
- Reset countdown by sending the new word.
- Player turn switcher.


Game states:
Empty state - no players, no levels, no active game
Loading state - no players, no levels, active game
Live state - active game, players, levels.

Levels states:
Empty state - no graphics, no resources, no players, no active level state
Loading state - active level state, no graphics, no resources, no players
Live state - active level, players, graphics, resources 


## September 11th 2022

- basic layout for the game divided to the user controls area and the game image.
