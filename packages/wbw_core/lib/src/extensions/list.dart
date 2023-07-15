extension ListExtension<E> on List<E> {
  void reorder(final int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      // removing the item at oldIndex will shorten the list by 1.
      // ignore: parameter_assignments
      newIndex -= 1;
    }
    final element = removeAt(oldIndex);
    insert(newIndex, element);

    // swap(oldIndex, newIndex);
  }
}
