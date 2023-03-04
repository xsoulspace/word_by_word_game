import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(final BuildContext context) {
    return Widgetbook.material(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en')],
      categories: [
        WidgetbookCategory(
          name: 'Game UI',
          widgets: [
            WidgetbookComponent(
              name: 'FAB',
              useCases: [
                WidgetbookUseCase(
                  name: 'IconButton - Apple',
                  builder: (final context) {
                    return GuiIconButton(
                      icon: GuiArtboard.iconButton,
                      onPressed: () {},
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Word by Word Game'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: AppThemeData.brandLight,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: AppThemeData.brandDark,
        ),
      ],
    );
  }
}
