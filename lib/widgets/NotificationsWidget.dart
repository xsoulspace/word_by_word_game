import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';

class NotificationsWidget extends StatefulWidget {
  final gameNotification;
  NotificationsWidget({@required this.gameNotification});
  @override
  _NotificationsWidgetState createState() =>
      _NotificationsWidgetState(gameNotification: this.gameNotification);
}

class _NotificationsWidgetState extends State<NotificationsWidget>
    with SingleTickerProviderStateMixin {
  final gameNotification;
  int _counter = 0;

  _NotificationsWidgetState({@required this.gameNotification});
  @override
  didUpdateWidget(NotificationsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.gameNotification != null &&
        widget.gameNotification.text !=
            (oldWidget.gameNotification != null
                ? oldWidget.gameNotification.text
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
    var notificationsModel = Provider.of<NotificationsModel>(context);
    _animationController.reset();
    notificationsModel.gameNotification = null;
  }

  @override
  Widget build(BuildContext context) {
    var notificationsModel = Provider.of<NotificationsModel>(context);
    return SlideTransition(
      child: Material(
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
                ? notificationsModel.gameNotification.status
                    ? Colors.greenAccent[100]
                    : Colors.deepOrange[100]
                : Colors.transparent,
            child: notificationsModel.gameNotification != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Text(notificationsModel.gameNotification.text),
                        IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              _animationController.reverse().then((value) =>
                                  notificationsModel.gameNotification = null);
                            })
                      ])
                : null,
          ),
        ),
      ),
      position: _offsetPositionAnimation,
    );
  }
}
