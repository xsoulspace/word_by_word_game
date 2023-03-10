import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(final BuildContext context) {
    return Widgetbook.material(
      localizationsDelegates: const [
        ...S.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.supportedLocales,
      categories: [
        WidgetbookCategory(
          name: 'Game UI',
          widgets: [
            WidgetbookComponent(
              name: 'GuiIconButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Basic',
                  builder: (final context) {
                    return Wrap(
                      children: GuiArtboard.values
                          .where(
                            (final e) =>
                                e.name.startsWith(GuiArtboard.iconButtonLabel),
                          )
                          .map(
                            (final e) => GuiIconButton(
                              icon: e,
                              onPressed: () {},
                            ),
                          )
                          .toList(),
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
