import 'dart:math';

import 'package:collection/collection.dart';

typedef IterableConverter<TOld, TNew> = Future<TNew> Function(TOld item);

extension IterableX<E> on Iterable<E> {
  Map<TId, int> toIndexedMap<TId>(final TId Function(E e) toId) {
    final iterableEntries =
        mapIndexed((final index, final e) => MapEntry(toId(e), index));

    return Map.fromEntries(iterableEntries);
  }

  E? randomElement() {
    if (isEmpty) return null;

    final rand = Random();

    return elementAt(rand.nextInt(length));
  }

  Map<TKey, TMapType> toMap<TKey, TMapType>({
    required final TKey Function(E item) toKey,
    required final TMapType Function(E item) toValue,
  }) {
    final iterableEntries = map((final e) {
      final key = toKey(e);
      final value = toValue(e);

      return MapEntry(key, value);
    });

    return Map.fromEntries(iterableEntries);
  }

  Future<Iterable<TNew>> convert<TNew>(
    final IterableConverter<E, TNew> converter,
  ) async {
    final list = <TNew>[];
    for (final item in this) {
      list.add(await converter(item));
    }
    return list;
  }
}
