import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';

part 'debug_side_bar_vm.dart';

class UiDebugSideBar extends StatelessWidget {
  const UiDebugSideBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final debugCubit = context.watch<DebugCubit>();
    if (!debugCubit.state.isDebugPaneVisible) return const SizedBox();
    return Stack(
      children: [
        Positioned.fill(
          child: Container().blurred(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        BlocProvider(
          create: (final context) => UiDebugSideBarCubit(
            dto: UiDebugSideBarCubitDto(
              context: context,
            ),
          ),
          child: Builder(
            builder: (final context) => const UiDebugSideBarBody(),
          ),
        ),
      ],
    );
  }
}

class UiDebugSideBarBody extends StatelessWidget {
  const UiDebugSideBarBody({super.key});

  @override
  Widget build(final BuildContext context) {
    final screenCubit = context.watch<UiDebugSideBarCubit>();
    final levelPlayerBloc = context.watch<LevelPlayersBloc>();
    final debugCubit = context.watch<DebugCubit>();
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final worldBloc = context.watch<GlobalGameBloc>();
    final wbwDictionary = context.watch<WbwDictionary>();
    return SizedBox(
      width: 200,
      height: (screenSize.height / 2) + (screenSize.height / 3),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              IconButton(
                onPressed: debugCubit.closeDebugPane,
                icon: const Icon(Icons.close),
              ),
              Tooltip(
                message: 'Stop game engine with world time',
                child: IconButton(
                  onPressed: () {
                    final worldTime =
                        context.read<MechanicsCollection>().worldTime;
                    if (worldTime.paused) {
                      worldTime.resume();
                    } else {
                      worldTime.pause();
                    }
                  },
                  color: theme.colorScheme.errorContainer,
                  icon: const Icon(Icons.motion_photos_pause_outlined),
                ),
              ),
              const Gap(8),
              Flexible(
                child: Text(
                  'Time ${worldBloc.state.dateTime.second ~/ 100}',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const _WorldTime(),
          const Gap(16),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Is Camera following Player',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            value: debugCubit.state.isCameraFollowingFocusedObject,
            onChanged: debugCubit.switchIsCameraFollowingPlayerChange,
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('FPS visible'),
            value: debugCubit.state.isFpsEnabled,
            onChanged: debugCubit.switchIsFpsEnabledChange,
          ),
          Row(
            children: [
              const Text('Volume: '),
              Text(screenCubit.volume.toInt().toString()),
            ],
          ),
          Row(
            children: [
              const Text('Power: '),
              Text(screenCubit.power.toInt().toString()),
              TextButton(
                onPressed: () {
                  screenCubit
                      .onPowerChange((screenCubit.power + 500).toString());
                },
                child: const Text('+500'),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              context.read<WeatherCubit>().nextWeather();
            },
            child: const Text('Next weather'),
          ),
          FilledButton.tonal(
            onPressed: () async =>
                context.read<DebugCubit>().addInvestedResearchScore(),
            child: const Text('Add 200 invested research score'),
          ),
          UiTextField.underlined(
            value: screenCubit.maxVolume.toString(),
            onChanged: screenCubit.onMaxVolumeChange,
            keyboardType: TextInputType.number,
            labelText: 'maxVolume',
          ),
          UiTextField.underlined(
            value: screenCubit.maxPower.toString(),
            onChanged: screenCubit.onMaxPowerChange,
            keyboardType: TextInputType.number,
            labelText: 'maxPower',
          ),
          UiTextField.underlined(
            value: levelPlayerBloc.powerUsage.toString(),
            onChanged: levelPlayerBloc.onPowerUsageChange,
            keyboardType: TextInputType.number,
            labelText: 'powerUsage',
          ),
          UiTextField.underlined(
            value: screenCubit.gravityForce.toString(),
            onChanged: screenCubit.onGravityForceChange,
            keyboardType: TextInputType.number,
            labelText: 'gravityForce',
          ),
          UiTextField.underlined(
            value: screenCubit.volumeDecreaseRatio.toString(),
            onChanged: screenCubit.onVolumeDecreaseRatioChange,
            keyboardType: TextInputType.number,
            labelText: 'volumeDecreaseRatio',
          ),
          UiTextField.underlined(
            value: screenCubit.volumeIncreaseRatio.toString(),
            onChanged: screenCubit.onVolumeIncreaseRatioChange,
            keyboardType: TextInputType.number,
            labelText: 'volumeIncreaseRatio',
          ),
          UiTextField.underlined(
            value: screenCubit.volumeToLiftRatio.toString(),
            onChanged: screenCubit.onVolumeToLiftRatioChange,
            keyboardType: TextInputType.number,
            labelText: 'volumeToLiftRatio',
          ),
          const Gap(8),
          Text(
            'Dictionaries: '
            '${wbwDictionary.isLoading ? 'loading' : 'loaded'}'
            '| ${wbwDictionary.debugLoadingTimeInSeconds} seconds',
          ),
          const Gap(16),
          FilledButton.tonal(
            onPressed: () async => context
                .read<WbwDictionary>()
                .loadAndCache(shouldForceUpdate: true),
            child: const Text('Reload dictionaries'),
          ),
          const Gap(16),
          const _DictionaryLengthButton(),
          const Gap(16),
        ],
      ),
    );
  }
}

class _DictionaryLengthButton extends HookWidget {
  const _DictionaryLengthButton();

  @override
  Widget build(final BuildContext context) {
    final lengthNotifier = useState(0);
    return FilledButton.tonal(
      onPressed: () async {
        lengthNotifier.value =
            await context.read<WbwDictionary>().getDictionaryLength();
      },
      child: Text('Get dictionary length (${lengthNotifier.value})'),
    );
  }
}

class _WorldTime extends StatelessWidget {
  const _WorldTime();

  @override
  Widget build(final BuildContext context) {
    final worldTime = context.read<MechanicsCollection>().worldTime;
    context.watch<GlobalGameBloc>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: worldTime.paused ? worldTime.resume : worldTime.pause,
              child: Text(worldTime.paused ? '>' : '||'),
            ),
            TextButton(
              onPressed: worldTime.speedX2,
              child: Text(worldTime.isSpeed2 ? '(>>)' : '>>'),
            ),
          ],
        ),
      ],
    );
  }
}
