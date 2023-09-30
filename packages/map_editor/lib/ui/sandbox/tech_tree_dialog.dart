import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

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
          id: TechnologyModelId(value: e),
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

class TechnologyTreeDialog extends StatefulWidget {
  const TechnologyTreeDialog({super.key});

  @override
  State<TechnologyTreeDialog> createState() => _TechnologyTreeDialogState();
}

class _TechnologyTreeDialogState extends State<TechnologyTreeDialog> {
  Languages _language = LocalizedMap.getCurrentLanugage();
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
          LanguageSwitcher(
            onChanged: (final value) {
              _language = value;
              setState(() {});
            },
            value: _language,
          ),
          Expanded(
            child: ReorderableListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              buildDefaultDragHandles: false,
              itemBuilder: (final context, final index) {
                final technology = techologies[index];
                return TechnologyInput(
                  key: ValueKey(technology.id),
                  onDelete: () => drawerCubit.onResetTechnology(index),
                  onTechnologyChanged: drawerCubit.onTechnologyChanged,
                  index: index,
                  initialTechnology: technology,
                  language: _language,
                );
              },
              itemCount: TechnologyType.values.length,
              onReorder: drawerCubit.reorderTechnologies,
            ),
          ),
        ],
      ),
    );
  }
}

class TechnologyInput extends StatefulWidget {
  const TechnologyInput({
    required this.language,
    required this.initialTechnology,
    required this.onTechnologyChanged,
    required this.index,
    required this.onDelete,
    super.key,
  });
  final TechnologyModel initialTechnology;
  final Languages language;
  final int index;
  final VoidCallback onDelete;
  final TwoValuesChanged<TechnologyModel, int> onTechnologyChanged;

  @override
  State<TechnologyInput> createState() => _TechnologyInputState();
}

class _TechnologyInputState extends State<TechnologyInput> {
  final _newWordController = TextEditingController();
  final _nameController = TextEditingController();
  @override
  void initState() {
    _nameController.text = widget.initialTechnology.title.getValue(
      widget.language,
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant final TechnologyInput oldWidget) {
    if (widget.language != oldWidget.language) {
      _nameController.text = widget.initialTechnology.title.getValue(
        widget.language,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _newWordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  late Map<Languages, List<UsefulWordModel>> wordsMap =
      _initTechnology.unlockCondition.languageWords;
  List<UsefulWordModel> get words => wordsMap[widget.language] ?? [];

  TechnologyModel get _initTechnology => widget.initialTechnology;
  void _onDeleteWord(final int index) {
    final updatedWords = [...words]..removeAt(index);
    _onWordsChanged(updatedWords);
  }

  void _onAddWord() {
    final text = _newWordController.text;
    if (text.isEmpty) return;
    _newWordController.clear();
    final word = UsefulWordModel(word: text);
    final updatedWords = {...words, word}.toList();
    _onWordsChanged(updatedWords);
  }

  void _onWordsChanged(final List<UsefulWordModel> updatedWords) {
    wordsMap = {
      ...wordsMap,
    }..[widget.language] = updatedWords;
    final tech = _initTechnology.copyWith(
      unlockCondition: _initTechnology.unlockCondition.copyWith(
        languageWords: wordsMap,
      ),
    );
    widget.onTechnologyChanged(tech, widget.index);
    setState(() {});
  }

  @override
  Widget build(final BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ReorderableDragStartListener(
                    index: widget.index,
                    child: const Icon(Icons.drag_handle),
                  ),
                  const Gap(8),
                  Text(widget.initialTechnology.id.value.name),
                  const Gap(8),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 250),
                      child: TextFormField(
                        controller: _nameController,
                        onChanged: (final value) {
                          widget.onTechnologyChanged(
                            _initTechnology.copyWith(
                              title: _initTechnology.title.copyWith(
                                value: {..._initTechnology.title.value}
                                  ..[widget.language] = value,
                              ),
                            ),
                            widget.index,
                          );
                        },
                      ),
                    ),
                  ),
                  const Gap(16),
                  // IconButton.filled(
                  //   icon: const Icon(Icons.undo),
                  //   onPressed: () async {
                  //     final shouldDelete =
                  //         await Dialogs.of(context).showDeleteDialog(
                  //       title: const Text('Reset technology?'),
                  //     );
                  //     if (shouldDelete == true) widget.onDelete();
                  //   },
                  // ),
                ],
              ),
              const Gap(16),
              Row(
                children: [
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 250),
                      child: TextFormField(
                        controller: _newWordController,
                        onFieldSubmitted: (final value) => _onAddWord(),
                      ),
                    ),
                  ),
                  IconButton.filled(
                    onPressed: _onAddWord,
                    icon: const Icon(Icons.save),
                  ),
                ],
              ),
              const Gap(8),
              Wrap(
                children: words.indexed
                    .map(
                      (final e) => InputChip(
                        label: Text(e.$2.word),
                        key: ValueKey(e.$2),
                        onDeleted: () => _onDeleteWord(e.$1),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );
}
