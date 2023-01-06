// ignore_for_file: lines_longer_than_80_chars

part of 'tutorial_bloc.dart';

const _tutorialData = TutorialCollectionsDataModel(
  events: {
    TutorialCollectionsName.archive: [
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If you have enough points you can remove letter. Every letter will cost some points.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.removeLetterButton,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'You can enter a part of word in this text field to combine full word.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.enterWordLeft,
      ),
      TutorialEventModel(
        completeActions: [],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: '',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.gameFuelIndicator,
      ),
    ],
    TutorialCollectionsName.levelIntroduction: [
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Hello Traveller or Travellers! To Help you started, the tutorial you will get freezed balloon. So, first about how is playing.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.enterWordPhaseFrame,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player name.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.yourNameLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player score.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.yourScoreLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'First phase of a player turn is about entering new word.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.enterWordPhaseFrame,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If written word is not found, you can click Add To Dictionary button to add this word to dictionary. Be careful with the word, as it will be saved and cannot be removed.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.addToDictionaryButton,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'If you stuck, you may try word suggestions.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.suggestWordButton,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onEdit,
            uiItem: TutorialUiItem.enterWordRight,
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To start a game enter your first word in this text field.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.enterWordRight,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.confirmWordButton,
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To end the word entering phase click Confirm Word button.\nYou will earn points for the word which will be added to your score and used in the next phase',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.confirmWordButton,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.refuelActionButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Action is something that you do. Choose refueling to refuel Balloon.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.selectActionFrame,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.effectButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Effect is how much of the action will be applied. Choose refueling effect 200 - air balloon will receive 200 points of fuel.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [],
        uiItem: TutorialUiItem.selectEffectFrame,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.applyAndEndTurnButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To start new turn for another player (if he exists), or new turn for your player click Apply & End Turn Button. \n\nBe aware: this action will end tutorial and unfreeze the Balloon. \nGood Luck in your adventure!',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gameEffects: [
          TutorialGameEffect.resumeGame,
        ],
        uiItem: TutorialUiItem.applyAndEndTurnButton,
      ),
    ],
  },
);
