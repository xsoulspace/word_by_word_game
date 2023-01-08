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
            Languages.ru:
                'Если у вас достаточно очков, вы можете удалить письмо. Каждая буква будет стоить несколько очков.',
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
            Languages.ru:
                'Вы можете ввести часть слова в это текстовое поле, чтобы объединить полное слово.',
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
            Languages.ru:
                'Здравствуй, путешественник или путешественники! \n\nВы хотите пройти обучение?',
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
            Languages.ru:
                'Ваша цель - достичь дальнего края ландшафта. \nВы один или с друзьями отвечаете за топливо для воздушного шара. \n\nВо время обучения воздушный шар не будет двигаться, чтобы вам было удобнее управлять им.',
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
            Languages.ru:
                'Если вы играете с друзьями - вы в одной команде, которая управляет одним воздушным шаром, поэтому каждый игрок будет играть по очереди.',
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
            Languages.ru: 'Это текущее имя игрока.',
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
            Languages.ru: 'Это текущие очки игрока.',
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
            Languages.ru:
                'Каждый ход игрока состоит из двух фаз. \n\n\nВ первой фазе вы должны ввести новое слово.',
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
            Languages.ru:
                'Если написанное слово не найдено, вы можете нажать кнопку Добавить в словарь, чтобы добавить это слово в словарь. \n\nБудьте осторожны с этим словом, так как оно будет сохранено и не может быть удалено.',
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
            Languages.en: 'If you stuck, you may try to use word suggestions.',
            Languages.ru:
                'Если вы застряли, вы можете попробовать использовать случайные слова.',
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
            Languages.ru:
                'Чтобы продолжить, введите свое первое слово в это текстовое поле.',
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
            Languages.ru:
                'За новое слово вы получите очки, которые будут добавлены к вашему счету и использованы в следующем этапе. \n\nДля продолжения нажми кнопку Применить.',
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
            Languages.ru:
                'Вторая фаза - Действия и эффекты.\n\nДействие - это то, что вы делаете. \n\nВыбери "Топливо", чтобы заправить воздушный шар.',
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
                'Effect is how much of the action will be applied.\n\nChoose any refueling effect - air balloon will receive points of fuel.',
            Languages.ru:
                'Эффект - это то, насколько сильно будет применено действие.\n\nВыберите любой эффект дозаправки - воздушный шар получит очки топлива.',
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
            Languages.ru:
                'Чтобы завершить ход для игрока, нажми "Завершить ход". \n\nБудьте внимательны: это действие завершит туториал и воздушный шар начнет двигаться. \n\n\nНевероятных приключений!',
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
