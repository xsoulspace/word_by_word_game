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
            UiTextField.underlined(
              initialValue: screenCubit.volume.toString(),
              onChanged: screenCubit.onVolumeChange,
              labelText: 'volume',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.power.toString(),
              onChanged: screenCubit.onPowerChange,
              labelText: 'power',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.maxVolume.toString(),
              onChanged: screenCubit.onMaxVolumeChange,
              labelText: 'maxVolume',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.maxPower.toString(),
              onChanged: screenCubit.onMaxPowerChange,
              labelText: 'maxPower',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.powerUsage.toString(),
              onChanged: screenCubit.onPowerUsageChange,
              labelText: 'powerUsage',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.gravityForce.toString(),
              onChanged: screenCubit.onGravityForceChange,
              labelText: 'gravityForce',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.volumeDecreaseRatio.toString(),
              onChanged: screenCubit.onVolumeDecreaseRatioChange,
              labelText: 'volumeDecreaseRatio',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.volumeIncreaseRatio.toString(),
              onChanged: screenCubit.onVolumeIncreaseRatioChange,
              labelText: 'volumeIncreaseRatio',
            ),
            UiTextField.underlined(
              initialValue: screenCubit.volumeToLiftRatio.toString(),
              onChanged: screenCubit.onVolumeToLiftRatioChange,
              labelText: 'volumeToLiftRatio',
            ),
            const Gap(24),
          ],
        ),
      ),
    );
  }
}
