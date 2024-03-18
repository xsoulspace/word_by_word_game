part of 'foundation.dart';

/// Use this object to mark some state
/// as loadable and get clean and visible
/// way to declare loading state without null checks.
@freezed
class LoadableContainer<T> with _$LoadableContainer<T> {
  const factory LoadableContainer({
    required final T value,
    @Default(false) final bool isLoaded,
  }) = _LoadableContainer<T>;
  const LoadableContainer._();
  factory LoadableContainer.loaded(final T value) =>
      LoadableContainer<T>(value: value, isLoaded: true);
  bool get isLoading => !isLoaded;
}

/// Use this object to mark some state
/// as loadable and get clean and visible
/// way to declare loading state without null checks.
@freezed
class FieldContainer<T> with _$FieldContainer<T> {
  const factory FieldContainer({
    required final T value,
    @Default('') final String errorText,
    @Default(false) final bool isLoading,
  }) = _FieldContainer<T>;
}

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
