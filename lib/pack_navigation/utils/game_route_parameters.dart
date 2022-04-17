part of pack_navigation;

@immutable
@JsonSerializable()
class GameRouteParameters with EquatableMixin {
  const GameRouteParameters({
    this.gameId = '',
  });
  factory GameRouteParameters.fromJson(final Map<String, dynamic> json) =>
      _$GameRouteParametersFromJson(json);
  static const empty = GameRouteParameters();

  @override
  bool? get stringify => true;

  final String gameId;

  @override
  List<Object?> get props => [gameId];
}
