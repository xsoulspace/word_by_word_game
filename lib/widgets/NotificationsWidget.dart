import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/constants/GameNotificationStatuses.dart';
import 'package:word_by_word_game/entities/GameNotification.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/LocalDictionaryModel.dart';
import 'package:word_by_word_game/models/LocaleModel.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';

class NotificationsWidget extends StatefulWidget {
  final GameNotification gameNotification;
  NotificationsWidget({@required this.gameNotification});
  @override
  _NotificationsWidgetState createState() =>
      _NotificationsWidgetState(gameNotification: this.gameNotification);
}

class _NotificationsWidgetState extends State<NotificationsWidget>
    with SingleTickerProviderStateMixin {
  final GameNotification gameNotification;
  int _counter = 0;

  _NotificationsWidgetState({@required this.gameNotification});
  @override
  didUpdateWidget(NotificationsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    NotificationsWidget newWidget = widget;
    if (newWidget.gameNotification != null &&
        newWidget.gameNotification.localName !=
            (oldWidget.gameNotification != null
                ? oldWidget.gameNotification.localName
                : '')) {
      _animationController.reset();
      _animationController.forward();
    } else {
      _animationController.reset();
    }
  }

  AnimationController _animationController;
  Animation<Offset> _offsetPositionAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetPositionAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  disposeNotification() {
    var notificationsModel =
        Provider.of<NotificationsModel>(context, listen: false);
    _animationController.reset();
    notificationsModel.gameNotification = null;
  }

  Color _getColor(GameNotificationStatuses status) {
    switch (status) {
      case GameNotificationStatuses.done:
        return Colors.greenAccent[100];
      case GameNotificationStatuses.error:
        return Colors.deepOrange[100];
      case GameNotificationStatuses.warn:
        return Colors.amber[100];
    }
    return Colors.transparent;
  }

  _clearNotification() {
    var notificationsModel =
        Provider.of<NotificationsModel>(context, listen: false);
    _animationController
        .reverse()
        .then((value) => notificationsModel.gameNotification = null);
  }

  _addNewWordToDictionary({@required String newWord}) async {
    var localDictionaryModel =
        Provider.of<LocalDictionaryModel>(context, listen: false);
    localDictionaryModel.addWord(newWord);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    await storageModel.saveLocalDictionary();
  }

  @override
  Widget build(BuildContext context) {
    var notificationsModel = Provider.of<NotificationsModel>(context);
    return SlideTransition(
      child: Material(
        color: Colors.transparent,
        child: Dismissible(
          key: ValueKey(_counter),
          onDismissed: (DismissDirection direction) {
            setState(() {
              _counter += direction == DismissDirection.endToStart ? 1 : -1;
              disposeNotification();
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            color: notificationsModel.gameNotification != null
                ? _getColor(notificationsModel.gameNotification.status)
                : Colors.transparent,
            child: notificationsModel.gameNotification != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Flexible(
                          child: Consumer<LocaleModel>(
                              builder: (context, localeModel, widget) => Text(
                                  notificationsModel.gameNotification.localName
                                      .getName(localeModel.locale))),
                        ),
                        Visibility(
                          visible:
                              notificationsModel.gameNotification != null &&
                                  notificationsModel.gameNotification.newWord !=
                                      null,
                          child: FlatButton(
                              child: Text(MainLocalizations.of(context)
                                  .addToDictionary),
                              onPressed: () {
                                _addNewWordToDictionary(
                                    newWord: notificationsModel
                                        .gameNotification.newWord);
                                _clearNotification();
                              }),
                        ),
                        IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => _clearNotification())
                      ])
                : null,
          ),
        ),
      ),
      position: _offsetPositionAnimation,
    );
  }
}
