import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_game/ads/models/models.dart';
import 'package:word_by_word_game/pack_game/ads/states/ad_manager.dart';

abstract class AdWidget extends StatelessWidget {
  const AdWidget({required super.key});
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  );
  bool isAdAllowed(final AdPermissions permissions);
  Widget builder(final BuildContext context, final String adUnitId);
  Widget debugBuilder(final BuildContext context);
  @override
  Widget build(final BuildContext context) {
    final adManager = context.read<AdManager>();
    final permissions = adManager.permissions;
    if (permissions.adsNotAllowed) return const SizedBox();
    if (!isAdAllowed(permissions)) return const SizedBox();

    final uiTheme = UiTheme.of(context);
    final screenWidth = uiTheme.persistentFormFactors.width;
    if (Envs.isDebugAds) {
      return debugBuilder(context);
    }
    final adUnitId = getAdUnitId(permissions, screenWidth);
    if (adUnitId.isEmpty) return const SizedBox();

    return builder(context, adUnitId);
  }
}