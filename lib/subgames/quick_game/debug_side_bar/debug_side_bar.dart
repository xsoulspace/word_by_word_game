import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

part 'debug_side_bar_vm.dart';

class UiDebugSideBar extends StatelessWidget {
  const UiDebugSideBar({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => UiDebugSideBarCubit(),
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
    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Debug Tools'),
            UiTextField.underlined(
              controller: screenCubit.liftForceController,
              hintText: 'Lift Force',
            ),
            UiTextField.underlined(
              controller: screenCubit.fuelController,
              hintText: 'Fuel',
            ),
          ],
        ),
      ),
    );
  }
}
