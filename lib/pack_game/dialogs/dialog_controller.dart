import 'package:flutter/material.dart';

class DialogController {
  DialogController({
    required this.showEndGameDialog,
    required this.closeDialog,
  });
  VoidCallback showEndGameDialog;
  VoidCallback closeDialog;
}
