DateTime dateTimeNowUtc() => DateTime.now().toUtc();

DateTime? dateTimeFromMilisecondsSinceEpoch(final int? millisecondsSinceEpoch) {
  if (millisecondsSinceEpoch == null) return null;
  return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
}

int? dateTimeToMilisecondsSinceEpoch(final DateTime? dateTime) {
  if (dateTime == null) return null;
  return dateTime.millisecondsSinceEpoch;
}
