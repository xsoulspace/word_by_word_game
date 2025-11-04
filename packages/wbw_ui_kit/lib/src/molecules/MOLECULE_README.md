# Molecular Design Components

## AI Rules for Molecular Components

When working with or extending the molecular components, follow these guidelines:

1. Composition: Molecules should be composed of atoms and other molecules, creating more complex UI elements.

2. Reusability: Design molecules to be reusable across different parts of the application.

3. Single Responsibility: Each molecule should have a clear, specific purpose.

4. Customization: Provide appropriate customization options without overcomplicating the API.

5. Consistency: Maintain consistent naming conventions and API design across all molecular components.

6. Theme Integration: Use the app's theme and design tokens (UiColors, UiTextStyles, UiSpace, etc.) for styling.

7. Accessibility: Ensure molecules are accessible and support various input methods (keyboard, touch, etc.).

8. Performance: Keep molecules optimized for performance, considering their potential frequent use.

9. Documentation: Provide clear, concise documentation for each molecule, including usage examples and customization options.

10. Testing: Write unit and widget tests for all molecules to ensure reliability and catch regressions.

11. Responsive Design: Design molecules to adapt to different screen sizes and orientations.

12. Localization: Support localization and right-to-left (RTL) languages where applicable.

## Usage Examples

### UiLocalizedTextField

Wraps a UiTextField to use a LocalizedMap for its value. The current locale is automatically detected and the text field value is updated accordingly.

```dart
UiLocalizedTextField(
  label: 'Email',
  hintText: 'Enter your email',
  onChanged: (value) => print('Email changed to $value'),
)
```

### UiTextField

Creates a text field with a label and an optional icon.

```dart
UiTextField(
  label: 'Email',
  hintText: 'Enter your email',
  onChanged: (value) => print('Email changed to $value'),
)
```

### UiCheckboxListTile

Creates a checkbox list tile with a label and an optional icon.

```dart
UiCheckboxListTile(
  value: true,
  onChanged: (value) => print('Checkbox changed to $value'),
  title: Text('Enable notifications'),
)
```

### UiHighlightFrame

Creates a frame that highlights a widget when focused.

```dart
UiHighlightFrame(
  highlightPosition: Alignment.center,
  child: UiStyledButton(
    onPressed: () => print('Button pressed'),
    label: 'Click me',
  ),
)
```

### UiAnimatedFocusManager with UiFocusableWidget

Creates a focusable widget that animates movement of an icon or similar elements on focus change.

```dart
UiAnimatedFocusManager(
  child: UiFocusableWidget(
    index: 0,
    child: UiAnimatedText(
      label: 'Hello, World!',
      textStyle: TextStyle(fontSize: 24, color: Colors.blue),
    ),
  ),
)
```

### UiAnimatedText

```dart
UiAnimatedText(
  label: 'Hello, World!',
  textStyle: TextStyle(fontSize: 24, color: Colors.blue),
)
```

### UiLocaleNotifier and UiLocalizedText

```dart
MultiProvider(
  providers: [
    ChangeNotifierProvider<UiLocaleNotifier>(create: () => UiLocaleNotifier(Locales.en)),
  ],
  child: Builder(
    builder: (context) {
      return Column(
        children: [
          UiLocalizedText(),
          ElevatedButton(
            onPressed: () {
              final notifier = context.read<UiLocaleNotifier>();
              notifier.value = Locales.fr;
            },
            child: Text('Switch to French'),
          ),
        ],
      );
    },
  ),
)
```

### UiStyledButton

```dart
UiStyledButton(
  onPressed: () => print('Button pressed'),
  label: 'Click me',
  icon: Icons.star,
  styleType: ButtonStyleType.filled,
  color: UiColors.primary,
  borderColor: UiColors.dark,
  radius: 8.0,
  textStyle: TextStyle(fontSize: 16),
  tooltip: 'This is a styled button',
)
```

## Customization Options

Each molecular component provides various customization options:

- `UiStyledButton`: Customize label, icon, style type, colors, border, radius, text style, and more.
- `UiLocaleNotifier`: Set and update the current locale.
- `UiLocalizedText`: Automatically updates based on the current locale.

## Best Practices for Composing and Refactoring

1. Atomic Composition: Build molecules by composing atoms and other molecules, not by creating overly complex single components.

2. State Management: Use appropriate state management techniques (e.g.,flutter_hooks, Provider, ChangeNotifier, ValueNotifier) for molecules that manage their own state.

3. Prop Drilling: Avoid excessive prop drilling by using inherited widgets or state management solutions for deeply nested components.

4. Separation of Concerns: Keep presentation logic separate from business logic.

5. Consistent Naming: Use clear, consistent names for molecules and their properties.

6. Default Values: Provide sensible default values for molecule properties to ensure ease of use.

7. Flexibility: Design molecules to be flexible enough to handle various use cases without becoming overly complex.

8. Documentation: Keep documentation up-to-date as molecules evolve.

9. Refactoring: Regularly refactor molecules to improve their design, performance, and maintainability.

When refactoring:

- Look for repeated patterns across molecules that can be abstracted into new atoms or utility functions.
- Identify overly complex molecules that can be broken down into smaller, more manageable pieces.
- Update tests and documentation to reflect changes in molecule APIs or behavior.
- Consider the impact on existing usage when making changes to molecule interfaces.

By following these guidelines, you can create a robust, maintainable, and scalable design system using molecular components that build upon your atomic components.
