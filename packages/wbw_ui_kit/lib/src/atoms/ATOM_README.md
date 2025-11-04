# Atomic Design Components

## AI Rules for Atomic Components

When working with or extending the atomic components, follow these guidelines:

1. **Consistency**: Maintain consistent naming conventions and API design across all atomic components.
2. **Customization**: Ensure all components have appropriate customization options without overcomplicating their APIs.
3. **Theme Integration**: Use the app's theme whenever possible for colors, text styles, and other design tokens. Use `UiColors`, `UiTextStyles`, and `UiSizes` for this.
4. **Accessibility**: Always consider accessibility when designing and implementing components.
5. **Performance**: Keep components lightweight and optimized for performance.
6. **Composition**: Design components to be easily composable with other atomic and molecular components.
7. **Documentation**: Provide clear, concise documentation for each component, including usage examples and customization options.
8. **Testing**: Write unit and widget tests for all components to ensure reliability and catch regressions.
9. **Responsive Design**: Design components to work well across different screen sizes and orientations.
10. **Localization**: Ensure components support localization and right-to-left (RTL) languages where applicable.

## Usage Examples

### UiSafeArea

UiSafeArea is a widget that provides a safe area for the bottom or top of the screen.

```dart
UiSafeArea.bottom();
UiSafeArea.top();
```

### UiDecoratedContainer

UiDecoratedContainer has vertical and horizontal dividers with triangles in the middle.

```dart
UiDecoratedContainer(
  child: UiText('Decorated container content'),
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.symmetric(vertical: 8),
  borderRadius: BorderRadius.circular(16),
);
```

### UiTooltip

```dart
UiTooltip(
  tooltip: 'Tooltip text',
  child: UiText('Hover over me'),
);
```

### UiBaseButton

UiBaseButton is a basic button component that handles gesture handling. It is used for simple interactions like button clicks.

```dart
UiBaseButton(
  onPressed: () => print('Button pressed'),
  builder: (final context, final focused) => UiText('Click me'),
)
```

### UiText

```dart
UiText(
  'Hello, World!',
  color: Colors.blue,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  textAlign: TextAlign.center,
);
```

### UiIcon

For icons, we have three options:

1. Use a library icon (e.g. `Icons.star`)
2. Use an asset icon (e.g. `UiAssetsIcons.fire`)
3. Use a custom painter (e.g. `CustomPainter()`)

### UiIcon.painter (Highly Preferred)

```dart
UiIcon.painter(
  painter: CustomPainter(),
  height: 32,
  width: 32,
)
```

### UiIcon.lib (Preferred)

```dart
UiIcon.lib(
  icon: Icons.star,
  height: 32,
  width: 32,
)
```

### UiIcon.asset (Not Preferred)

```dart
UiIcon.asset(
  icon: UiAssetsIcons.fire,
  height: 32,
  width: 32,
)
```

### UiCard

```dart
UiCard(
  child: UiText('Card content'),
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.symmetric(vertical: 8),
  borderRadius: BorderRadius.circular(16),
  elevation: 4,
  color: Colors.white,
);
```

### UiDivider

It is a line with a triangle in the middle.
There are two types: horizontal and vertical.
A custom painter is used to draw the divider.

```dart
UiDivider(
  size: Size(60, 20),
);
```

```dart
UiDivider.vertical(
  size: Size(20, 60),
);
```

### UiGaps

UiGaps is a class that contains the gap sizes.

```dart
UiGaps.small
```

### UiTriangle

```dart
UiTriangle(
  size: 10,
  color: Colors.red,
);
```

### UiBodyBuilder

UiBodyBuilder is a widget that builds a body with a ListView or a custom builder.

```dart
UiBodyBuilder(
  builder: (context) => UiText('Body content'),
);
```

### KeyboardBindingsViewFocusScope

KeyboardBindingsViewFocusScope is a widget that provides a focus scope for keyboard bindings.

```dart
KeyboardBindingsViewFocusScope(
  child: UiBodyBuilder(
    builder: (context) => UiText('Body content'),
  ),
);
```

### KeyboardBindingsNotifier

KeyboardBindingsNotifier is a widget that provides a notifier for keyboard bindings.

```dart
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: KeyboardBindingsNotifier.new),
  ],
  child: KeyboardBindingsViewFocusScope(
    child: UiBodyBuilder(
      builder: (context) => UiText('Body content'),
    ),
  ),
);
```

## Customization Options

Each atomic component provides various customization options:

- `UiText`: Customize text style, color, font size, font weight, and alignment.
- `UiIcon`: Customize type (lib, asset, painter), size, color.
- `UiCard`: Modify padding, margin, border radius, elevation, and background color.
- `UiDivider`: Change height, thickness, and color.

## Best Practices for Composing and Refactoring

1. **Single Responsibility**: Each atomic component should have a single, well-defined purpose.
2. **Composition over Inheritance**: Prefer composing smaller components to create larger ones rather than using inheritance.
3. **Prop Drilling**: Avoid excessive prop drilling by using state management solutions for deeply nested components.
4. **Reusability**: Design components to be reusable across different parts of the application.
5. **Separation of Concerns**: Keep layout, style, and behavior separate when possible.
6. **Consistent Naming**: Use clear, consistent names for components and their properties.
7. **Default Values**: Provide sensible default values for component properties.
8. **Flexibility**: Design components to be flexible enough to handle various use cases without becoming overly complex.
9. **Documentation**: Keep documentation up-to-date as components evolve.
10. **Refactoring**: Regularly refactor components to improve their design, performance, and maintainability.

When refactoring:

- Look for repeated patterns that can be abstracted into new atomic components.
- Identify overly complex components that can be broken down into smaller, more manageable pieces.
- Update tests and documentation to reflect changes in component APIs or behavior.

By following these guidelines, you can create a robust, maintainable, and scalable design system using atomic components.

```

```
