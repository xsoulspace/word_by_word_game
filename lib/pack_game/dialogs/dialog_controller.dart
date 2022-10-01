import 'package:flutter/material.dart';

class DialogController {
  DialogController({
    required this.showLevelLostDialog,
    required this.showLevelWinDialog,
    required this.closeDialog,
  });
  VoidCallback showLevelLostDialog;
  VoidCallback showLevelWinDialog;
  VoidCallback closeDialog;
}
