import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'debug_side_bar_vm.dart';

class UiDebugSideBar extends StatelessWidget {
  const UiDebugSideBar({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => UiDebugSideBarCubit(
          dto: UiDebugSideBarCubitDto(
            context: context,
          ),
        ),
        child: Builder(
          builder: (final context) => const UiDebugSideBarBody(),
        ),
      );
}

class UiDebugSideBarBody extends StatelessWidget {
  const UiDebugSideBarBody({super.key});

  @override
  Widget build(final BuildContext context) {
    final screenCubit = context.watch<UiDebugSideBarCubit>();
    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final screenSize = MediaQuery.sizeOf(context);
    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 200,
        height: (screenSize.height / 2) + (screenSize.height / 3),
        child: ListView(
          children: [
            const Text('Debug Tools'),
            const Gap(16),
            Row(
              children: [
                const Text('volume: '),
                Text(screenCubit.volume.toInt().toString()),
              ],
            ),
            Row(
              children: [
                const Text('power: '),
                Text(screenCubit.power.toInt().toString()),
                TextButton(
                  onPressed: () {
                    screenCubit
                        .onPowerChange((screenCubit.power + 500).toString());
                  },
                  child: const Text('+500'),
                )
              ],
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
              value: screenCubit.powerUsage.toString(),
              onChanged: screenCubit.onPowerUsageChange,
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
            const _WorldTime(),
            const Gap(100),
          ],
        ),
      ),
    );
  }
}

class _WorldTime extends StatelessWidget {
  const _WorldTime();

  @override
  Widget build(final BuildContext context) {
    final worldBloc = context.watch<GlobalGameBloc>();
    final worldTime = context.read<MechanicsCollection>().worldTime;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(24),
        Text('Time ${worldBloc.state.dateTime.second}'),
        const Gap(4),
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
