import 'package:flutter/material.dart';
import 'package:word_by_word_game/pack_core/utils/utils.dart';

class OrderedListNotifier<V> extends ImmutableOrderedList<V>
    with ChangeNotifier {
  @override
  @mustCallSuper
  void add(final V value) {
    super.add(value);
    notifyListeners();
  }

  @override
  @mustCallSuper
  bool addUnique(final V value) {
    final result = super.addUnique(value);
    if (result) notifyListeners();
    return result;
  }

  @override
  @mustCallSuper
  void remove(final V value) {
    super.remove(value);
    notifyListeners();
  }

  @override
  @mustCallSuper
  void clear() {
    super.clear();
    notifyListeners();
  }
}
