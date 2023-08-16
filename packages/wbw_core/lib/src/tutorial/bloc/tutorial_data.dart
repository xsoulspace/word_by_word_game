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
            Languages.it:
                'Se si hanno abbastanza punti, si possono rimuovere le lettere. Ogni lettera costerà alcuni punti.',
          },
        ),
        anchorUiItem: TutorialUiItem.removeLetterButton,
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
              ],
            },
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Hello Traveller or Travellers! \n\nWould you like to start tutorial?',
            Languages.ru:
                'Здравствуй, путешественник или путешественники! \n\nВы хотите пройти обучение?',
            Languages.it:
                'Ciao Viaggiatore o Viaggiatrici! \n\nVorresti iniziare il tutorial?',
          },
        ),
        gamePreEffects: [
          TutorialGameEffectModel(
            name: TutorialGameEffectName.pauseGame,
          ),
        ],
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Your goal is to reach far end of landscape. \nYou are alone or with your friends is responsible for the aircarft fuel. \n\nDuring the tutorial the balloon will not move to get you comfortable with controls.',
            Languages.ru:
                'Ваша цель - достичь дальнего края ландшафта. \nВы один или с друзьями отвечаете за топливо для воздушного шара. \n\nВо время обучения воздушный шар не будет двигаться, чтобы вам было удобнее управлять им.',
            Languages.it:
                "Il vostro obiettivo è raggiungere l'estremità del paesaggio. \nSiete da soli o con i vostri amici e siete responsabili del carburante dell'aerostato. \n\nDurante l'esercitazione il pallone non si muoverà per farvi prendere confidenza con i comandi.",
          },
        ),
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If you are playing with the friends - you are in one team, which controls one aircraft, so every player will play after another.',
            Languages.ru:
                'Если вы играете с друзьями - вы в одной команде, которая управляет одним воздушным шаром, поэтому каждый игрок будет играть по очереди.',
            Languages.it:
                "Se si gioca con gli amici, si è in una squadra che controlla un aereo, quindi ogni giocatore giocherà dopo l'altro.",
          },
        ),
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player name.',
            Languages.ru: 'Это текущее имя игрока.',
            Languages.it: 'Questo è il nome del giocatore attuale.',
          },
        ),
        anchorUiItem: TutorialUiItem.yourNameLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'This is current player score.',
            Languages.ru: 'Это текущие очки игрока.',
            Languages.it: 'Questo è il punteggio attuale del giocatore.',
          },
        ),
        anchorUiItem: TutorialUiItem.yourScoreLabel,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.tutorialOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'Every player turn consists from two pahses. \n\n\nFirst phase is to enter new word.',
            Languages.ru:
                'Каждый ход игрока состоит из двух фаз. \n\n\nВ первой фазе вы должны ввести новое слово.',
            Languages.it:
                "Ogni turno di gioco è composto da due fasi. \n\n\nLa prima fase consiste nell'inserire una nuova parola.",
          },
        ),
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'If written word is not found, you can click Add To Dictionary to add this word to dictionary. \n\nBe careful with the word, as it will be saved and cannot be removed.',
            Languages.ru:
                'Если написанное слово не найдено, вы можете нажать кнопку Добавить в словарь, чтобы добавить это слово в словарь. \n\nБудьте осторожны с этим словом, так как оно будет сохранено и не может быть удалено.',
            Languages.it:
                'Se la parola scritta non viene trovata, è possibile fare clic su Aggiungi al dizionario per aggiungere questa parola al dizionario. \n\nFare attenzione alla parola, perché verrà salvata e non potrà essere rimossa.',
          },
        ),
        anchorUiItem: TutorialUiItem.addToDictionaryButton,
      ),
      TutorialEventModel(
        completeActions: [TutorialUiActionEventModel.anchoredOkDialog],
        localizedMap: LocalizedMap(
          value: {
            Languages.en: 'If you stuck, you may try to use word suggestions.',
            Languages.ru:
                'Если вы застряли, вы можете попробовать использовать случайные слова.',
            Languages.it:
                'Se siete bloccati, potete provare a usare i suggerimenti di parole.',
          },
        ),
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
            // Languages.en:
            //         'You can enter a part of word in this text field to create full word.',
            //     Languages.ru:
            //         'Вы можете ввести часть слова в это текстовое поле, чтобы создать полное слово.',
            //     Languages.it:
            //         'È possibile inserire una parte della parola in questo campo di testo per creare una parola completa.',
            Languages.en:
                'To continue, enter your first word in this text field.',
            Languages.ru:
                'Чтобы продолжить, введите свое первое слово в это текстовое поле.',
            Languages.it:
                'Per continuare, inserire la prima parola in questo campo di testo.',
          },
        ),
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
            Languages.it:
                'Si guadagneranno punti per la parola, che verranno aggiunti al punteggio e utilizzati nella fase successiva. \n\nPer continuare, fare clic su Conferma parola.',
          },
        ),
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
            uiItem: TutorialUiItem.selectRefuelOption,
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'The second phase - Actions & Effects.\n\nAction is something that you do. \n\nChoose Refuel to refuel Balloon.',
            Languages.ru:
                'Вторая фаза - Действия и эффекты.\n\nДействие - это то, что вы делаете. \n\nВыбери "Топливо", чтобы заправить воздушный шар.',
            Languages.it:
                'La seconda fase - Azioni ed effetti.\n\nAzione è qualcosa che si fa. \n\nScegliere Rifornimento per rifornire il pallone.',
          },
        ),
        anchorUiItem: TutorialUiItem.selectRefuelOption,
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
          ),
        ],
        localizedMap: LocalizedMap(
          value: {
            Languages.en:
                'To end turn for player click Apply & End Turn. \n\nBe aware: this action will end tutorial and the Balloon will start moving. \n\n\nGood Luck in your adventures!',
            Languages.ru:
                'Чтобы завершить ход для игрока, нажми "Завершить ход". \n\nБудьте внимательны: это действие завершит туториал и воздушный шар начнет двигаться. \n\n\nНевероятных приключений!',
            Languages.it:
                'Per terminare il turno del giocatore, fare clic su Applica e termina il turno. \n\nAttenzione: questa azione terminerà il tutorial e il palloncino inizierà a muoversi. \n\n\nBuona fortuna nelle vostre avventure!',
          },
        ),
        gamePostEffects: [
          TutorialGameEffectModel(name: TutorialGameEffectName.resumeGame),
        ],
        anchorUiItem: TutorialUiItem.applyAndEndTurnButton,
      ),
    ],
  },
);
