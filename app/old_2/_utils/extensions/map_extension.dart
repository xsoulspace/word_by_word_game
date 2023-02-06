part of utils;

extension MapExtension<K, V> on Map<K, V> {
  void assignEntries(final Iterable<MapEntry<K, V>> entries) {
    clear();
    addEntries(entries);
  }

  void assignAll(final Map<K, V> other) {
    clear();
    addAll(other);
  }
}
