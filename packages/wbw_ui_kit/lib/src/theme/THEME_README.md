# WBW Design Core Style Guide

This comprehensive style guide outlines the usage rules for components, typography, colors, and spacing in the `wbw_ui_kit` package. It ensures consistency and maintainability across your project.

## Color Palette

The color palette, defined in `ui_colors.dart`, is inspired by Apple Design, Material Design, Fluent UI, and Game UI Database. It's optimized for a pixel art-based design approach.

### Base Colors

- Dark: `#1F1F1F`
- Medium Dark: `#6B6B6B`
- Medium Light: `#AEAEAE`
- Light: `#CECECE`
- Off White: `#FAFAFB`

### Usage Rules

1. Use `UiColors.dark` for primary text and important UI elements.
2. Use `UiColors.mediumDark` for secondary text and less prominent UI elements.
3. Use `UiColors.mediumLight` for disabled states and subtle backgrounds.
4. Use `UiColors.light` for borders and dividers.
5. Use `UiColors.offWhite` for background colors and to create contrast with darker elements.
6. `UiColors.darkO50` (50% opacity of dark) can be used for overlays or to create depth.

### Color Combinations

- For primary buttons: Background - `UiColors.dark`, Text - `UiColors.offWhite`
- For secondary buttons: Background - `UiColors.light`, Text - `UiColors.dark`
- For disabled elements: Background - `UiColors.mediumLight`, Text - `UiColors.mediumDark`

## Typography

Typography is defined in `ui_text_theme.dart` and `typography.dart`, based on the Material Design text theme with custom modifications.

### Typography Scale

- Display: Large, Medium, Small
- Headline: Large, Medium, Small
- Title: Large, Medium, Small
- Body: Large, Medium, Small
- Label: Large, Medium, Small

### Usage Guidelines

1. Use `UiTextTheme.bold` for emphasizing text within its category.
2. Use `UiTextTheme.error` for error messages and warnings.
3. For general text, use `AppThemeData.brandLight.textTheme`.
4. Use Display and Headline styles for main titles and important information.
5. Use Title styles for section headers and subheadings.
6. Use Body styles for main content and paragraphs.
7. Use Label styles for small text, captions, and UI labels.

### Font Sizes and Weights

- Display Large: 57px / Regular
- Headline Medium: 28px / Regular
- Title Large: 22px / Medium
- Body Large: 16px / Regular
- Label Small: 11px / Medium

## Spacing and Layout

Spacing is defined in `ui_space.dart`, and layout decorators are in `ui_decorators.dart`.

### Spacing Scale

- Small: 12.0
- Medium: 16.0
- Large: 24.0
- Extra Large: 32.0

### Layout Rules

1. Use `UiSpace.small` for tight spacing between related elements.
2. Use `UiSpace.medium` for standard spacing between elements.
3. Use `UiSpace.large` for separating distinct sections or groups of content.
4. Use `UiSpace.extraLarge` for major layout divisions or to create emphasis.
5. Utilize `UiDecorators` for consistent padding, margins, and other layout properties.

## Atomic Design Components

### Atoms

Atoms are the smallest, indivisible components in our design system.

#### Rules for Atoms

1. Keep atoms simple and focused on a single responsibility.
2. Use `UiColors` for consistent coloring.
3. Implement customization options through parameters.
4. Ensure accessibility in all atom components.

#### Example: UiText

```dart
UiStyledButton(
onPressed: () => print('Button pressed'),
label: 'Click me',
icon: Icons.star,
styleType: ButtonStyleType.filled,
color: UiColors.primary,
)
```

### Molecules

Molecules are combinations of atoms that form more complex UI elements.

#### Rules for Molecules

1. Compose molecules using atoms and other molecules.
2. Maintain a clear purpose for each molecule.
3. Use `UiTextTheme` for consistent typography.
4. Implement state management when necessary.

#### Example: UiStyledButton

```dart
UiStyledButton(
  onPressed: () => print('Button pressed'),
  label: 'Click me',
  icon: Icons.star,
  styleType: ButtonStyleType.filled,
  color: UiColors.primary,
)
```

### Organisms

Organisms are more complex components composed of molecules and atoms.

#### Rules for Organisms

1. Focus on specific sections of the UI (e.g., headers, sidebars).
2. Use molecules and atoms to build the organism.
3. Implement more complex logic and state management.
4. Ensure responsiveness across different screen sizes.

#### Example: UiHeader

```dart
UiHeader(
  title: 'Dashboard',
  actions: [
    UiStyledButton(
      onPressed: () => print('Settings'),
      icon: Icons.settings,
    ),
    UiStyledButton(
      onPressed: () => print('Profile'),
      icon: Icons.person,
    ),
  ],
)
```

## Screens

Screens are complete page layouts composed of organisms, molecules, and atoms.

### Rules for Screens

1. Use a consistent layout structure across similar screens.
2. Implement proper state management (e.g., BLoC, Provider).
3. Ensure responsiveness and adaptability to different form factors.
4. Use `UiBodyBuilder` for consistent body layouts.

### Example: SimpleMainMenu

```dart
class SimpleMainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UiBodyBuilder(
        children: [
          GameTitle(),
          MainMenuButtons(),
          SettingsSection(),
        ],
      ),
    );
  }
}
```

## Best Practices for Composing and Refactoring

1. Single Responsibility: Each component should have a clear, specific purpose.
2. Composition over Inheritance: Prefer composing smaller components to create larger ones.
3. Consistent Naming: Use clear, consistent names for components and their properties.
4. Theming: Utilize `UiColors`, `UiTextTheme`, and `UiSpace` for consistent styling.
5. Customization: Provide appropriate customization options without overcomplicating the API.
6. Documentation: Keep inline documentation up-to-date as components evolve.
7. Testing: Write unit and widget tests for all components to ensure reliability.
8. Performance: Optimize components for performance, especially frequently used ones.
9. Accessibility: Ensure all components are accessible and support various input methods.
10. Localization: Design components to support multiple languages and RTL layouts.

## Refactoring Guidelines

1. Identify Common Patterns: Look for repeated code that can be abstracted into new atoms or molecules.
2. Break Down Complex Components: Split large, complex components into smaller, more manageable pieces.
3. Update Tests: Refactor tests along with the components to maintain test coverage.
4. Maintain Backwards Compatibility: When refactoring, try to maintain the existing API to minimize breaking changes.
5. Use Static Analysis: Leverage tools like `dart analyze` to identify potential issues during refactoring.

## Do's and Don'ts

### Do's

- Use `UiColors` and `UiTextTheme` for consistent styling.
- Implement proper state management in complex components.
- Write clear documentation for each component.
- Ensure components are accessible and responsive.
- Use `const` constructors when possible for better performance.

### Don'ts

- Don't create overly complex atoms; keep them simple and focused.
- Avoid hard-coding colors or text styles; use the design system constants.
- Don't repeat code across multiple components; abstract common functionality.
- Avoid using external packages for basic UI components; prefer custom implementations using the design system.

By following these guidelines, you can create a robust, maintainable, and scalable design system using Atomic Design principles.
