import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'technologies_cubit.freezed.dart';

@freezed
class TechnologiesCubitState with _$TechnologiesCubitState {
  const factory TechnologiesCubitState({
    /// all available technologies in level
    @Default({}) final Map<TechnologyModelId, TechnologyModel> technologies,
    @Default(TechnologyTreeProgressModel.empty)
    final TechnologyTreeProgressModel progress,
  }) = _TechnologiesCubitState;
  const TechnologiesCubitState._();

  /// single technology, which is currently researching actively
  TechnologyModel? get researchingTechnology =>
      technologies[progress.researchingTechnologyId];
  TechnologyProgressModel? get researchingTechnologyProgress =>
      progress.technologies[progress.researchingTechnologyId];
}

class TechnologiesCubitDto {
  TechnologiesCubitDto(final BuildContext context)
      : mechanics = context.read(),
        statesStatusesCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
}

class TechnologiesCubit extends Cubit<TechnologiesCubitState>
    implements WorldTickConsumable {
  TechnologiesCubit(final BuildContext context)
      : dto = TechnologiesCubitDto(context),
        super(const TechnologiesCubitState());
  final TechnologiesCubitDto dto;
  @override
  void onConsumeTickEvent() {}
  void loadTechnologies({
    required final Map<TechnologyModelId, TechnologyModel> technologies,
    required final TechnologyTreeProgressModel progress,
  }) =>
      emit(state.copyWith(technologies: technologies, progress: progress));
}
