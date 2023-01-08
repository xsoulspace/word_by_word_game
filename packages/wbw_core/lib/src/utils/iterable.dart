import 'dart:math';

typedef IterableConverter<TOld, TNew> = Future<TNew> Function(TOld item);

extension IterableExtension<E> on Iterable<E> {
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
