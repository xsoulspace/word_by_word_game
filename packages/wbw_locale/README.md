# wbw_locale AI Rules

## Overview

The `wbw_locale` package provides a robust localization framework for Flutter applications. It allows developers to manage multiple languages and locales efficiently, ensuring a seamless user experience across different regions.

## AI Rules for Using wbw_locale

### 1. **Component Usage**

- **NamedLocale**: Use this class to represent a locale with a user-friendly name. It is essential for displaying available languages to users.

  ```dart
  final namedLocale = NamedLocale(name: 'English', locale: Locales.en);
  ```

- **Locales**: This class holds the supported locales. Use `Locales.values` to retrieve all available locales.

  ```dart
  final availableLocales = Locales.values;
  ```

- **KeyboardLanguage**: Use this enum to manage keyboard language settings based on the selected application language.

  ```dart
  final keyboardLang = KeyboardLanguage.fromLanguage(Languages.en);
  ```

### 2. **Customization Options**

- **Adding New Locales**: To add a new locale, define it in the `Locales` class and ensure it is included in the `namedLocalesMap`.

  ```dart
  static const ga = Locale('ga', 'GA'); // Example for Irish
  ```

- **Customizing Language Names**: When creating instances of `NamedLocale`, ensure that the `name` parameter is user-friendly and localized.

  ```dart
  final irishLocale = NamedLocale(name: 'Gaeilge', locale: Locales.ga);
  ```

### 3. **Best Practices**

- **Use Dartdoc Comments**: Document all public classes, methods, and properties using Dartdoc comments. This practice enhances code readability and maintainability.

  ```dart
  /// A class representing a named locale for user selection.
  @immutable
  class NamedLocale {
    // ...
  }
  ```

- **Avoid Hardcoding Strings**: Use localization files (e.g., `.arb` files) for all user-facing strings. This approach allows for easier translations and updates.

  ```json
  {
    "finishGame": "Finish game",
    "@finishGame": {
      "type": "text"
    }
  }
  ```

- **Refactor for Clarity**: When composing components, ensure that each class or method has a single responsibility. This practice makes the code easier to test and maintain.

  ```dart
  // Instead of combining multiple responsibilities in one class, separate them:
  class LanguageSelector {
    // Handles language selection logic
  }

  class LocaleManager {
    // Manages locale changes
  }
  ```

### 4. **Refactoring Guidelines**

- **Use Freezed for Immutable Data Classes**: When creating data classes, use the `freezed` package to generate immutable classes with copy functionality.

  ```dart
  @freezed
  class LocalizedMap with _$LocalizedMap {
    const factory LocalizedMap({
      required Map<Languages, String> value,
    }) = _LocalizedMap;
  }
  ```

- **Keep Functions Small**: Aim for functions that do one thing and do it well. This practice improves readability and testability.

  ```dart
  // Good: Single responsibility
  String getValueByLanguage(Languages language) {
    return value[language] ?? '';
  }
  ```

### 5. **Testing and Validation**

- **Unit Tests**: Write unit tests for all public methods to ensure they behave as expected. Use the `flutter_test` package for testing.

  ```dart
  test('getValue returns correct value for given locale', () {
    final localizedMap = LocalizedMap(value: {Languages.en: 'Hello'});
    expect(localizedMap.getValue(Locales.en), 'Hello');
  });
  ```

- **Integration Tests**: Validate the integration of localization in your app by testing the UI with different locales.

## Conclusion

By following these AI rules, you can effectively utilize the `wbw_locale` package to create a robust and user-friendly localization experience in your Flutter applications. Always strive for clarity, maintainability, and user-centric design in your localization efforts.
