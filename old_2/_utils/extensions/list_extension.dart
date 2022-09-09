part of utils;

extension ListExtension<T> on List<T> {
  void assignAll(final Iterable<T> iterable) {
    clear();
    addAll(iterable);
  }
}
