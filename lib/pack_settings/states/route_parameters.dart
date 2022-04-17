part of pack_settings;

@immutable
@JsonSerializable()
class AppRouteParameters {
  const AppRouteParameters({
    final this.gameId,
  });
  factory AppRouteParameters.fromJson(final Map<String, dynamic> json) =>
      _$AppRouteParametersFromJson(json);
  final String? gameId;
}
