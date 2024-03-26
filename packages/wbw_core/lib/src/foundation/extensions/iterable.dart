import 'dart:math';

typedef IterableConverter<TOld, TNew> = Future<TNew> Function(TOld item);

extension IterableExtension<E> on Iterable<E> {
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

  /// url: https://stackoverflow.com/a/61349527/9908821
  Iterable<V> mapIndexed<V>(
    final V Function(int index, E item) transform,
  ) sync* {
    int index = 0;

    for (final item in this) {
      yield transform(index, item);
      index++;
    }
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
