import 'package:flutter/material.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

Future<void> showTechnologiesTreeDialog({
  required final BuildContext context,
}) async =>
    showDialog(
      context: context,
      builder: (final context) => const TechnologyTreeDialog(),
    );

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
                  onDelete: () => drawerCubit.onDeleteTechnology(technology.id),
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
  final _controller = TextEditingController();
  late Map<Languages, List<UsefulWordModel>> words =
      _initTechnology.unlockCondition.languageWords;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  TechnologyModel get _initTechnology => widget.initialTechnology;
  void _onTechnologyChanged() {
    final tech = _initTechnology.copyWith(
      unlockCondition: _initTechnology.unlockCondition.copyWith(
        languageWords: words,
      ),
    );
    widget.onTechnologyChanged(tech, widget.index);
  }

  @override
  Widget build(final BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  ReorderableDragStartListener(
                    index: widget.index,
                    child: const Icon(Icons.drag_handle),
                  ),
                  const Gap(16),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 250),
                      child: TextFormField(
                        initialValue: widget.initialTechnology.title.getValue(),
                        onChanged: (final value) {},
                      ),
                    ),
                  ),
                  const Gap(16),
                  IconButton.filled(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      final shouldDelete =
                          await Dialogs.of(context).showDeleteDialog(
                        title: const Text('Delete technology?'),
                      );
                      if (shouldDelete == true) widget.onDelete();
                    },
                  ),
                ],
              ),
              const Gap(16),
              TextFormField(
                controller: _controller,
              ),
              Wrap(
                children: words[widget.language]
                        ?.map(
                          (final e) => InputChip(
                            label: Text(e.word),
                            onDeleted: () {},
                          ),
                        )
                        .toList() ??
                    [],
              ),
            ],
          ),
        ),
      );
}
