import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';

Future<void> showTechnologiesTreeDialog({
  required final BuildContext context,
}) async {
  final technologies = context.read<EditorDrawerCubit>().techologies;
  final techs = <TechnologyModel>[];
  final newTechs = <TechnologyModel>[];
  for (final e in TechnologyType.values) {
    final tech = technologies.firstWhereOrNull((final t) => t.id.value == e);
    if (tech != null) {
      techs.add(tech);
    } else {
      newTechs.add(
        TechnologyModel(
          id: TechnologyModelId(e),
          title: LocalizedMap.fromLanguages(),
          unlockCondition: const TechnologyUnlockConditionModel(
            languageWords: {},
          ),
        ),
      );
    }
  }
  techs.addAll(newTechs);
  context.read<EditorDrawerCubit>().techologies = techs;

  return showDialog(
    context: context,
    builder: (final context) => const TechnologyTreeDialog(),
  );
}

class TechnologyTreeDialog extends StatelessWidget {
  const TechnologyTreeDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final drawerCubit = context.watch<EditorDrawerCubit>();
    final techologies = drawerCubit.techologies;
    return Dialog.fullscreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            leading: const CloseButton(),
            title: const Text('Technology Tree'),
          ),
          const Gap(16),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24).copyWith(
                  right: 64,
                ),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.3),
                  },
                  children: [
                    TableRow(
                      children: [
                        const TableCell(child: Text('ID')),
                        ...UiLanguage.all.map(
                          (final language) => TableCell(
                            child: Text(language.name),
                          ),
                        ),
                      ],
                    ),
                    ...techologies
                        .mapIndexed(
                          (final index, final e) => _TechRow(
                            technology: e,
                            onChanged: (final value) =>
                                drawerCubit.onTechnologyChanged(
                              value,
                              index,
                            ),
                          ).build(context),
                        )
                        .flattened,
                  ],
                ),
              ),
            ),
          ),
          // IconButton.filled(
          //   icon: const Icon(Icons.undo),
          //   onPressed: () async {
          //     final shouldDelete =
          //         await Dialogs.of(context).showDeleteDialog(
          //       title: const Text('Reset technology?'),
          //     );
          //     if (shouldDelete == true) drawerCubit.onResetTechnology(index);
          //   },
          // ),
        ],
      ),
    );
  }
}

class _TechRow {
  const _TechRow({
    required this.technology,
    required this.onChanged,
  });
  final TechnologyModel technology;
  final ValueChanged<TechnologyModel> onChanged;

  TableCell _getFirstCell(final BuildContext context, final String text) =>
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.intrinsicHeight,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Text(text),
        ),
      );
  List<TableRow> build(final BuildContext context) => [
        /// title
        TableRow(
          children: [
            _getFirstCell(context, technology.id.value.name),

            /// title
            ...UiLanguage.all.map(
              (final language) => TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: TextFormField(
                  maxLines: null,
                  initialValue: technology.title.getValueByLanguage(language),
                  onChanged: (final value) {
                    final updatedTechnology = technology.copyWith(
                      title: technology.title.copyWith(
                        value: {...technology.title.value}..[language] = value,
                      ),
                    );
                    onChanged(updatedTechnology);
                  },
                ),
              ),
            ),
          ],
        ),

        /// words
        TableRow(
          children: [
            _getFirstCell(context, 'Words'),
            ...UiLanguage.all.map(
              (final language) {
                final words =
                    technology.unlockCondition.languageWords[language] ?? [];
                return TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: _WordsField(
                    words: words,
                    onChanged: (final value) {
                      final updatedTechnology = technology.copyWith(
                        unlockCondition: technology.unlockCondition.copyWith(
                          languageWords: {
                            ...technology.unlockCondition.languageWords,
                          }..[language] = value,
                        ),
                      );
                      onChanged(updatedTechnology);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ];
}

class _WordsField extends HookWidget {
  const _WordsField({
    required this.words,
    required this.onChanged,
  });
  final List<UsefulWordModel> words;
  final ValueChanged<List<UsefulWordModel>> onChanged;

  @override
  Widget build(final BuildContext context) {
    final newWordController = useTextEditingController();
    void onAddWord() {
      final text = newWordController.text;
      if (text.isEmpty) return;
      newWordController.clear();
      final word = UsefulWordModel(word: text);
      final updatedWords = {...words, word}.toList();
      onChanged(updatedWords);
    }

    void onDeleteWord(final int index) {
      final updatedWords = [...words]..removeAt(index);
      onChanged(updatedWords);
    }

    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: TextFormField(
                controller: newWordController,
                onFieldSubmitted: (final value) => onAddWord(),
              ),
            ),
            IconButton.filled(
              onPressed: onAddWord,
              icon: const Icon(Icons.save),
            ),
          ],
        ),
        const Gap(8),
        Wrap(
          children: words
              .mapIndexed(
                (final index, final e) => InputChip(
                  label: Text(e.word),
                  key: ValueKey(e),
                  onDeleted: () => onDeleteWord(index),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
