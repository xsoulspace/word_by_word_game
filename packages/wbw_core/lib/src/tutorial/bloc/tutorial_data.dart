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
        anchorUiItem: TutorialUiItem.removeLetterButton,
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
        anchorUiItem: TutorialUiItem.enterWordLeft,
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
        anchorUiItem: TutorialUiItem.gameFuelIndicator,
      ),
    ],
    TutorialCollectionsName.levelIntroduction: [
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onBoolOptionSelected,
            uiItem: TutorialUiItem.tutorialBoolDialog,
            boolConsquenses: {
              PrimitiveBool.kFalse: [
                TutorialGameEffectModel(
                  name: TutorialGameEffectName.completeCurrentTutorial,
                ),
                TutorialGameEffectModel(
                  name: TutorialGameEffectName.resumeGame,
                ),
              ]
            },
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Hello Traveller or Travellers! \n\nWould you like to start tutorial?',
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
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Your goal is to reach far end of landscape. \nYou are alone or with your friends is responsible for the aircarft fuel. \n\nDuring the tutorial the balloon will not move to get you comfortable with controls.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
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
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player name.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.yourNameLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player score.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.yourScoreLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Every player turn consists from two pahses. \n\nFirst phase is to enter new word.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If written word is not found, you can click Add To Dictionary to add this word to dictionary. \n\nBe careful with the word, as it will be saved and cannot be removed.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.addToDictionaryButton,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'If you stuck, you may try word suggestions.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.suggestWordButton,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.idle,
            uiItem: TutorialUiItem.anchoredIdleDialog,
            isCompleted: true,
          ),
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onEdit,
            uiItem: TutorialUiItem.enterWordRight,
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
        anchorUiItem: TutorialUiItem.enterWordRight,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.idle,
            uiItem: TutorialUiItem.anchoredIdleDialog,
            isCompleted: true,
          ),
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.confirmWordButton,
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'You will earn points for the word which will be added to your score and used in the next phase. \n\nTo continue click Confirm Word.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.confirmWordButton,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.idle,
            uiItem: TutorialUiItem.anchoredIdleDialog,
            isCompleted: true,
          ),
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.refuelActionButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'The second phase - Actions & Effects.\n\nAction is something that you do. \n\nChoose Refuel to refuel Balloon.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.selectActionFrame,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.idle,
            uiItem: TutorialUiItem.anchoredIdleDialog,
            isCompleted: true,
          ),
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.effectButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Effect is how much of the action will be applied. \n\n Choose any refueling effect - air balloon will receive points of fuel.',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [],
        anchorUiItem: TutorialUiItem.selectEffectFrame,
      ),
      TutorialEventModel(
        completeActions: [
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.idle,
            uiItem: TutorialUiItem.anchoredIdleDialog,
            isCompleted: true,
          ),
          TutorialUiActionEventModel(
            action: TutorialCompleteAction.onClick,
            uiItem: TutorialUiItem.applyAndEndTurnButton,
          )
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To end turn for player click Apply & End Turn. \n\nBe aware: this action will end tutorial and the Balloon will start moving. \n\nGood Luck in your adventures!',
            Languages.ru: '',
            Languages.it: '',
          },
        ),
        gamePreEffects: [],
        gamePostEffects: [
          TutorialGameEffectModel(name: TutorialGameEffectName.resumeGame)
        ],
        anchorUiItem: TutorialUiItem.applyAndEndTurnButton,
      ),
    ],
  },
);
