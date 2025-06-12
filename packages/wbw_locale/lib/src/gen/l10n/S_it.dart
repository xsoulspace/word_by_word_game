// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'S.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class SIt extends S {
  SIt([String locale = 'it']) : super(locale);

  @override
  String get finishGame => 'Gioco finito';

  @override
  String get nextPlayer => 'Prossimo giocatore';

  @override
  String wordIsNotCorrect(Object word) {
    return 'Non riusciamo a trovare la parola $word nel nostro dizionario! Prova un\'altra parola o aggiungila.';
  }

  @override
  String get wordAlreadyWritten => 'Questa parola è già scritta. Prova con un\'altra parola.';

  @override
  String get resetEnding => 'Reimposta fine';

  @override
  String get congratulationsYouPassedTheLandscape => 'Congratulazioni! Avete superato questo paesaggio!';

  @override
  String get congratulations => 'Congratulazioni!';

  @override
  String get maxHighscoreIs => 'Il punteggio massimo è ';

  @override
  String get continueGame => 'Continua ';

  @override
  String get play => 'Giocare a';

  @override
  String get name => 'Nome';

  @override
  String get send => 'Inviare';

  @override
  String get toLandscapes => 'Ai paesaggi';

  @override
  String get youHaveLandedInTheNowhere => 'Sei atterrato in mezzo al nulla..';

  @override
  String get profileCreator => 'Creatore di profili';

  @override
  String get returnToLandscapes => 'Ritorna ai paesaggi';

  @override
  String get about => 'Di';

  @override
  String get username => 'Nome utente';

  @override
  String get createProfile => 'Creare Profili';

  @override
  String get previousWord => 'Parola precedente';

  @override
  String get settings => 'Impostazioni';

  @override
  String get selectPlayers => 'Seleziona i giocatori';

  @override
  String get chooseYourCharacter => 'Scegli il tuo personaggio';

  @override
  String get chooseLandscape => 'Scegli un paesaggio';

  @override
  String get playersAndHighscore => 'Giocatori e punteggio';

  @override
  String get playersAndHighscoreYandex => 'Giocatori e punteggio';

  @override
  String get startNewGame => 'Avvio Rapido';

  @override
  String get startAgain => 'Ricomincia ';

  @override
  String get yourHighscore => 'Questa volta il tuo punteggio è';

  @override
  String get player => 'giocatore';

  @override
  String get lastword => 'Ultima parola: ';

  @override
  String get confirm => 'Confermare';

  @override
  String get applyAndEndTurn => 'Fine turno';

  @override
  String get hintAddBeginning => 'inizio';

  @override
  String get hintAddNewWord => 'aggiungi nuova parola';

  @override
  String get hintAddEnding => 'fine';

  @override
  String get addNewWord => 'aggiungi';

  @override
  String get newGame => 'Nuovo gioco';

  @override
  String get sendFeedback => 'Se hai un\'idea, miglioramenti o bug unisciti al server Discord.';

  @override
  String get back => 'Indietro';

  @override
  String get suggestedWord => 'Parola suggerita';

  @override
  String get tryAnotherWord => 'Prova un\'altra parola';

  @override
  String useCostKnowledgePoints(Object costOfWord) {
    return 'Utilizzare i punti di conoscenza: $costOfWord';
  }

  @override
  String get revealSuggestedWord => 'Rivela la parola suggerita?';

  @override
  String get ok => 'Bello';

  @override
  String get noWordsSuggestions => 'Non ci sono suggerimenti di parole :(';

  @override
  String get tryWithDifferentLetters => 'Provate con lettere diverse..';

  @override
  String get privacyPolicy => 'Politica sulla riservatezza';

  @override
  String get creatingGame => 'Ciao, sono Anton. Grazie per il tuo interesse per questo gioco. Spero ti piaccia:)';

  @override
  String get supportGame => 'Puoi supportare il gioco in https://boosty.to/arenukvern';

  @override
  String get thankYou => 'Grazie e buon gioco!';

  @override
  String get currentScore => 'punteggio';

  @override
  String get highscore => 'Punteggio più alto';

  @override
  String get lettersToRemove => 'lettere da rimuovere';

  @override
  String get players => 'Players ';

  @override
  String get menuLanguage => 'Lingua ';

  @override
  String get menuInfo => 'Info ';

  @override
  String get menuNewGame => 'Nuovo ';

  @override
  String get selectAction => 'Seleziona Azione';

  @override
  String get cookFood => 'Cucinare';

  @override
  String get refuelStorage => 'Rifornirsi';

  @override
  String get addToDictionary => 'Aggiungi al diz';

  @override
  String get hidePane => 'Nascondi riquadro';

  @override
  String get showPane => 'Mostra riquadro';

  @override
  String youDontHaveEnoughPointsToUnlockCharacter(int points) {
    return 'Non hai abbastanza ($points) per sbloccare questa lettera.';
  }

  @override
  String unblockCharacterForPoints(int points, String character) {
    return 'Sbloccare la lettera $character per $points punti?';
  }

  @override
  String get powerOfEnteredWord => 'potere della parola inserita';

  @override
  String get hideKeyboard => 'Nascondi tastiera';

  @override
  String get graphicsCreditsThanks => 'Crediti grafici e ringraziamenti:';

  @override
  String get showKeyboard => 'Mostra tastiera';

  @override
  String get suggestions => 'Suggerimenti';

  @override
  String get currentPlayerName => 'Nome del giocatore attuale';

  @override
  String get suggestWordButtonTooltip => 'Fare clic per ottenere una parola casuale in base alle lettere correnti.';

  @override
  String get mainMenuButtonTooltip => 'Fare clic per aprire il menu (i progressi correnti verranno salvati).';

  @override
  String get yourCurrentHighcoreTooltip => 'Il tuo record attuale.';

  @override
  String get youDontHaveEnoughPoints => 'Pallone non necessario per l\'approssimazione.';

  @override
  String get applyFuelOption => 'Convertire il punteggio in energia';

  @override
  String get createNewPlayerTooltip => 'Fare clic per creare il profilo per il nuovo giocatore.';

  @override
  String get createNewFirstPlayerTitle => 'Crea un profilo giocatore per iniziare una partita.';

  @override
  String get createNewPlayerTitle => 'Crea profilo per nuovo giocatore.';

  @override
  String get createNewPlayerBody => 'Potrai aggiungere il profilo di questo giocatore a qualsiasi nuova partita.';

  @override
  String get createPlayer => 'Crea giocatore';

  @override
  String get wind => 'Vento';

  @override
  String get weather => 'Meteorologico';

  @override
  String get windCalm => 'Calm';

  @override
  String get windLightAir => 'Aria leggera';

  @override
  String get windLightBreeze => 'Brezza leggera';

  @override
  String get windGentleBreeze => 'Brezza leggera';

  @override
  String get windModerateBreeze => 'Brezza moderata';

  @override
  String get windFreshBreeze => 'Brezza fresca';

  @override
  String get windStrongBreeze => 'Brezza forte';

  @override
  String get windHighWind => 'Vento forte';

  @override
  String get windGale => 'Burrasca';

  @override
  String get windSevereGale => 'Burrasca severa';

  @override
  String get windStorm => 'Tempesta';

  @override
  String get windViolentStorm => 'Tempesta violenta';

  @override
  String get windHurricane => 'Uragano';

  @override
  String get nextWeatherIn => 'Prossimo tempo in';

  @override
  String get power => 'Energia';

  @override
  String get yes => 'Si';

  @override
  String get no => 'No';

  @override
  String get enableTutorial => 'Utilizzare il tutorial';

  @override
  String get close => 'Chiudere';
}
