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
        gamePreEffects: [],
        gamePostEffects: [],
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
        gamePreEffects: [],
        gamePostEffects: [],
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
        gamePreEffects: [],
        gamePostEffects: [],
        uiItem: TutorialUiItem.gameFuelIndicator,
      ),
    ],
    TutorialCollectionsName.levelIntroduction: [
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Hello Traveller or Travellers! Would you like to start tutorial?',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [
          TutorialGameEffectModel(
            name: TutorialGameEffectName.pauseGame,
          )
        ],
        gamePostEffects: [],
        uiItem: TutorialUiItem.enterWordPhaseFrame,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Your goal is to reach fly across the landscape. You are alone or with your friends is responsible for the aircarft fuel. During the tutorial the balloon will not move to get comfortable with controls.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [
          TutorialGameEffectModel(
            name: TutorialGameEffectName.pauseGame,
          )
        ],
        gamePostEffects: [],
        uiItem: TutorialUiItem.enterWordPhaseFrame,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If you are playing with the friends - you are in one team, which controls one aircraft, so every player will play after another.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        uiItem: TutorialUiItem.yourNameLabel,
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
        gamePreEffects: [],
        gamePostEffects: [],
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
        gamePreEffects: [],
        gamePostEffects: [],
        uiItem: TutorialUiItem.yourScoreLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.onClickAnywhere],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Every player turn consists from two pahses. First phase is to enter new word.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
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
        gamePreEffects: [],
        gamePostEffects: [],
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
        gamePreEffects: [],
        gamePostEffects: [],
        uiItem: TutorialUiItem.suggestWordButton,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onEdit,
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To continue, enter your first word in this text field.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
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
                'You will earn points for the word which will be added to your score and used in the next phase. To continue click Confirm Word button.\n',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
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
                'The second phase - Actions & Effects. Action is something that you do. Choose refueling to refuel Balloon.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
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
                'Effect is how much of the action will be applied. Choose any refueling effect - air balloon will receive 200 points of fuel.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
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
                'To end turn for player click Apply & End Turn Button. \n\nBe aware: this action will end tutorial and unfreeze the Balloon. \nGood Luck in your adventures!',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [
          TutorialGameEffectModel(name: TutorialGameEffectName.resumeGame)
        ],
        uiItem: TutorialUiItem.applyAndEndTurnButton,
      ),
    ],
  },
);
