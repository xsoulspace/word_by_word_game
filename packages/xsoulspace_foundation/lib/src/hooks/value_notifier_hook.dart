import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TNotifier useStateBuilder<TState, TNotifier extends ValueNotifier<TState>>(
  final _StateHookBuilder<TState, TNotifier> builder,
) =>
    use(_StateHook<TState, TNotifier>(builder: builder));
typedef _StateHookBuilder<TState, TNotifier extends ValueNotifier<TState>>
    = TNotifier Function();

class _StateHook<TState, TNotifier extends ValueNotifier<TState>>
    extends Hook<TNotifier> {
  const _StateHook({required this.builder});
  final _StateHookBuilder<TState, TNotifier> builder;

  @override
  _StateHookState<TState, TNotifier> createState() => _StateHookState();
}

class _StateHookState<TState, TNotifier extends ValueNotifier<TState>>
    extends HookState<TNotifier, _StateHook<TState, TNotifier>> {
  late final _state = hook.builder()..addListener(_listener);

  @override
  void dispose() {
    _state.dispose();
  }

  @override
  TNotifier build(final BuildContext context) => _state;

  void _listener() => setState(() {});

  @override
  Object? get debugValue => _state.value;

  @override
  String get debugLabel => 'useState<$TState>';
}
