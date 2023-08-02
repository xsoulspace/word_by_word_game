import 'package:wbw_core/wbw_core.dart';

class EditorMechanicsCollection {
  EditorMechanicsCollection._({
    required this.worldTime,
  });
  factory EditorMechanicsCollection.v1() => EditorMechanicsCollection._(
        worldTime: WorldTimeMechanics(),
      );
  final WorldTimeMechanics worldTime;
}
