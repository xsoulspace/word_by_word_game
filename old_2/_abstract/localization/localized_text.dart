part of abstract;

/// Any text, that should be shown to user in different [Languages]
/// should use this class to keep values
@JsonSerializable()
class LocalizedText with EquatableMixin {
  const LocalizedText({
    required final this.en,
    required final this.ru,
    final this.it,
    final this.ga,
  });
  factory LocalizedText.fromJson(final Map<String, dynamic> json) =>
      _$LocalizedTextFromJson(json);
  Map<String, dynamic> toJson() => _$LocalizedTextToJson(this);

  /// Russian
  final String ru;

  /// English
  final String en;

  /// Italian
  final String? it;

  /// Irish
  final String? ga;

  /// If any new [Languages] added, add this to [values]
  Map<LanguageName, String?> get values => {
        Locales.ru.toString(): ru,
        Locales.en.toString(): en,
        Locales.it.toString(): it,
        Locales.ga.toString(): ga,
      };
  String getByLanguage(final LanguageName language) {
    final text = values[getLanguageCode(language)];

    return (text == null || text.isEmpty) ? en : text;
  }

  @override
  List<Object?> get props => [ru, en, it, ga];
}

String getLanguageCode(final LanguageName language) {
  String lang = language;
  if (language.contains('_')) {
    lang = language.split('_').first;
  }

  return lang;
}
