part of 'editor_renderer.dart';

class EditorPlayerCanvasObject extends EditorCanvasObject {
  EditorPlayerCanvasObject.fromRenderObject({
    required super.onPositionChanged,
    required super.data,
  }) : super.fromRenderObject();
  factory EditorPlayerCanvasObject.fromDrawerCubit({
    required final EditorRendererGame game,
    required final DrawerCubit drawerCubit,
  }) {
    RenderObjectModel player = drawerCubit.player;
    final position =
        game.editor.origin + drawerCubit.player.distanceToOrigin.toVector2();
    final serializedPosition = position.toSerializedVector2();
    if (player.id.isEmpty) {
      final firstPlayer = drawerCubit.tilesPresetResources.players.values.first;

      /// creating player if it is empty
      final updatedPlayer = RenderObjectModel(
        id: firstPlayer.id.toGid(),
        animationBehaviour: TileBehaviourType.idleRight,
        tileId: firstPlayer.id,
        position: serializedPosition,
      );
      drawerCubit.player = updatedPlayer;
      player = updatedPlayer;
    } else {
      player = player.copyWith(position: serializedPosition);
    }

    return EditorPlayerCanvasObject.fromRenderObject(
      data: player,
      onPositionChanged: (final value) {
        drawerCubit.player = value;
      },
    );
  }
}

class EditorCanvasObject extends Component
    with
        TapCallbacks,
        DragCallbacks,
        HasGameRef<EditorRendererGame>,
        HasEditorRef,
        HasEditorResourcesLoaderRef {
  EditorCanvasObject.fromRenderObject({
    required final material.ValueChanged<RenderObjectModel> onPositionChanged,
    required this.data,
  })  : screenVector2 = data.position.toOffset(),
        gameVector2 =
            GameVector2.fromMapSerializedVector2(data.distanceToOrigin),
        onChanged = onPositionChanged;

  final material.ValueChanged<RenderObjectModel>? onChanged;
  Gid get gid => data.id;
  TileId get tileId => data.tileId;
  final RenderObjectModel data;

  Offset screenVector2;
  GameVector2 gameVector2;

  void _updateDistanceToOrigin() {
    gameVector2 = GameVector2.fromScreenVector2(
      screenVector2: screenVector2.toVector2(),
      origins: origins,
    );
  }

  @override
  FutureOr<void> onLoad() {
    _updateDistanceToOrigin();
    return super.onLoad();
  }

  Rect? _imageRect;
  Rect? get _positionedImageRect => _imageRect?.shift(screenVector2);

  @override
  void render(final Canvas canvas) {
    final resourceTile = allTiles[tileId]!;
    // TODO(antmalofeev): replace with listener
    final renderObject = drawerCubit.objects[gid] ?? data;
    final animationEntry =
        resourceTile.behaviourPaths[renderObject.animationBehaviour]!;

    final tilePath = animationEntry.currentFramePath;
    final tileImage = getImage(tilePath);
    _imageRect ??= Rect.fromLTWH(
      0,
      0,
      tileImage.width.toDouble(),
      tileImage.height.toDouble(),
    );
    canvas.drawImage(
      tileImage,
      screenVector2,
      Palette.white.paint(),
    );
    super.render(canvas);
  }

  bool _selected = false;
  Vector2 _dragOffset = Vector2.zero();

  @override
  void onDragStart(final DragStartEvent event) {
    _selected = true;
    _dragOffset = event.canvasPosition - screenVector2.toVector2();

    return super.onDragStart(event);
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    if (event.canvasPosition.isNaN) return super.onDragUpdate(event);
    if (_selected) {
      screenVector2 = (event.canvasPosition - _dragOffset).toOffset();
      _updateDistanceToOrigin();
      _savePosition();
    }

    return super.onDragUpdate(event);
  }

  void _savePosition() {
    onChanged?.call(
      data.copyWith(
        position: screenVector2.toSerializedVector2(),
        distanceToOrigin: gameVector2.toSerializedMapVector2(),
      ),
    );
  }

  @override
  void onDragCancel(final DragCancelEvent event) {
    _selected = false;
    return super.onDragCancel(event);
  }

  @override
  void onDragEnd(final DragEndEvent event) {
    _selected = false;
    return super.onDragEnd(event);
  }

  void onOriginUpdate() {
    _updatePosition();
    _savePosition();
  }

  void _updatePosition() {
    screenVector2 = gameVector2.toScreenVector2(origins).toOffset();
  }

  @override
  bool containsLocalPoint(final Vector2 point) =>
      _positionedImageRect?.containsPoint(point) ?? false;
}

class EditorCanvasObjectsDrawer extends Component
    with
        HasGameRef<EditorRendererGame>,
        HasEditorRef,
        HasEditorResourcesLoaderRef {
  MapEditorCubit get _mapEditorBloc => game.diDto.mapEditorBloc;

  Future<void> _addCanvasObjects(
    final Iterable<EditorCanvasObject?> objects,
  ) async {
    await addAll(objects.whereNotNull());
  }

  Future<void> _removeCanvasObjects(
    final Iterable<EditorCanvasObject?> objects,
  ) async {
    removeAll(objects.whereNotNull());
  }

  List<EditorCanvasObject> get canvasObjects =>
      [_skyHandle, _gravitationHandle, _player].whereNotNull().toList();

  void onOriginUpdate() {
    for (final canvasObject in canvasObjects) {
      canvasObject.onOriginUpdate();
    }
  }

  EditorPlayerCanvasObject? _player;
  EditorCanvasObject? _gravitationHandle;
  EditorCanvasObject? _skyHandle;

  @override
  FutureOr<void> onLoad() async {
    add(
      FlameBlocListener<EditorDrawerCubit, DrawerCubitState>(
        onNewState: _handleMapEditorBlocStateChanges,
      ),
    );

    return super.onLoad();
  }

  CanvasDataModelId? _currentCanvasDataId;
  Future<void> _handleMapEditorBlocStateChanges(
    final DrawerCubitState state,
  ) async {
    if (_currentCanvasDataId != state.canvasData.id) {
      _currentCanvasDataId = state.canvasData.id;
      await _loadObjects();
    }
  }

  Future<void> _loadObjects() async {
    await _removeCanvasObjects(canvasObjects);
    _loadPlayer();
    _loadGravitationHandle();
    _loadSkyHandle();

    await _addCanvasObjects(canvasObjects);
  }

  void _loadPlayer() {
    _player = EditorPlayerCanvasObject.fromDrawerCubit(
      game: game,
      drawerCubit: drawerCubit,
    );
  }

  void _loadSkyHandle() {
    // _skyHandle = EditorCanvasObject(
    //   gid: kCursorHandleObjectId.toGid(),
    //   tileId: kCursorHandleObjectId,
    //   position: (game.size / 2).toOffset(),
    //   onPositionChanged: (final position) {
    //     drawerCubit.changeState(
    //       drawerCubit.state.copyWith(
    //         skyYPosition: position.dy,
    //       ),
    //     );
    //   },
    // );
  }

  void _loadGravitationHandle() {
    _gravitationHandle = EditorCanvasObject.fromRenderObject(
      data: RenderObjectModel(
        id: kHandleObjectId.toGid(),
        tileId: kHandleObjectId,
        position: SerializedVector2(
          y: canvasData.gravity.tileDistance + origin.y,
        ),
      ),
      onPositionChanged: (final object) {
        final updatedY =
            GameVector2.fromMapVector2(object.distanceToOrigin.toVector2())
                .toMapTileCell()
                .y;
        final updatedGravity = drawerCubit.canvasData.gravity.copyWith(
          yTilePosition: updatedY,
        );
        drawerCubit.onChangeGravity(updatedGravity);
      },
    );
  }

  @override
  void render(final Canvas canvas) {
    _renderGravitationLine(canvas);
    _renderSkyHorizon(canvas);
    super.render(canvas);
  }

  final _gravitationLinePaint = Palette.brown.paint()..strokeWidth = 2;
  void _renderGravitationLine(final Canvas canvas) {
    final dy = _gravitationHandle?.screenVector2.dy ?? 0;
    canvas.drawLine(
      Offset(0, dy),
      Offset(editor.windowWidth, dy),
      _gravitationLinePaint,
    );
  }

  final _skyHorizonPaint = Palette.blue.paint()..strokeWidth = 2;
  void _renderSkyHorizon(final Canvas canvas) {
    final dy = (_skyHandle?.screenVector2.dy ?? 0) + 20;

    canvas.drawLine(
      Offset(0, dy),
      Offset(editor.windowWidth, dy),
      _skyHorizonPaint,
    );
  }
}
