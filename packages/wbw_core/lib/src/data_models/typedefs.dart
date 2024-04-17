// part of 'data_models.dart';

typedef BoolCallback = bool Function();
typedef FutureBoolCallback = Future<bool> Function();
typedef FutureVoidCallback = Future<void> Function();
typedef TwoValuesChanged<TFirst, TSecond> = void Function(TFirst, TSecond);
typedef FromJsonCallback<T> = T Function(Map<String, dynamic> json);
typedef CheckFunction<T> = bool Function(T);

/// as in Dart Set == HashSet, it should work fast enough
extension type const WordsType(Set<String> words) {}
