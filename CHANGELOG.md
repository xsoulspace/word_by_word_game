## September 18th 2022

TODO:

- Add character class.
- Add an option to add several players simultaneously.

## September 17th 2022

Today's update:
- Added decrease mechanics for the word buttons.
- Added All Levels Screen with an option to choose a level.
- Added Basic Level Options Screen with an option to choose player character.

What's next:
- Add an option to add several players simultaneously.
- Ui notifications when the word is already written or just incorrect.
- Create a check mechanics for the word with already written words.
- Player turn switcher.


## September 15th 2022

- Fix a bug with middle word part update.
- Added basic mechancis to consume fuel over the time.
- Added basic Fuel Mechanics with an option to refuel storage by sending a new word.
- Added basic Score Mechanics to convert the word to the score and then convert it to the fuel.

What's next:
- Ui notifications when the word is already written or just incorrect.
- Create a check mechanics for the word with already written words.
- Player turn switcher.
- Decrease the middle part from left, and from right sides.

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
