import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/GameNotification.dart';
import 'package:word_by_word_game/constants/app_constraints.dart';
import 'package:word_by_word_game/constants/game_notification_statuses.dart';
import 'package:word_by_word_game/localizations/main_localizations.dart';
import 'package:word_by_word_game/models/LocalDictionaryModel.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/shared_utils_models/locale_model.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';

class NotificationsWidget extends StatefulWidget {
  final GameNotification gameNotification;
  NotificationsWidget({required this.gameNotification});
  @override
  _NotificationsWidgetState createState() =>
      _NotificationsWidgetState(gameNotification: this.gameNotification);
}

class _NotificationsWidgetState extends State<NotificationsWidget>
    with SingleTickerProviderStateMixin {
  final GameNotification gameNotification;
  int _counter = 0;

  _NotificationsWidgetState({required this.gameNotification});
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

  Color _getColor({required GameNotificationStatuses status}) {
    switch (status) {
      case GameNotificationStatuses.done:
        return Colors.greenAccent[100];
      case GameNotificationStatuses.error:
        return Colors.deepOrange[100];
      case GameNotificationStatuses.warn:
        return Colors.amber[100];
      default:
        return Colors.transparent;
    }
  }

  _clearNotification() {
    var notificationsModel =
        Provider.of<NotificationsModel>(context, listen: false);
    _animationController
        .reverse()
        .then((value) => notificationsModel.gameNotification = null);
  }

  _addNewWordToDictionary({required String newWord}) async {
    var localDictionaryModel =
        Provider.of<LocalDictionaryModel>(context, listen: false);
    localDictionaryModel.addWord(newWord);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    await storageModel.saveLocalDictionary();
  }

  bool _isNotificationExists({required GameNotification gameNotification}) {
    return gameNotification != null;
  }

  @override
  Widget build(BuildContext context) {
    var notificationsModel = Provider.of<NotificationsModel>(context);
    var isNotificationExists = _isNotificationExists(
        gameNotification: notificationsModel.gameNotification);
    var _hasNewWord = isNotificationExists &&
        notificationsModel.gameNotification.newWord != null;
    var size = MediaQuery.of(context).size;
    var notifyStatus = isNotificationExists
        ? notificationsModel.gameNotification.status
        : null;
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
            color: isNotificationExists
                ? _getColor(status: notifyStatus)
                : Colors.transparent,
            child: isNotificationExists
                ? (AppConstraints.isMedium(size.width) ||
                            AppConstraints.isMobile(size.width)) &&
                        _hasNewWord
                    ? Column(
                        children: [
                          _notificationText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _addWordToDictionaryButton(
                                  isVisible: _hasNewWord),
                              _closeButton()
                            ],
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Flexible(child: _notificationText()),
                            _addWordToDictionaryButton(isVisible: _hasNewWord),
                            _closeButton()
                          ])
                : null,
          ),
        ),
      ),
      position: _offsetPositionAnimation,
    );
  }

  Widget _notificationText() {
    var notificationsModel = Provider.of<NotificationsModel>(context);
    return Consumer<LocaleModel>(
        builder: (context, localeModel, widget) => Text(notificationsModel
            .gameNotification.localName
            .getName(localeModel.locale)));
  }

  Widget _addWordToDictionaryButton({required bool isVisible}) {
    var notificationsModel = Provider.of<NotificationsModel>(context);
    return Visibility(
      visible: isVisible,
      child: FlatButton(
          height: 50,
          child: Text(MainLocalizations.of(context).addToDictionary),
          onPressed: () {
            _addNewWordToDictionary(
                newWord: notificationsModel.gameNotification.newWord);
            _clearNotification();
          }),
    );
  }

  Widget _closeButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          borderRadius: BorderRadius.circular(24),
          splashColor: Colors.grey.withOpacity(0.4),
          hoverColor: Colors.grey.withOpacity(0.05),
          focusColor: Colors.grey.withOpacity(0.1),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Icon(
              Icons.close,
              size: 24.0,
              color: Colors.grey[800],
            ),
          ),
          onTap: () => _clearNotification()),
    );
  }
}
