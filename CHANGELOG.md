## Ideas & TODO

- Global highscore is:
- (+) word length \* level modifier (hardness of the level)
- (-) the score used by a player to decrease middle word part
- (-) to the player who landing | crashed the character.
- (+) character modifier (hardness of the character)

## Next

## 1 August 2023

- Fixed: player reloading, level reloading
- Added hitbox for player and completed logic for obstacles

## PRIVACY POLICY & TERMS AND CONDITIONS

Now docs available here:
https://docs.page/xsoulspace/word_by_word_game

## January 8th 2022

- Tutorial for mobile & desktop versions.

## December 20th 2022

- Simplified players selection to start a game.
- Simplified new profile player creation.
- Borderless window for native apps.

## December 18th 2022

- Added effects for an action - now you can choose how many effect points will be applied for selected action.
- Made different actions layouts for small and desktop widths.
- Fixed problem with localization - now it has option to choose between system and game localization.

## December 16th 2022

- refactored: all levels screen removed.
- refactored: home screen buttons position a little changed.
- refactored: logic for words and actions now devided into two.

## October 16th 2022

- Added score cost for word suggestion - and hopefully made it more playable.

What's next:

- Make hot air mechanics depends from the hot air (add temperature modifier).

- Gamify UI.
- Think about landscapes as per place of words meanings..
- Add Firebase or AppMetrica for crashlitics

## October 15th 2022

- Added Privacy Policy link.
- Added basic suggestion dialog

## October 14th 2022

- Added new ui for text fields and action buttons
- Fixed critical error with saves.

## October 12th 2022

- Added Credits dialog
- Added Icons for Black & White landscape and character
- Completed translation for previous game languages (English, Russian, Italian (very approximate))

## October 11th 2022

- New: restored an option to switch between languages.

## October 10th 2022

- Restored an option to add new word to local dictionary.
- Fixed mobile layout for level options screen.
- Fixed mobile layout for game.

## October 2th 2022

- Now character able to restore its position when is loaded.
- Fixed start again button with ability to restart level.
- Added focus changes for text fields.

## October 1th 2022

- test level with basic mountains
- sprite for character
- Added collision between player's character and the obstacle.
- Added end game dialog with two options - to landscapes and start again.
- Added ability to decrease the middle part when the player has enough score.
- Added highscore counter savable to the player.
- Added Win Level Dialog - now the player should be able to complete the level.
- Added count level highscore when the level is finished.
- Updated game player highscore from level player when the level is finished.
- Added visible player score in level controls.
- Added combined highscore of the player in the level options.
- Added Players & Highscore Screen

What's next:

- Save the position of the character and restore it.
- Reset navigation path when player is finished a level.

## September 28th 2022

- Linked world and world components states to follow the current level state.

## September 25th 2022

- Fixed game camera size.
- Linked character component fuel and global character state fuel. Added refuel machanics and it works!

What's next:

- Link world and world components follow the current game state (blocs).

## September 22th 2022

- Added Game Camera and now it follows the player's character.
- Basic character physics mechanics with ability to consume fuel, go up, keep a line, go down.
- Added the same background color for the all elements of the ui and game world.

## September 22th 2022

- Added ability to Save & Load the game: now it loads the game save during game start and when player press a button save in pause menu it saves the game.

What's next:

- Create player's character and ability to move.
- Create simple obstacles for level (vertical and horizontal)
- Create Game Camera and set it to follow the player's character.

## September 20th 2022

Today's update:

- Created a check mechanics for the word within already written words and Language dictionaries.
- Added notification if the word is written or not correct.

What's next:

- Save & Load the game state.

## September 18th 2022

Today's update:

- Added level state initialization and playing.
- Player turn switcher.
- Added Pause button to the level to call Pause Menu.
- Added ability to continue latest level from the Pause Menu.

What's next:

- Create a check mechanics for the word with already written words.

## September 17th-2 2022

Today's update:

- Added Chracter Model and Character Selector on Level Options Screen.
- Added Player Profile Creator (UI and simple logic).
- Added Player Profiles selector (UI and simple logic).
- Added ability to use Level Options to play a level.

What's next:

- Player turn switcher.
- Ui notifications when the word is already written or just incorrect.
- Create a check mechanics for the word with already written words.

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
