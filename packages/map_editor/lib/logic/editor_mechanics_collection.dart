import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';

class EditorMechanicsCollection {
  EditorMechanicsCollection._({required this.worldTime});
  // ignore: avoid_unused_constructor_parameters
  factory EditorMechanicsCollection.v1(final BuildContext context) =>
      EditorMechanicsCollection._(worldTime: WorldTimeMechanics());
  final WorldTimeMechanics worldTime;
}
